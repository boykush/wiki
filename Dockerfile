# scraps ships a statically linked musl build, so the runtime image needs nothing
# but the binary. The wiki content is baked in as well: the deployed artifact is
# the wiki itself, and scraps reads it from disk on every request.
FROM alpine:3.24 AS fetch
ARG SCRAPS_VERSION
RUN apk add --no-cache curl \
 && curl -fsSL "https://github.com/boykush/scraps/releases/download/${SCRAPS_VERSION}/scraps-x86_64-unknown-linux-musl.tar.gz" \
    | tar -xz -C /usr/local/bin \
 && chmod +x /usr/local/bin/scraps \
 && /usr/local/bin/scraps --version

# At runtime scraps runs as nonroot over root-owned files, so it can never save its
# IR next to the content and would re-parse every scrap on each request. Any command
# that reads the wiki writes .scraps/ir.json, and the build fails if it ever does not.
FROM fetch AS compile
COPY scraps/ /wiki/scraps/
RUN /usr/local/bin/scraps -C /wiki/scraps tag list > /dev/null \
 && test -f /wiki/scraps/.scraps/ir.json

FROM gcr.io/distroless/static-debian12:nonroot
COPY --from=fetch /usr/local/bin/scraps /usr/local/bin/scraps
COPY --from=compile /wiki/scraps/ /wiki/scraps/
# Same layout as a checkout: the markdown lives under <root>/scraps, not at the root.
ENV SCRAPS_DIRECTORY=/wiki/scraps
EXPOSE 1113
# The listen address is the one thing a caller changes, so it is the sole argument:
# `docker run <image> 0.0.0.0:8080`, or `args:` in a pod spec. Distroless carries no
# shell, so it cannot be expanded from an environment variable.
ENTRYPOINT ["/usr/local/bin/scraps", "mcp", "serve", "--http"]
CMD ["0.0.0.0:1113"]

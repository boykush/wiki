# scraps ships a statically linked musl build, so the runtime image needs nothing
# but the binary. The wiki content is baked in as well: the deployed artifact is
# the wiki itself, and scraps reads it from disk on every request.
FROM alpine:3.22 AS fetch
ARG SCRAPS_VERSION
RUN apk add --no-cache curl \
 && curl -fsSL "https://github.com/boykush/scraps/releases/download/${SCRAPS_VERSION}/scraps-x86_64-unknown-linux-musl.tar.gz" \
    | tar -xz -C /usr/local/bin \
 && chmod +x /usr/local/bin/scraps \
 && /usr/local/bin/scraps --version

FROM gcr.io/distroless/static-debian12:nonroot
COPY --from=fetch /usr/local/bin/scraps /usr/local/bin/scraps
COPY scraps/ /wiki/scraps/
# Same layout as a checkout: the markdown lives under <root>/scraps, not at the root.
ENV SCRAPS_DIRECTORY=/wiki/scraps
EXPOSE 1113
# The listen address is the one thing a caller changes, so it is the sole argument:
# `docker run <image> 0.0.0.0:8080`, or `args:` in a pod spec. Distroless carries no
# shell, so it cannot be expanded from an environment variable.
ENTRYPOINT ["/usr/local/bin/scraps", "mcp", "serve", "--http"]
CMD ["0.0.0.0:1113"]

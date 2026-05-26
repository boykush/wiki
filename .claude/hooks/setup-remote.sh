#!/bin/bash
set -e

# Only run in remote cloud environments
if [ "$CLAUDE_CODE_REMOTE" != "true" ]; then
  exit 0
fi

# Install mise if not present
if ! command -v mise &> /dev/null; then
  echo "Installing mise..."
  mkdir -p "$HOME/.local/bin"

  # Download pre-built binary directly from GitHub Releases
  # (mise.jdx.dev/install.sh is blocked in some remote environments)
  case "$(uname -m)" in
    x86_64)  local_arch="x64" ;;
    aarch64) local_arch="arm64" ;;
    *)       local_arch="$(uname -m)" ;;
  esac
  mise_version=$(curl -fsSI "https://github.com/jdx/mise/releases/latest" 2>&1 \
    | grep -i location | sed 's/.*tag\///' | tr -d '\r\n')
  curl -fsSL -o "$HOME/.local/bin/mise" \
    "https://github.com/jdx/mise/releases/download/${mise_version}/mise-${mise_version}-linux-${local_arch}"
  chmod +x "$HOME/.local/bin/mise"

  if [ -n "$CLAUDE_ENV_FILE" ]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$CLAUDE_ENV_FILE"
  fi
  export PATH="$HOME/.local/bin:$PATH"
fi

# Pin MISE_ENV=remote so mise loads mise.remote.toml in addition to the base
# config. That overlay installs scraps via the cargo backend (crates.io build),
# avoiding api.github.com which is blocked / rate-limited here. The base github
# backend stays declared but its install attempt 403s harmlessly; once cargo
# finishes, `mise which scraps` resolves to it. Persist MISE_ENV so the rest of
# the session (build/serve tasks) keeps resolving the cargo build too.
export MISE_ENV=remote
if [ -n "$CLAUDE_ENV_FILE" ]; then
  echo 'export MISE_ENV=remote' >> "$CLAUDE_ENV_FILE"
fi

echo "Running mise install..."
mise trust
# mise install returns non-zero because the base github backend always 403s
# here; that is expected. What matters is the cargo build, so judge success by
# whether scraps actually resolves rather than by the install exit code.
mise install || true
if ! mise which scraps >/dev/null 2>&1; then
  echo "WARN: scraps unavailable after mise install (cargo build or network policy)." >&2
fi

echo "Remote setup complete."

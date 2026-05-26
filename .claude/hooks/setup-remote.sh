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

# Install tools defined in mise configuration.
# Resolving tool versions requires api.github.com; if the environment's
# network policy blocks it, this step is skipped with a warning rather
# than failing the whole setup.
echo "Running mise install..."
mise trust
if ! mise install; then
  echo "WARN: mise install failed (api.github.com may be blocked by the network policy)." >&2
fi

echo "Remote setup complete."

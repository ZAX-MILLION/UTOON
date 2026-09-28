#!/usr/bin/env bash
set -euo pipefail

echo "UTOON agent-tool bootstrap (review-first)"
echo "This script does not touch product code."

command -v node >/dev/null || { echo "Node.js is required for Graft (upstream requires Node >=20)."; exit 1; }
node_major="$(node -p 'process.versions.node.split(".")[0]')"
if [ "$node_major" -lt 20 ]; then
  echo "Node >=20 required for Graft."
  exit 1
fi

echo
echo "Graft reviewed source: trailhq/Graft @ dfc46f0b6eac055d456cefa299395b441edb1f28"
echo "Graphify reviewed source: Graphify-Labs/graphify @ d6eaa8aae8df155874ebb1044302c055c286342a"
echo
echo "Recommended first review commands:"
echo "  npx -y @nanonets/graft@0.20.0 init --dry-run"
echo "  # Graphify: review https://github.com/Graphify-Labs/graphify before installing graphifyy==0.9.71"

if [ "${UTOON_APPLY_AGENT_TOOLS:-0}" != "1" ]; then
  echo
  echo "Dry mode only. Set UTOON_APPLY_AGENT_TOOLS=1 after reviewing upstream writes."
  exit 0
fi

echo
echo "Installing/wiring Graft locally..."
npx -y @nanonets/graft@0.20.0 telemetry disable || true
npx -y @nanonets/graft@0.20.0 init --yes --no-global --no-statusline

if command -v uv >/dev/null 2>&1; then
  echo "Installing Graphify in isolated uv tool environment..."
  uv tool install "graphifyy==0.9.71"
  echo "Graphify installed. Run 'graphify install --project' and review its project writes for your chosen agent."
elif command -v pipx >/dev/null 2>&1; then
  echo "Installing Graphify with pipx..."
  pipx install "graphifyy==0.9.71"
  echo "Graphify installed. Run 'graphify install --project' and review its project writes for your chosen agent."
else
  echo "Graphify not auto-installed: install uv or pipx first. Do not use system pip by default."
fi

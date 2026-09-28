# Agent Tooling Provenance

This file records external agent tooling reviewed for UTOON.

## Graft

- Canonical repository: `trailhq/Graft`
- Reviewed commit: `dfc46f0b6eac055d456cefa299395b441edb1f28`
- Reviewed package version: `@nanonets/graft@0.20.0`
- License: MIT
- Runtime: Node.js 20+
- Purpose in UTOON: local structural repository graph, code navigation, references/call relationships, blast-radius/context reduction.
- Generated state: `graft/` (ignored by UTOON).

### Safety/operations notes

- Use upstream dry-run before initialization.
- Telemetry should be disabled for UTOON project setup unless the owner explicitly chooses otherwise.
- Structural graph does not require LLM enrichment.
- Do not send private source/material to optional enrichment providers without reviewing their data terms.
- Official upstream initialization may generate host-specific skill/wiring files. Do not vendor a stale copied skill body into UTOON in parallel with that mechanism.

## Graphify

- Canonical repository: `Graphify-Labs/graphify`
- Reviewed commit: `d6eaa8aae8df155874ebb1044302c055c286342a`
- Reviewed package version: `graphifyy==0.9.71`
- Python requirement: >=3.10
- License declared in reviewed `pyproject.toml`: Apache-2.0; repository metadata also points to packaged license/notice files.
- Purpose in UTOON: deeper code/document knowledge graphs, architecture relationships, path/query/explain analysis.
- Generated state: `graphify-out/` (ignored by UTOON).

### Safety/operations notes

- Prefer isolated `uv tool` or `pipx` installation.
- Run official project installer and review writes.
- Code AST extraction can be local; optional semantic/model enrichment must be reviewed before private corpus use.
- Graph output is derived context, not source of truth.
- UTOON does not copy Graphify's full upstream skill body into the repo because the upstream package already installs host-specific skill instructions and can evolve independently.

## Why both exist

They are not run together by default.

- Graft: default for quick focused code context.
- Graphify: explicit deeper architecture/corpus graph work.

This separation avoids token/tool overhead and conflicting "graph-first" instructions.

## Skill vault

Primary reviewed skill source:
- `ZAX-MILLION/agent-skill-bundle`
- Reviewed foundation pin: `8ba111e7233e85b4a98c0ea2904750cefbd68709`
- Policy: strict on-demand.

The project does not copy the entire bundle into UTOON.

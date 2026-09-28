# Agent Tooling — Graft, Graphify, Skill Vault

## Principle

More tooling is not automatically better. UTOON uses tools to **reduce context and mistakes**, not to run every agent extension on every prompt.

## Graft

Use for routine codebase orientation once product code exists.

Canonical source: https://github.com/trailhq/Graft  
Reviewed pin: `dfc46f0b6eac055d456cefa299395b441edb1f28`

Current upstream quick start uses:
```bash
npm install -g @nanonets/graft
graft init --dry-run
# review writes
graft init
```

UTOON rules:
- Node 20+.
- Disable telemetry when desired for project work.
- Run dry-run before wiring.
- Keep generated `graft/` local/ignored.
- Structural graph can be used without LLM enrichment.
- Do not run `--deep` against private material without reviewing provider/data handling.

## Graphify

Canonical source: https://github.com/Graphify-Labs/graphify  
Reviewed pin: `d6eaa8aae8df155874ebb1044302c055c286342a`

Current upstream uses the `graphifyy` package and a `graphify` CLI.

UTOON use:
- broad architecture mapping;
- relationship/path analysis across code + docs;
- explicit graph reports;
- complex repo understanding when Graft's focused context is insufficient.

Keep generated Graphify state ignored unless a future decision explicitly approves committing a sanitized artifact.

## Choosing one

| Need | Tool |
|---|---|
| Where is code? | Graft |
| What calls this? | Graft |
| What might this change break? | Graft |
| Fast repo map | Graft |
| Cross-doc/code architecture graph | Graphify |
| Persistent relationship exploration | Graphify |
| Explicit graph artifact/report | Graphify |

## Agent Skill Bundle

Use `ZAX-MILLION/agent-skill-bundle` as the reviewed source vault and preserve its strict on-demand model. Do not native-install all skills.

## Bootstrap script

`scripts/bootstrap-agent-tools.sh` is deliberately review-first. By default it prints/checks prerequisites and dry-run instructions. Set `UTOON_APPLY_AGENT_TOOLS=1` only after reviewing what upstream tools will write locally.

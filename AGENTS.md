# UTOON Agent Instructions

These instructions apply to any coding agent working in this repository.

## Mandatory reading order

Before changing files:
1. `RULES.md`
2. `BRAIN.md`
3. `project-status.json`
4. `PLAN.md`
5. the relevant file under `docs/`

Do not start implementation merely because a task sounds straightforward.

## Foundation gate

If `project-status.json.code_authorized` is false:
- documentation, research, provider/legal clarification, skill/tooling setup, design exploration, and validation planning are allowed;
- product source code, production integrations, analytics tags, ads, auth, database schema, and provider embeds are not allowed.

## Work method

For every meaningful change:
1. Restate the concrete objective.
2. Check applicable rules/gates.
3. Find the smallest relevant context.
4. Make the smallest coherent change.
5. Verify with the strongest available check.
6. Update documentation when a decision changed.
7. Do not claim success without evidence.

## Graft vs Graphify

When local Graft has been initialized and a `graft/` cache exists, use Graft first for routine code navigation, symbol relationships, blast radius, and focused repo context.

Use Graphify for broad architecture mapping, multi-document relationship analysis, persistent knowledge graphs, or explicit graph artifacts.

Do **not** run both by default. Choose the cheaper/smaller context tool that answers the task.

Generated graph caches are local and must not be treated as source of truth over repository files.

## Skills

Use project skills on demand. Do not preload every skill. `docs/SKILL_MATRIX.md` maps task types to the preferred skills.

When multiple skills overlap, use the narrowest relevant one. Security, accessibility, SEO, and performance checks are mandatory at their defined gates even if not explicitly requested.

## Never

- invent provider permissions, revenue numbers, analytics, popularity, ratings, compatibility, legal facts, or game rights;
- use random web images/assets without provenance;
- expose secrets or commit credentials;
- mass-generate thin SEO pages;
- add a framework/library because it is fashionable;
- convert Astro into a React-heavy SPA without evidence;
- mark a task complete because code looks plausible.

# UTOON

UTOON is a fast, SEO-first browser gaming platform being designed from scratch.

**Current phase:** foundation only. Product code is intentionally blocked until the provider, rights, brand, and foundation gates in `CHECKLIST.md` are reviewed.

## Product thesis

Discover → Play instantly → Find another good game.

The first MVP will prove five things before scale:
1. users can be acquired;
2. they actually play;
3. some select a second game;
4. provider monetization produces viable revenue;
5. useful UTOON pages can earn organic search visibility.

## Planned MVP stack

- Astro
- strict TypeScript
- Tailwind CSS 4
- vanilla TypeScript by default
- React only when an interactive island clearly needs it
- static-first rendering
- Vercel initially, without unnecessary platform lock-in
- Supabase later only when persistent backend data is justified

## Start here

1. Read `AGENTS.md`.
2. Read `RULES.md`.
3. Read `BRAIN.md`.
4. Read `docs/PRD.md`.
5. Follow `PLAN.md` and `CHECKLIST.md`.
6. Do not add product code until `project-status.json.code_authorized` is true.

## Repository control documents

- `BRAIN.md` — decision log, rationale, assumptions, reversal triggers.
- `RULES.md` — non-negotiable engineering/product rules.
- `PLAN.md` — phased implementation plan.
- `CHECKLIST.md` — executable launch/build gates.
- `docs/ARCHITECTURE.md` — target technical architecture.
- `docs/SEO_GEO.md` — search and AI-discovery discipline.
- `docs/LEGAL_RIGHTS_GATES.md` — rights/provenance/compliance gates.
- `docs/PROVIDER_QUESTIONS.md` — questions that must be answered by the game provider.
- `docs/SKILL_MATRIX.md` — approved on-demand agent skills.
- `docs/AGENT_TOOLING.md` — Graft/Graphify usage and installation.

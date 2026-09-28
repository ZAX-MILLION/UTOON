# UTOON Agent Skill Matrix

The project follows strict **on-demand** loading. Do not install/load every skill into startup context.

Primary reviewed vault: `ZAX-MILLION/agent-skill-bundle`.

Reviewed bundle baseline observed during foundation work: 188 skill directories with strict two-bootstrap/on-demand philosophy.

## Core planning/process

| Task | Preferred bundle skill |
|---|---|
| Shape unclear work | `process/brainstorming` |
| Create implementation plan | `process/writing-plans` |
| Implement behavior safely | `process/test-driven-development` |
| Debug failures | `process/systematic-debugging` |
| Prove completion | `process/verification-before-completion` |
| Agent failure/context loops | `process/agent-introspection-debugging` |
| Release gate | `qa/release-readiness` |

## UI/design

| Task | Preferred bundle skill |
|---|---|
| Production frontend direction | `design/frontend-design` |
| Anti-generic visual judgment | `design/design-taste-frontend` |
| Translate approved visual to code | `design/image-to-code` |
| Searchable UI/UX guidance | `design/ui-ux-pro-max` |
| General web design constraints | `design/web-design-guidelines` |
| Browser interaction testing | `design/webapp-testing` |

Do not stack every design skill on one task. Pick the narrowest useful one.

## Web quality

The bundle already includes the Addy Osmani-style web quality set:
- `qa/accessibility`
- `qa/best-practices`
- `qa/core-web-vitals`
- `qa/performance`
- `qa/seo`
- `qa/web-quality-audit`

Use targeted skills during implementation; run the aggregate audit at release gates.

## SEO/growth

- `marketing/seo-audit`
- `marketing/site-architecture`
- `marketing/schema`
- `marketing/analytics`
- `marketing/programmatic-seo` — **later only**, with UTOON's index-quality rules; never use to mass-publish thin pages.
- `marketing/copy-editing` / `copywriting` when user-facing copy needs work.

## Security

- `security/secure-by-default-development`
- `security/web-security-audit`
- `security/public-repo-safety`
- `security/ultimate-security-audit` only for broad pre-launch review.

## External project tools selected

### Graft
Canonical: `trailhq/Graft`  
Pinned review commit: `dfc46f0b6eac055d456cefa299395b441edb1f28`  
Role: fast local repo context, call graph, blast radius, focused code navigation.  
License observed: MIT.

### Graphify
Canonical: `Graphify-Labs/graphify`  
Pinned review commit: `d6eaa8aae8df155874ebb1044302c055c286342a`  
Role: deeper knowledge graph for architecture/multi-document relationship analysis.  
Install/runtime reviewed separately; do not silently execute semantic extraction on private material.

## External marketplace research — candidates, not auto-approved

### Astro
The bundle currently has no obvious Astro application skill. Marketplace candidates found include:
- `astrolicious/agent-skills/astro`
- `mindrally/skills/astro`
- official `withastro/astro/astro-developer` (more oriented toward Astro's own monorepo/contributor work)

Before adding one: review source/license/current API guidance. Prefer live Astro documentation over stale skill rules.

### Tailwind CSS 4
Candidates exist, including Tailwind-v4-specific skills. Do not add by default: UTOON's own rules plus live Tailwind v4 docs may be safer than another overlapping skill. Add only if implementation repeatedly shows v3/v4 mistakes.

### PWA
Marketplace PWA skills exist, but PWA/offline is intentionally small in MVP. Do not add until manifest/service-worker work begins.

### Web security
SkillsMP contains additional security skills, but the bundle already has overlapping reviewed security workflows. Do not duplicate.

## Skill admission rule

A new external skill enters the project only if:
1. there is a concrete missing capability;
2. canonical source is identified;
3. license/provenance is acceptable;
4. instructions do not conflict with UTOON rules;
5. it is narrower/better than an existing reviewed skill;
6. it is pinned or otherwise reproducible when needed;
7. its external runtime/tool requirements are explicit.

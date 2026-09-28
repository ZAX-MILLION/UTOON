# UTOON Skill Research — 2026-09-28

Goal: maximize agent quality without maximizing startup context, conflicting instructions, or supply-chain risk.

## Selection rule

UTOON uses the reviewed `ZAX-MILLION/agent-skill-bundle` as its primary skill vault. Marketplace skills are candidates only when the bundle has a real capability gap.

The bundle already covers planning, TDD, debugging, design, web quality, accessibility, SEO, performance, security, analytics, schema, site architecture, release readiness, and browser-oriented testing. Duplicating these from marketplaces adds noise rather than capability.

## Gaps identified in the reviewed bundle

A recursive scan of the bundle found no skill path explicitly dedicated to:
- Astro application development;
- Tailwind CSS v4;
- Playwright-specific E2E patterns;
- internationalization/RTL localization;
- dependency/license compliance;
- PWA/service-worker implementation.

These are gaps in **named specialist skills**, not proof that the existing bundle cannot handle the tasks.

## Marketplace research

### Astro

Candidates reviewed at discovery level:
- `mindrally/skills:astro` — application-oriented Astro guidance; static generation/minimal JS focus.
- `delineas/astro-framework-agents:astro-framework` — content/islands/hybrid-rendering specialist.
- `withastro/astro:astro-developer` — canonical upstream source, but its skill is primarily aimed at contributors working inside Astro's own monorepo.

**Decision:** do not install yet. During Phase 3, prefer current official Astro documentation plus UTOON rules. Admit one app-oriented Astro skill only after source/license review if agents show recurring Astro-specific mistakes.

### Tailwind CSS 4

Candidates:
- `wshobson/agents:tailwind-design-system` — v4 CSS-first design-system guidance.
- `tlq5l/tailwindcss-v4-skill:tailwindcss-v4` — concise v4 syntax/migration guidance.

**Decision:** do not install yet. UTOON already pins Tailwind v4 as policy. Add one specialist only if implementation repeatedly uses stale v3 patterns.

### Playwright / browser E2E

Candidates:
- `terminalskills/skills:playwright-testing` — setup, locators, visual regression, accessibility, CI/CD.
- `openai/skills:playwright-interactive` — powerful interactive Codex workflow, but requires a specific `js_repl`/sandbox setup.
- SkillsMP also lists general Playwright automation skills.

Existing bundle:
- `design/webapp-testing`
- `qa/spa-browser-qa`

**Decision:** existing bundle is enough for foundation. At Phase 4/6, review and possibly admit a Playwright-specific skill if real browser automation becomes a bottleneck. Do not require Codex-specific dangerous/full-access tooling as a project baseline.

### Localization / RTL

Candidates:
- `ghaida/intent:localize` — cultural/localization design, not just translation.
- `mindrally/skills:internationalization-i18n`
- SkillsMP `localization-i18n` candidates with RTL/ICU/pluralization guidance.

**Decision:** defer until the Arabic experiment is approved. Architecture must still remain RTL/locale-ready now.

### PWA

Candidates:
- `curiositech/some_claude_skills:pwa-expert`
- `mindrally/skills:pwa-development`

**Decision:** defer. MVP only needs manifest/installability basics if useful. Aggressive service-worker/offline logic for third-party games is explicitly out of scope.

### Dependency/license compliance

Candidates:
- SkillsMP `compliance-license-audit`
- `Hack23/cia:open-source-policy`
- `rmyndharis/antigravity-skills:codebase-cleanup-deps-audit`
- various dependency/security audit skills.

One searched dependency-management skill showed a marketplace security-audit failure, reinforcing the review-first rule.

**Decision:** do not auto-install an extra skill now. UTOON's rights/provenance rules plus bundle security skills are mandatory. At Phase 3, add automated npm license/security checks as tooling; skill instructions are secondary.

## Skills explicitly *not* needed for MVP

Do not activate/install merely because they exist:
- game-economy design;
- multiplayer;
- paywalls/pricing;
- signup/onboarding;
- n8n;
- WordPress;
- payment/subscription skills;
- native mobile/Flutter;
- advanced recommendation/AI-agent UI;
- social/community/gamification.

They become relevant only if the product scope changes.

## Admission checklist for any new skill

- [ ] Concrete project task cannot be handled well by current reviewed skills.
- [ ] Canonical repository identified.
- [ ] Current source inspected.
- [ ] License/provenance acceptable.
- [ ] No conflicting "always use X" rule with UTOON architecture.
- [ ] No hidden credential/network/destructive setup.
- [ ] Supporting files kept intact if required.
- [ ] Version/commit pinned where reproducibility matters.
- [ ] Added to `agent-tools/skills.lock.json`.
- [ ] Added to `docs/SKILL_MATRIX.md`.
- [ ] Tested with the actual host (Antigravity/Codex/Claude) before claiming readiness.

## Bottom line

"Overpowered" means the right expert is available on demand, not that 200 instructions compete in every prompt.

# UTOON Implementation Plan

No phase may silently skip its exit criteria.

## Phase 0 — Foundation (current)

- [x] Create GitHub repository.
- [x] Establish PRD, rules, brain/decision log, architecture, skill matrix.
- [x] Define Graft/Graphify roles.
- [ ] Review this foundation PR.
- [ ] Run `node scripts/verify-foundation.mjs`.
- [ ] Keep `code_authorized=false`.

**Exit:** foundation documents accepted.

## Phase 1 — Rights, brand, provider gates

- [ ] UTOON trademark/brand clearance.
- [ ] Confirm domain strategy.
- [ ] Send provider questionnaire.
- [ ] Record written answers.
- [ ] Confirm game/thumbnail/metadata/localization rights.
- [ ] Confirm ad/revenue/payout/consent terms.
- [ ] Confirm compatibility-observation permission.
- [ ] Record Android/app-store rights status separately.
- [ ] Determine legal/privacy review requirements.

**Exit:** no unresolved issue capable of making planned MVP distribution unlawful or contractually incompatible.

## Phase 2 — Design system before pages

- [ ] Define visual direction and anti-patterns.
- [ ] Establish tokens: color, type, spacing, radius, elevation.
- [ ] Mobile-first home wireframe.
- [ ] Mobile-first game-page wireframe.
- [ ] Desktop adaptations.
- [ ] Accessibility review of design.
- [ ] Performance review of design.
- [ ] Create original UTOON logo/brand assets only after brand clearance.

**Exit:** design approved without requiring heavy JS/video/effects.

## Phase 3 — Technical scaffold

- [ ] Set `code_authorized=true` in reviewed PR.
- [ ] Scaffold Astro + strict TypeScript + Tailwind CSS 4.
- [ ] Configure lint/format/typecheck/test/build.
- [ ] Configure Content Collections schema.
- [ ] Create central config, game service, provider boundary, SEO layer, analytics interface.
- [ ] Add CI checks.

**Exit:** empty product shell builds with zero avoidable client JS.

## Phase 4 — One vertical slice

Implement one real/licensed game end-to-end:
- [ ] content record;
- [ ] game card;
- [ ] game page;
- [ ] deferred player load;
- [ ] controls/how-to-play;
- [ ] related-games section;
- [ ] report-problem path;
- [ ] metadata/canonical;
- [ ] accessibility;
- [ ] analytics events that can actually be observed.

**Exit:** one game passes build, browser QA, accessibility, performance, SEO, rights checks.

## Phase 5 — MVP catalog

- [ ] Grow to 20–50 vetted games.
- [ ] Record QA status and last-tested date.
- [ ] Publish only useful pages.
- [ ] Keep weak/thin pages unpublished or noindex by explicit decision.
- [ ] Add lightweight search only if useful at catalog size.
- [ ] Add Recently Played if verified helpful.

**Exit:** catalog is reliable on target mobile/desktop browsers.

## Phase 6 — SEO/analytics launch readiness

- [ ] robots.txt.
- [ ] sitemap with indexable URLs only.
- [ ] canonical validation.
- [ ] structured data validation.
- [ ] Search Console.
- [ ] analytics privacy/consent verification.
- [ ] broken-link scan.
- [ ] crawlable internal links.
- [ ] no accidental staging indexation.

## Phase 7 — Quality gates

- [ ] Web Quality audit.
- [ ] Accessibility audit.
- [ ] Core Web Vitals/performance lab check.
- [ ] Security audit.
- [ ] Rights/provenance audit.
- [ ] UX copy audit.
- [ ] Cross-browser/device QA.
- [ ] Release readiness + rollback plan.

## Phase 8 — Launch experiment

Measure actual:
- organic impressions/clicks;
- play interaction rate;
- second-game selection;
- pages/plays per session;
- return signals;
- broken-game reports;
- provider revenue/session;
- revenue by geography/device where available.

Do not scale catalog from intuition.

## Phase 9 — Evidence-driven expansion

Only after evidence:
20–50 → 100 → 250 → 500 → 1,000+.

Backend, accounts, Arabic expansion, Android, Premium, additional providers, and owned games remain separate evidence-gated decisions.

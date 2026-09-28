# UTOON Implementation Plan

No phase may silently skip its exit criteria.

## Phase 0 — Foundation
- [x] GitHub repository.
- [x] PRD, rules, brain/decision log, architecture, skill matrix.
- [x] Graft/Graphify roles.
- [x] Clarify provider-fed catalog model.
- [ ] Keep `code_authorized=false` until Phase 1 exits.

## Phase 1 — Provider, rights, brand, catalog-access gates

- [ ] UTOON trademark/brand clearance.
- [ ] Confirm domain strategy.
- [ ] Send provider questionnaire.
- [ ] Confirm publisher acceptance.
- [ ] Confirm official bulk catalog API/feed availability.
- [ ] If no bulk feed: document approved alternative (DGI individual embeds / white label / other).
- [ ] Confirm game/embed rights.
- [ ] Confirm thumbnail/metadata/localization rights.
- [ ] Confirm ad/revenue/payout/consent terms.
- [ ] Confirm Android/app-store rights separately.
- [ ] Determine legal/privacy review requirements.

**Exit:** a legally/contractually valid provider ingestion method exists.

## Phase 2 — Design system before pages

- [ ] Define visual direction and anti-patterns.
- [ ] Establish design tokens.
- [ ] Mobile-first home/catalog wireframe.
- [ ] Mobile-first game-page wireframe.
- [ ] Desktop adaptations.
- [ ] Accessibility review.
- [ ] Performance review.
- [ ] Original UTOON branding after clearance.

## Phase 3 — Technical scaffold + provider ingestion

- [ ] Set `code_authorized=true` in reviewed PR.
- [ ] Scaffold Astro + strict TypeScript + Tailwind CSS 4.
- [ ] Configure lint/format/typecheck/test/build.
- [ ] Define normalized Game schema.
- [ ] Implement first provider adapter.
- [ ] Implement catalog sync/fetch from official provider endpoint.
- [ ] Validate provider responses and URLs.
- [ ] Keep raw/source metadata auditable.
- [ ] Create catalog service, SEO layer, analytics interface.
- [ ] Add CI checks.

**Exit:** a real provider catalog can be synced into normalized UTOON data without fabricating records.

## Phase 4 — One provider game vertical slice

Take one imported real game end-to-end:
- [ ] provider record syncs;
- [ ] normalized record passes schema;
- [ ] game card;
- [ ] game page;
- [ ] deferred provider iframe;
- [ ] controls/how-to-play;
- [ ] related-games section;
- [ ] report-problem path;
- [ ] metadata/canonical;
- [ ] accessibility;
- [ ] analytics;
- [ ] rights check.

**Exit:** one real provider game works end-to-end.

## Phase 5 — Controlled public MVP

- [ ] Sync provider catalog.
- [ ] Select 20–50 real games for initial public exposure.
- [ ] Record QA status/last-tested state.
- [ ] Keep imported-but-unapproved games unpublished/noindex.
- [ ] Add search/categories over published catalog.
- [ ] Add Recently Played if helpful.
- [ ] Handle provider removals/updates.

## Phase 6 — SEO/analytics launch readiness
- [ ] robots.txt.
- [ ] sitemap with indexable URLs only.
- [ ] canonical validation.
- [ ] structured data validation.
- [ ] Search Console.
- [ ] analytics/privacy verification.
- [ ] crawlable internal links.
- [ ] no accidental staging indexation.

## Phase 7 — Quality gates
- [ ] Web Quality audit.
- [ ] Accessibility audit.
- [ ] Performance/Core Web Vitals.
- [ ] Security audit.
- [ ] Rights/provenance audit.
- [ ] UX copy audit.
- [ ] Cross-browser/device QA.
- [ ] Release readiness + rollback.

## Phase 8 — Launch experiment
Measure acquisition, play rate, second-game selection, returns, provider revenue/session, provider failures, and organic search evidence.

## Phase 9 — Evidence-driven catalog expansion
The source catalog can already be large; increase **published/indexed** coverage only when evidence supports it.

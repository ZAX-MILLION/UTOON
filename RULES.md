# UTOON Rules

## 1. Product rules

1. Game-first, guest-first, mobile-first.
2. Quality before quantity.
3. Never fake popularity, ratings, player counts, trending, saves, compatibility, or revenue.
4. Do not add features until they serve acquisition, play, second-game selection, retention, revenue, safety, or operations.
5. MVP means 20–50 vetted games, not a bulk catalog.

## 2. Stack rules

1. Astro is the default framework.
2. TypeScript runs in strict mode.
3. Tailwind CSS 4 is the styling system; use current v4 syntax.
4. Astro components are default.
5. Client JavaScript must be justified.
6. React is an exception, not a baseline.
7. Static-first. SSR only when a real requirement demands it.
8. No Redux, Zustand, GraphQL, microservices, Docker, or heavy UI framework in MVP without an approved ADR.

## 3. Performance rules

1. Do not load a game iframe before Play unless provider constraints prove it necessary.
2. Initial JS should stay as close to zero as practical.
3. Reserve dimensions for images/ads to protect CLS.
4. Responsive, optimized images; lazy-load below-fold media.
5. One primary font family and minimal weights where practical.
6. No autoplay video previews.
7. Every third-party script requires explicit justification.
8. Target good Core Web Vitals: LCP ≤ 2.5s, INP ≤ 200ms, CLS ≤ 0.1.

## 4. SEO rules

1. SEO is architecture, not a launch plugin.
2. Playable ≠ indexable.
3. No mass indexing imported provider pages.
4. No AI synonym/rewrite pipeline pretending to create originality.
5. Indexable pages require useful verified first-party value.
6. Canonicals, sitemaps, robots, internal HTML links, metadata, and structured data are centralized.
7. No fake review/rating structured data.
8. No orphan indexable pages.
9. Search Console is part of launch verification.
10. Never promise rankings or indexing speed.

## 5. Accessibility rules

1. Practical WCAG 2.2 AA target for UTOON-owned UI.
2. Semantic HTML first; ARIA only when needed.
3. Keyboard navigation and visible focus are mandatory.
4. Correct labels, heading structure, contrast, and motion preferences.
5. Third-party game limitations must not justify inaccessible surrounding UI.

## 6. Security/privacy rules

1. No secret in client bundles or repository.
2. Treat provider iframes and third-party scripts as trust boundaries.
3. Provider permissions and CSP/sandbox rules must be based on actual documentation/tests.
4. Minimize personal data in MVP.
5. Consent/privacy behavior must match actual analytics/ad/provider behavior.
6. Public repo safety review before every release.

## 7. Rights rules

1. No asset without provenance.
2. Game → provider/direct license.
3. Thumbnail/art → provider/direct license.
4. Font/icon/library → recorded license.
5. Logo/brand assets → original or licensed.
6. No Google Images/random scraped assets.
7. Web distribution permission does not imply Android/app-store permission.
8. Provider content removal requests must be actionable.

## 8. Engineering rules

1. Write small cohesive modules.
2. Centralize provider, SEO, analytics, and game data access.
3. Game pages never hard-code provider-specific business logic.
4. Related-games logic lives behind one replaceable function/service.
5. Changes require verification appropriate to risk.
6. Bug fixes require a regression test when reasonably possible.
7. No completion claim without actual check output.
8. Architecture decisions go in `BRAIN.md` or an ADR before broad implementation.

## 9. Agent rules

1. Use on-demand skills; never load the entire skill vault into context.
2. Graft for focused repo navigation; Graphify for broad graph analysis.
3. Avoid duplicate skills with the same job.
4. Prefer canonical upstream skill/source over a mirror.
5. Review license/source before adding a new external skill.

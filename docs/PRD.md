# UTOON PRD — Current Baseline

## Product
UTOON is a fast, mobile-first browser gaming platform.

**Core experience:** Discover → Play instantly → Find another good game.

Primary domain target: `utoon.net`. Secondary/reserved: `utoon.org`.

## MVP objective
Prove:
1. users can be acquired;
2. visitors start games;
3. some select a second game;
4. provider monetization generates viable revenue;
5. useful UTOON pages earn organic search visibility.

## MVP
- Web/PWA-first.
- 20–50 vetted games.
- No account required.
- No Premium/payments.
- No Android build.
- No fake popularity/ratings/trending.
- Provider advertising/revenue share is the initial monetization.
- Recently Played can be local; no false cloud-save promise.

## Primary page
The game page is the primary organic landing experience.

Required elements:
- title/identity;
- deferred game player;
- related/next games;
- controls;
- how to play;
- verified game information;
- evidence-based compatibility notes where permitted;
- report-problem action.

## Homepage
Small, visual, clean:
- header/search when useful;
- editor pick/featured game;
- games worth playing;
- new games;
- local Recently Played where available;
- minimal footer/legal links.

## Game lifecycle
Candidate → Testing → Approved → Published → Index/Noindex.

Exceptional states: Broken, Delisted, Removed by Provider.

Lifecycle controls visibility, recommendations, sitemap/indexing, and removal/redirect behavior.

## SEO
Playable ≠ indexable. Imported provider text alone is not sufficient original value. No scaled AI rewrite farm.

## Performance
Static-first HTML; near-zero client JS where practical; deferred game iframe; optimized media; minimal third-party scripts.

Target good Core Web Vitals:
- LCP ≤ 2.5s
- INP ≤ 200ms
- CLS ≤ 0.1

## Stack
Astro + strict TypeScript + Tailwind CSS 4. Vanilla TypeScript by default; React only for justified islands.

Initial content: Astro Content Collections. Supabase later only when persistent backend data is required.

## Accessibility
Practical WCAG 2.2 AA for UTOON-owned UI.

## Rights
No asset without provenance. Provider web rights do not imply app-store rights.

## Localization
English-first architecture, Arabic-ready (UTF-8, locale-aware structure, RTL-ready styles). Arabic expansion is an experiment, not an assumption.

## Deferred
Accounts, Google login, Premium, PayPal, Patreon, Ko-fi, Google Play Billing, ratings, comments, XP, achievements, leaderboards, large admin CMS, complex recommendation engine, native Android, mass catalog import.

## Scaling rule
Scale 20–50 → 100 → 250 → 500 → 1,000+ only when quality, SEO, session depth, and revenue data justify it.

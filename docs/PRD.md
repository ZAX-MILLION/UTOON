# UTOON PRD — Current Baseline

## Product
UTOON is a fast, mobile-first browser gaming **aggregation and discovery platform**.

UTOON does not make the third-party games in the catalog. It imports/synchronizes games from approved providers and presents them through UTOON pages and provider-hosted embeds.

**Core experience:** Discover → Play instantly → Find another good game.

Primary domain target: `utoon.net`. Secondary/reserved: `utoon.org`.

## MVP objective
Prove:
1. users can be acquired;
2. visitors start games;
3. some select a second game;
4. provider monetization generates viable revenue;
5. useful UTOON pages earn organic search visibility.

## Catalog model

The system should support automated provider catalog ingestion:

```
Provider feed/API/catalog
→ Provider adapter
→ Normalized UTOON records
→ Publication/QA/index gates
→ UTOON pages
→ Provider iframe/embed
```

The imported catalog may be large internally, but the first public MVP exposes roughly 20–50 vetted games.

No synthetic/fabricated games, fake IDs, fake thumbnails, or guessed provider URLs.

## MVP
- Web/PWA-first.
- Provider-sourced games.
- Automated catalog sync where the provider officially supports it.
- 20–50 vetted games publicly exposed initially.
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
- deferred provider game player;
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
Imported → Candidate → Testing → Approved → Published → Index/Noindex.

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

Initial provider records may be cached/generated from provider feeds. A database is introduced only when sync state, scale, operations, or other persistent server-side requirements justify it.

## Accessibility
Practical WCAG 2.2 AA for UTOON-owned UI.

## Rights
No asset without provenance. Provider web rights do not imply app-store rights. Use official provider integration methods or explicit written permission.

## Localization
English-first architecture, Arabic-ready (UTF-8, locale-aware structure, RTL-ready styles). Arabic expansion is an experiment, not an assumption.

## Deferred
Accounts, Google login, Premium, PayPal, Patreon, Ko-fi, Google Play Billing, ratings, comments, XP, achievements, leaderboards, large admin CMS, complex recommendation engine, native Android.

## Scaling rule
The ingestion pipeline can handle a large source catalog, but public exposure/indexing scales only when quality, SEO, session depth, provider reliability, and revenue data justify it.

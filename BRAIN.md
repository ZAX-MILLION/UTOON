# BRAIN — UTOON Decision & Reasoning Record

This file records project decisions, evidence, assumptions, tradeoffs, and reversal triggers. It is not a dump of private model chain-of-thought.

## Decision method

UTOON uses this loop:

**Observe → Hypothesis → Evidence → Decision → Small implementation → Verification → Learn → Update**

## Current truth

### Product
UTOON is a **provider-fed browser game platform**. We do not intend to create the third-party games ourselves.

The platform owns:
- ingestion/sync;
- normalization;
- publication/indexing policy;
- UX/discovery;
- UTOON-authored metadata/QA;
- SEO architecture;
- analytics;
- provider abstraction.

The provider owns/hosts the underlying game unless a future agreement says otherwise.

### Correction from old prototype
The old single-file prototype visually claimed 1,000+ games, but most entries were synthetically generated from patterns rather than fetched from a real live provider catalog.

UTOON must replace that with real provider ingestion and must never fabricate games or provider URLs.

### Desired ingestion
Official provider feed/API/catalog → adapter → normalized game record → controlled publication → UTOON game page → provider-approved embed.

### MVP business loop
Search / direct traffic → Game page → Play → Related/next game → Second play → Revenue → Return.

### MVP scope
The ingestion layer may import many games, but the first public surface remains roughly 20–50 vetted games. This is a publication/SEO choice, not a technical inability to ingest more.

### Provider status
GameMonetize has now been technically verified as a serious catalog source. Its official RSS Builder is intended for JSON/RSS aggregation into game portals. The short `?format=json&amount=all` URL is not sufficient; the full RSS Builder query shape is required. Empirical research on 2026-10-01 reached 35,369 unique IDs by combining official category slices and alternate popularity views. The provider feed remains capped at 5,001 records per broad query and no working page/offset pagination was observed. See `docs/PROVIDER_CATALOG_RESEARCH_2026-10-01.md`.

GamePix remains a technically relevant additional provider because its publisher material explicitly advertises JSON API/direct embed integration. Its documented catalog API uses limit/offset pagination and a publisher SID for attribution. Existing publisher-account holders are directed by the current RSS page to use the dashboard rather than the generic public RSS URL.

GameDistribution/Azerion public docs clearly support Direct Game Integration via provider-hosted iframe links after onboarding. No public bulk catalog feed/API has been verified for UTOON.

### User identity
No accounts in MVP. Local Recently Played may be used. Do not call it Continue Playing unless true resumable state exists.

### Monetization
Initial monetization is provider-controlled advertising/revenue share. Premium and payment systems are deferred.

### Android
Android remains a future objective, not MVP. Provider app-store rights must be confirmed in writing before provider games appear in a Play-distributed app.

### SEO
Playable does not mean indexable. Every indexable page must add real value beyond provider text. No AI rewriting farm.

## Architecture decisions

### Astro over Next.js for MVP
Reason: current MVP is primarily content/game pages, SEO, performance, and a small amount of interactivity.

### Provider adapter before frontend coupling
Reason: provider response shapes, embed rules, and catalog access methods can change. The frontend consumes normalized UTOON records only.

### Strict TypeScript
Reason: provider records, sync state, lifecycle, and publication status must fail loudly.

### Tailwind CSS 4
Reason: fast implementation with constrained design tokens.

### React only by exception
Reason: every client runtime has a cost.

### Database only when sync state/operations justify it
A feed can initially be fetched and transformed during controlled sync/build steps. Add persistent database state when catalog size, update frequency, moderation/QA workflow, reporting, or user data makes it valuable.

## Major unresolved gates

- UTOON trademark/brand clearance.
- GameDistribution/Azerion publisher acceptance.
- Whether GameDistribution supplies a bulk publisher catalog API/feed to UTOON.
- Exact rights to game embeds, thumbnails, metadata, localization, and future app distribution.
- Provider ad behavior, revenue terms, payout rules, consent responsibility, and available iframe/SDK events.
- Actual revenue/session by country/device.
- Whether UTOON pages can earn meaningful organic visibility.

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
GameDistribution/Azerion is the preferred initial commercial conversation. Public docs clearly support Direct Game Integration via iframe; bulk catalog feed/API availability must be confirmed with the publisher team.

GamePix is a technically relevant fallback/additional provider because its current publisher site explicitly advertises JSON API/RSS/direct embed integration.

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

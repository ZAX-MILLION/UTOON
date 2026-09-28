# UTOON Catalog Ingestion

UTOON does **not** create the games in its catalog.

The platform's job is to ingest provider-approved game metadata, normalize it, publish UTOON-owned catalog/game pages, and launch the provider-hosted game in an iframe or other provider-approved embed.

## Desired flow

```
Provider catalog/feed/API
        ↓
Provider adapter
        ↓
Normalized UTOON game record
        ↓
Validation + status rules
        ↓
UTOON catalog/search/category pages
        ↓
UTOON game page
        ↓
Provider-hosted iframe/embed
```

## Important distinction

The old prototype visually showed "1,000+ games" but did not truly fetch a live 1,000-game catalog. It hard-coded a small base list and generated synthetic names/URLs for the rest.

UTOON must never fabricate provider titles, IDs, URLs, thumbnails, popularity, compatibility, or availability.

## Provider integration modes

Preferred order:

1. **Official publisher JSON/API/feed** — best for automatic catalog synchronization.
2. **Official publisher RSS/feed** — acceptable if metadata is sufficient.
3. **Provider white-label/catalog integration** — evaluate if it preserves UTOON's SEO/product control.
4. **Direct per-game embed links** — fallback for providers that do not expose a bulk feed.

Scraping a provider's public website is **not** the default integration method. Use an official feed/API or explicit written permission.

## Sync behavior

A provider sync should:
- fetch only from approved provider endpoints;
- preserve provider IDs and source URLs;
- normalize categories and capability fields;
- store provider metadata separately from UTOON-authored metadata;
- detect new, changed, removed, or disabled games;
- never auto-index every imported game;
- allow a game to exist in the internal catalog without being publicly indexed;
- keep a last-synced timestamp and source provider.

## Provider metadata vs UTOON metadata

Provider-owned/source fields:
- provider game ID;
- embed URL;
- supplied title;
- supplied description;
- thumbnail/artwork;
- width/height/orientation;
- compatibility/capability flags;
- provider update timestamp.

UTOON-owned fields:
- slug/canonical;
- publication status;
- index/noindex state;
- editorial notes;
- verified controls/how-to-play additions;
- UTOON QA status;
- last-tested date;
- related-game relationships.

Do not overwrite provider source data. Keep transformations auditable.

## Initial MVP

The ingestion system may be capable of importing a large catalog, but the first public MVP still exposes only a deliberately selected subset.

That means:
- import/sync can scale;
- public publication remains controlled;
- indexing remains controlled;
- QA/SEO quality gates remain intact.

## Provider-specific status

### GameDistribution / Azerion
Current public publisher material clearly supports Direct Game Integration using provider-hosted iframe links. UTOON must confirm whether a publisher account provides a bulk catalog feed/API or another approved automation method before implementing automatic full-catalog sync.

### GamePix
Current publisher material explicitly advertises JSON API/RSS/direct embed options. It is technically compatible with the catalog-sync model, subject to account approval and terms.

The provider layer exists so UTOON can support either or both without changing the frontend architecture.

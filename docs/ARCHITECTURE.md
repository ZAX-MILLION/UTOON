# UTOON Technical Architecture

## Default stack

Astro → static HTML first  
Strict TypeScript → domain safety  
Tailwind CSS 4 → constrained styling  
Vanilla TS → small interactions  
React → only when a component needs state/complexity that vanilla/Astro would make worse

## Core catalog architecture

```
Provider API / feed / approved catalog source
                ↓
        Provider Adapter(s)
                ↓
       Normalization / validation
                ↓
        UTOON Catalog Store
                ↓
     Publication + Indexing Gates
                ↓
 Astro pages/search/categories/game pages
                ↓
 Provider-hosted iframe/embed at play time
```

UTOON does not create or host third-party game code unless a specific provider agreement later permits a different model.

## Layer boundaries

### Provider adapter
Each provider owns its own adapter, for example:
- `gameDistributionProvider`
- `gamePixProvider`

Responsibilities:
- fetch from official/approved endpoint;
- map provider fields into the UTOON domain model;
- preserve provider IDs/source metadata;
- detect removals/updates;
- build/validate approved embed URLs.

Never scrape public catalog pages unless explicitly authorized.

### Catalog service
Pages call functions such as:
- `syncProviderCatalog()`
- `getPublishedGames()`
- `getGameBySlug()`
- `getGamesByCategory()`
- `getRelatedGames()`

Pages never depend directly on provider response shape.

### Source metadata separation
Provider source data and UTOON editorial/QA data must remain distinguishable and auditable.

### SEO layer
Central generation for titles, descriptions, canonical URLs, robots directives, OG/Twitter, structured data, and sitemap eligibility.

### Analytics layer
Central event API. Components do not call a vendor SDK directly.

### Rendering
Prerender public MVP content where practical. Introduce on-demand/SSR route-by-route only when catalog update frequency, sync scale, or personalization creates a measured need.

## Planned source shape after code authorization

```
src/
  components/
  layouts/
  pages/
    index.astro
    games/[slug].astro
  lib/
    catalog/
    providers/
    seo/
    analytics/
    config/
  content/ or generated catalog cache/
public/
```

## Dependency rules

- UI must not import provider-specific response structures.
- Provider modules must not control SEO policy.
- Provider source metadata must not be overwritten by UTOON editorial fields.
- Analytics implementation must be replaceable.
- Search implementation must be replaceable.
- Related-game algorithm must be replaceable.
- No direct client access to secrets.
- No backend/database dependency until sync/persistence requirements justify it.

## Initial sync strategy

If a provider exposes an official feed/API, UTOON should periodically fetch, validate, normalize, and cache that catalog.

If a provider only supports per-game DGI/embed links, UTOON can still use the same normalized model but imports only approved individual games until a bulk method is provided.

## Knowledge tools

Graft local cache is for quick code navigation. Graphify is for broad architecture/corpus analysis. Neither generated graph is authoritative over source files.

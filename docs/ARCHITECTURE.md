# UTOON Technical Architecture

## Default stack

Astro → static HTML first  
Strict TypeScript → domain safety  
Tailwind CSS 4 → constrained styling  
Vanilla TS → small interactions  
React → only when a component needs state/complexity that vanilla/Astro would make worse

## Layer boundaries

### Content
Astro Content Collections with schema validation.

### Game service
Pages call functions such as:
- `getPublishedGames()`
- `getGameBySlug()`
- `getGamesByCategory()`
- `getRelatedGames()`

Pages never depend directly on the content storage implementation.

### Provider boundary
Provider-specific embed/metadata normalization stays under one provider module. Game pages consume normalized domain objects.

### SEO layer
Central generation for titles, descriptions, canonical URLs, robots directives, OG/Twitter, structured data, and sitemap eligibility.

### Analytics layer
Central event API. Components do not call a vendor SDK directly.

### Rendering
Prerender public MVP content where practical. Introduce on-demand/SSR route-by-route only when scale or personalization creates a measured need.

## Planned source shape after code authorization

```
src/
  components/
  layouts/
  pages/
    index.astro
    games/[slug].astro
  content/games/
  lib/
    games/
    providers/
    seo/
    analytics/
    config/
  styles/
public/
```

## Dependency rules

- UI must not import provider-specific internals.
- Provider modules must not control SEO policy.
- Analytics implementation must be replaceable.
- Search implementation must be replaceable.
- Related-game algorithm must be replaceable.
- No direct client access to secrets.
- No backend/database dependency until required.

## Scaling path

At small scale: build-time Content Collections.

At larger scale: evaluate build duration, update frequency, catalog lifecycle, and hosting economics. Migrate selected data/routes to Supabase/on-demand rendering only with evidence.

## Knowledge tools

Graft local cache is for quick code navigation. Graphify is for broad architecture/corpus analysis. Neither generated graph is authoritative over source files.

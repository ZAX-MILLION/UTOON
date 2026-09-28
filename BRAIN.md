# BRAIN — UTOON Decision & Reasoning Record

This file records **project decisions, evidence, assumptions, tradeoffs, and reversal triggers**. It is not a dump of private model chain-of-thought.

## Decision method

UTOON uses this loop:

**Observe → Hypothesis → Evidence → Decision → Small implementation → Verification → Learn → Update**

Every important decision should answer:
- What problem are we solving?
- What evidence do we have?
- What are the viable options?
- What did we choose?
- What did we deliberately reject?
- What would make us reverse the decision?

## Current truth

### Product
UTOON is not a "1000 games in one index file" project. It is a platform that should eventually scale by data/import, while the visible product remains small, fast, and curated.

### MVP business loop
Search / direct traffic → Game page → Play → Related/next game → Second play → Revenue → Return.

### MVP scope
Start with roughly 20–50 vetted games. Scale only after real evidence.

### User identity
No accounts in MVP. Local Recently Played may be used. Do not call it Continue Playing unless true resumable state exists.

### Monetization
Initial monetization is provider-controlled advertising/revenue share. Premium and payment systems are deferred.

### Android
Android remains a future objective, not MVP. Provider app-store rights must be confirmed in writing before provider games appear in a Play-distributed app.

### SEO
Playable does not mean indexable. Every indexable page must add real value beyond provider text. No AI rewriting farm.

### GEO / AI discovery
No separate "GEO hack" layer. Strong crawlable HTML, structured facts, clear entities, useful content, and technical SEO form the AI-discovery foundation.

## Architecture decisions

### Astro over Next.js for MVP
Reason: current MVP is primarily content/game pages, SEO, performance, and a small amount of interactivity. Astro better supports static-first HTML and a near-zero-JS default.

Reverse if: the product becomes application-heavy enough that server/client state, authenticated app flows, and highly dynamic rendering dominate the product.

### Strict TypeScript
Reason: game/provider records and lifecycle states must fail loudly, not silently create broken pages.

### Tailwind CSS 4
Reason: fast implementation with constrained design tokens. Avoid unbounded utility sprawl and arbitrary values for system-level design decisions.

### React only by exception
Reason: every client runtime has a cost. Astro/HTML/CSS first; vanilla TS next; React island only where complexity justifies it.

### No backend before need
Initial content can live in Astro Content Collections. Supabase/PostgreSQL becomes justified only when persistent server-side state is needed.

## Knowledge tooling

### Graft
Purpose: cheap, local, regenerable code-context graph for routine agent navigation. It is local cache, not committed truth.

### Graphify
Purpose: deeper persistent knowledge graph and architecture/document relationship analysis.

Rule: do not use both on every task.

## Major unresolved gates

- UTOON trademark/brand clearance.
- GameDistribution/Azerion publisher acceptance.
- Exact rights to game embeds, thumbnails, metadata, localization, and future app distribution.
- Provider ad behavior, revenue terms, payout rules, consent responsibility, and available iframe/SDK events.
- Whether provider terms permit the compatibility/performance observations we may want to publish.
- Actual revenue/session by country/device.
- Whether UTOON pages can earn meaningful organic visibility.

## Decision record template

### YYYY-MM-DD — Decision title
**Context:**  
**Evidence:**  
**Options:**  
**Decision:**  
**Rejected:**  
**Verification:**  
**Reverse if:**  

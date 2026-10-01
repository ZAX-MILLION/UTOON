# Provider Catalog Research — 2026-10-01

This document records technical/provider evidence gathered before product-code authorization. It is not a private contract dump and does not activate monetization.

## Executive summary

- GameMonetize exposes an official RSS/JSON builder intended for game portals/custom aggregators.
- The short URL `https://rss.gamemonetize.com/rssfeed.php?format=json&amount=all` is **not** a complete-catalog endpoint in practice: on 2026-10-01 it returned only 1 record.
- The RSS Builder's full query shape is required. A representative generated URL is:
  `https://rss.gamemonetize.com/rssfeed.php?format=json&category=All&type=html5&popularity=newest&company=All&amount=All`
- That full "All" query returned 5,001 records and appears capped; documented/observed `page`, `offset`, and `start` probes did not paginate it.
- Category slicing plus alternate RSS Builder popularity views exposed **35,369 unique GameMonetize game IDs** in the research pass.
- A conservative metadata-only safety filter left **34,914** candidate records after excluding explicit adult/gambling tags/titles and invalid core URLs/titles.
- **1,106** reachable records had empty provider instructions and **13** had invalid/non-positive dimensions; these must remain imported-but-unverified or otherwise flagged rather than having facts invented.
- A mobile-feed category union exposed **19,915 unique records**. This is provider-feed evidence, not play-test evidence.
- GamePix officially supports publisher JSON API/direct embedding. Existing official integration documentation shows `limit`/`offset` pagination and requires the publisher `sid` for tracking. The current public RSS page explicitly tells existing publisher-account holders to use their dashboard rather than the public RSS URL.
- GameDistribution currently documents Direct Game Integration via individual embedded links after onboarding. No public bulk publisher feed/API was verified in this pass.

## GameMonetize evidence

Official sources reviewed:

- RSS Builder: https://gamemonetize.com/rss-builder
- Publisher FAQ: https://gamemonetize.com/faq
- Publisher page: https://gamemonetize.com/games-for-your-website
- Terms: https://gamemonetize.com/termofuse.php
- Network/catalog scale page: https://gamemonetize.com/network

The RSS Builder states that publishers can generate RSS/JSON and use the feed with custom RSS/JSON aggregators, then add games to their portals. The FAQ states that publishers can embed games on their sites and that game URLs/details are available in XML/JSON format.

UTOON must therefore:
- keep game binaries hosted by GameMonetize;
- use provider-supplied embed/play URLs;
- preserve provider ads/tracking;
- never download/rehost game code merely because it is listed in the feed;
- keep provider metadata raw/auditable;
- not claim revenue is active until a publisher account/domain is connected and verified.

The generic GameMonetize Terms also restrict copying site material. Because the RSS Builder explicitly exists for portal aggregation, UTOON should consume the feed fields and provider-hosted embeds only. Thumbnail/metadata modification/localization rights are not explicit enough in the public material to mark the full rights questionnaire complete.

## GameMonetize endpoint behavior observed

Observed on 2026-10-01 from the UTOON/ZAX test environment:

| Query | Result |
|---|---:|
| `?format=json&amount=all` | 1 record |
| Full builder query, `amount=10` | 11 records |
| Full builder query, `amount=100` | 101 records |
| Full builder query, `amount=All` | 5,001 records |
| `page=2` added to 10-item query | same first records |
| `offset=10` added | same first records |
| `start=10` added | same first records |

No published rate-limit documentation was found. A production sync must therefore be conservative: periodic, cached, diff-based, and not an aggressive crawler.

### Reachable catalog research

RSS Builder category slices were queried using `amount=All`.

Category counts under the `newest` view included:
- Arcade: 5,001 (cap reached)
- Puzzle: 5,001 (cap reached)
- Hypercasual: 4,574
- Girls: 4,000
- Adventure: 2,387
- Racing: 2,614
- Shooting: 2,102
- Action: 1,214
- Sports: 1,176
- Clicker: 969
- Boys: 685
- Multiplayer: 359
- Stickman: 354
- 3D: 249
- Cooking: 155
- Soccer: 135
- Bejeweled: 46
- 2 Player: 43
- .IO: 37

Because Arcade and Puzzle hit the 5,001 cap, additional official RSS Builder popularity views were unioned for those categories:
`newest`, `mostplayed`, `hotgames`, `bestgames`, `exclusivegames`, `editorpicks`, `branding`.

This produced **35,369 unique reachable IDs** across the combined research set. This is a lower bound on what the public builder can expose, not proof that it is the provider's entire catalog.

### Safety/eligibility research

Conservative exclusions were based only on explicit provider metadata:
- adult tags/title markers;
- gambling/casino/slots/roulette/blackjack/poker/betting-style tags/title markers;
- missing title;
- invalid/untrusted play URL host;
- invalid/untrusted thumbnail host.

Observed:
- explicit adult-filter matches: 301
- explicit gambling-filter matches: 170
- invalid play URL host: 0
- invalid thumbnail URL host: 0
- missing provider instructions: 1,106
- invalid/non-positive dimensions: 13
- metadata-eligible candidates after safety/core URL checks: **34,914**
- metadata-eligible candidates that also include provider instructions: **33,825**

These are **import candidates**, not "play-tested games."

## GamePix evidence

Official/current public sources reviewed:

- Publisher page: https://partners.gamepix.com/publishers
- RSS page: https://partners.gamepix.com/rss-feed
- API/integration page: https://games.gamepix.com/gameinfo/
- Categories endpoint: https://games.gamepix.com/categories

GamePix's publisher material states that integration is available by direct embedding and JSON API. The integration documentation describes:
- paginated games endpoint using `limit` and `offset`;
- default limit 1,000 in the documented API;
- a required publisher `sid` for tracking/statistics;
- game metadata including title, description, categories, thumbnails, URL, dimensions, orientation, responsiveness, touch support, hardware controls, creation/update timestamps.

The current RSS page explicitly warns existing publisher-account users not to use the public RSS URL and to use the dashboard instead.

UTOON therefore must not substitute a generic/default SID. A verified SID/feed from the user's actual publisher dashboard is required before a production GamePix adapter is activated.

## GameDistribution / Azerion evidence

Official/current public sources reviewed:

- Publisher overview: https://www.gamedistribution.com/publishers/
- Direct Game Integration: https://gamedistribution.com/publishers/embedded-links/
- DGI guidance: https://blog.gamedistribution.com/embed-games-in-minutes-with-dgi-from-gamedistribution/

The documented path is publisher onboarding → catalog selection → copy provider embed link/iframe. No public bulk publisher JSON/RSS catalog endpoint was verified.

Until an approved account exposes a bulk method (or an account manager supplies one), UTOON should treat GameDistribution as:
- valid for approved individual DGI embeds;
- **not** an automatically syncable full catalog.

## Required implementation behavior once code is authorized

1. Provider adapters remain independent.
2. Store a stable composite identity such as `provider + providerGameId`.
3. Upsert by provider ID; never duplicate on repeated sync.
4. Preserve raw provider source metadata separately from UTOON QA/editorial state.
5. Do not rewrite missing instructions as fact.
6. Store `importedAt`, `lastSeenAt`, provider update timestamp when available, and source fingerprint.
7. Provider records default to `Imported`, **not** `Tested`.
8. Broken/removed games are flagged, never silently deleted from audit state.
9. Public search/categories can query the imported catalog, but indexing/publication remains a separate gate.
10. Adult/gambling exclusion runs before publication.
11. Game iframe loads only on Play and retains provider ad/tracking behavior.
12. Fullscreen/touch/container UX belongs to UTOON; the game remains provider-hosted.
13. Sync should emit counts for fetched/new/updated/unchanged/removed/filtered/broken.
14. No monetization claim until provider account/property/ads requirements are verified.

## Remaining blockers

Production code remains blocked by `project-status.json.code_authorized=false`.

The public GameMonetize evidence is strong enough to justify continuing provider-integration design, but it does not fully answer every rights/privacy/commercial item in `docs/PROVIDER_QUESTIONS.md` (notably metadata/art modification/localization, consent responsibility, removal signaling, exact monetization attribution/account requirements, and documented rate limits).

GamePix additionally requires the user's real publisher SID/dashboard integration path.

GameDistribution requires approved publisher access for the current integration path and still lacks a verified bulk catalog feed for UTOON.

# UTOON Master Checklist

## Before product code

- [ ] Foundation PR reviewed.
- [ ] `node scripts/verify-foundation.mjs` passes.
- [ ] Brand/trademark clearance completed or risk explicitly accepted by owner/legal counsel.
- [ ] Provider acceptance confirmed.
- [ ] Provider game/embed rights confirmed.
- [ ] Thumbnail/metadata rights confirmed.
- [ ] Localization rights confirmed.
- [ ] Revenue share/payout/ad terms documented.
- [ ] Consent/privacy responsibility documented.
- [ ] Compatibility/performance publication rights documented.
- [ ] Android rights recorded as approved/not approved/unknown.
- [ ] Asset provenance policy accepted.
- [ ] `project-status.json.code_authorized` changed only in reviewed PR.

## Every implementation PR

- [ ] Objective tied to PRD/plan.
- [ ] No unnecessary dependency.
- [ ] TypeScript strict passes.
- [ ] Tests/checks appropriate to change pass.
- [ ] Build passes.
- [ ] No secret/new credential committed.
- [ ] Accessibility impact checked.
- [ ] SEO impact checked if public page changes.
- [ ] Performance impact checked if client/media/third-party code changes.
- [ ] Security/trust-boundary impact checked.
- [ ] Rights/provenance checked for new assets/content.
- [ ] BRAIN/architecture docs updated if a decision changed.
- [ ] Graft/Graphify local graph refreshed if used.

## Before indexing a game

- [ ] Game works.
- [ ] Rights confirmed.
- [ ] Unique stable slug/canonical.
- [ ] Page has verified useful value beyond provider boilerplate.
- [ ] Controls/how-to-play are correct.
- [ ] Mobile/desktop statements are evidence-based.
- [ ] Internal crawlable links exist.
- [ ] No fake rating/review/player data.
- [ ] Included intentionally in sitemap.
- [ ] No accidental noindex.

## Before launch

- [ ] 20–50 games maximum for initial validation unless documented exception.
- [ ] robots.txt reviewed.
- [ ] sitemap reviewed.
- [ ] canonical/metadata/OG validated.
- [ ] Search Console configured.
- [ ] analytics and consent behavior verified.
- [ ] accessibility audit passed/known issues documented.
- [ ] performance audit passed/known issues documented.
- [ ] security audit passed/no launch blockers.
- [ ] legal pages reflect actual behavior.
- [ ] broken-game reporting works.
- [ ] rollback procedure tested.
- [ ] release-readiness checklist completed.

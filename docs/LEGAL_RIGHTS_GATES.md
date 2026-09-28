# Legal, Rights & Provenance Gates

This is an engineering control document, not legal advice.

## Asset provenance rule

Every production asset/content item needs a known source and permitted use.

Record:
- source/provider;
- license/agreement basis;
- allowed surfaces (web, marketing, app, social, etc.);
- modification rights;
- attribution requirements;
- removal obligations.

## Game/provider gate

Before production provider integration, obtain written answers in `docs/PROVIDER_QUESTIONS.md`.

Do not assume:
- embed rights imply download/hosting rights;
- web rights imply Android/Play rights;
- game access implies thumbnail/artwork modification rights;
- provider metadata can be freely rewritten;
- provider ads can be suppressed for Premium.

## Brand gate

UTOON domain ownership is not trademark clearance. Complete a brand/trademark clearance before meaningful brand spend or Play publication.

## Open-source dependencies

Before adding a dependency/skill:
- prefer canonical source;
- record license;
- pin meaningful tooling when reproducibility matters;
- avoid copying third-party content into this repo unless redistribution is permitted.

## Public repository

Never commit:
- provider/private API keys;
- ad/payment credentials;
- user data;
- private contracts;
- confidential correspondence;
- private analytics exports.

## Legal pages

Final Privacy/Terms/Cookie/Copyright content must reflect actual deployed behavior and actual providers. Do not generate claims about data practices before implementation is known.

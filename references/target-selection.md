# Target Selection / 攻击标的选择

Source: Analyst heuristic.
Purpose: Help analysts reason about why a black/grey-market actor may choose a specific business mechanism.

Do not treat target-selection hypotheses as facts. Use them to generate evidence questions and investigation priorities.

## Common Selection Factors

Black/grey-market actors often prefer targets with one or more of these traits:

| Factor | Why It Matters | Evidence to Check |
|---|---|---|
| High subsidy or payout | More value per successful action | coupon amount, creator incentive, referral reward, ad settlement, refund policy |
| Low entry barrier | Easier account or merchant onboarding | registration friction, identity checks, device limits, KYC thresholds |
| Delayed review | Abuse can finish before review catches up | review SLA, settlement delay, shipping delay, withdrawal delay |
| Automatable path | Repeated actions can scale cheaply | short path length, deterministic workflow, weak interaction quality checks |
| Scalable resources | Inputs can be bought or reused | account pools, phone numbers, proxies, device farms, task platforms |
| Clear monetization | Benefits can be converted to money, traffic, ranking, assets, or private-domain leads | refund, resale, cash-out, ranking gain, traffic diversion |
| High false-positive cost | Platform hesitates to block aggressively | important growth campaign, creator program, merchant ecosystem, user experience risk |
| New or changing rules | Actors probe new policies before detection matures | launch dates, rule changes, promotion windows, grey release |

## Scene Examples

| Scene | Likely Target | Why It Is Attractive |
|---|---|---|
| New-user coupon abuse | eligibility and coupon redemption | subsidy is explicit, path is short, value is easy to measure |
| Creator incentive abuse | payout threshold and content distribution | low-quality content can be scaled if quality checks are weak |
| Live-streaming metric abuse | hotness ranking and gift/b榜 mechanisms | early metric boost can attract organic traffic or settlement benefits |
| Ad fraud | attribution and conversion settlement | payout depends on reported actions, not always downstream quality |
| Merchant reputation fraud | ranking, sales volume, reviews | ranking gains can increase future organic traffic and trust |
| Account takeover | stored assets and trusted identity | existing accounts may bypass new-user friction and hold assets |
| Crawling and content harvesting | public pages and APIs | data can be resold, monitored, copied, or used for arbitrage |

## Analyst Questions

- What value is extracted: money, subsidy, traffic, ranking, account assets, data, or private-domain leads?
- Which business rule creates the value?
- Which rule is easiest to satisfy artificially?
- Which controls would introduce friction without unacceptable user harm?
- What would distinguish normal high-growth behavior from abuse?

# Resource Preference / 资源偏好

Source: Analyst heuristic.
Purpose: Map abuse objectives to likely resource categories and observable signals.

This is a hypothesis aid, not evidence by itself. Do not conclude a resource was used without supporting signals.

## Resource Categories

| Resource | Used For | Observable Signals |
|---|---|---|
| Account pool | scaling actions, warming identities, distributing risk | burst registration, similar profiles, short lifecycle, shared device/IP/address/payment links |
| Phone / SMS resources | registration, verification, binding changes | phone prefix concentration, virtual/operator anomalies, repeated binding changes |
| Proxy / IP resources | rate-limit evasion, geo simulation, identity separation | ASN concentration, datacenter/mobile proxy patterns, IP churn with stable behavior |
| Device environment | account isolation, automation, app fingerprint variation | emulator/cloud-phone signals, fingerprint collision, abnormal sensor/device consistency |
| Payment accounts | purchase, refund, cash-out, settlement | many accounts linked to few payment instruments, unusual refund or transfer concentration |
| Address / logistics resources | physical goods conversion, fake transaction, return abuse | address normalization clusters, logistics weight/route anomalies, repeated recipients |
| Content materials | spam, SEO, engagement farming, diversion | template similarity, AI-like bulk generation, repeated media assets, semantic duplication |
| Task platform / human labor | low-cost clicks, comments, installs, orders | low-quality interaction, synchronized behavior, shallow retention, templated comments |
| Merchant / channel accounts | fake transactions, ad fraud, settlement abuse | new or low-quality merchants/channels with abnormal volume or quality decay |
| Fund-flow channels | cash-out, refund arbitrage, laundering-like behavior | concentrated withdrawals, circular transactions, rapid asset depletion |

## Preference by Abuse Objective

| Abuse Objective | Likely Resources | Notes |
|---|---|---|
| Rights / coupon arbitrage | accounts, phones, IPs, devices, addresses, payment tools | often optimized for low cost per eligible account |
| Account farming | accounts, devices, IPs, content/interaction scripts, task labor | goal is trusted-looking identities for downstream abuse |
| Content boosting and diversion | accounts, content materials, task labor, IP/device resources | goal is distribution, visibility, and off-platform traffic |
| Live metric manipulation | interaction accounts, device/IP resources, task labor, fund-flow resources | metrics may be used for ranking, credibility, or settlement |
| Merchant reputation fraud | buyer accounts, logistics resources, review templates, payment tools | often creates graph links between merchants and buyer pools |
| Credential stuffing / takeover | credential lists, IP resources, device environments, captcha-solving resources | do not describe attack execution; focus on detection and protection |
| Ad fraud / fake conversion | device resources, click traffic, install/registration resources, channel accounts | downstream quality often diverges from reported conversion quality |
| Crawling / content harvesting | proxies, account pools, browser automation, data processing | focus on rate, path, fingerprint, and data reuse signals |

## Output Discipline

- State resource use as `possible`, `likely`, or `observed`.
- Tie each resource hypothesis to evidence.
- If evidence is missing, list the required fields or logs.
- Avoid naming vendors, markets, or ways to acquire resources.

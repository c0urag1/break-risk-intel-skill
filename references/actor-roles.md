# Actor Roles / 黑灰产角色分工

Source: Analyst heuristic.
Purpose: Help analysts describe possible role separation in a case without overclaiming.

Role analysis is probabilistic. Do not assert organized fraud unless evidence supports coordination, shared resources, or repeated patterns.

## Common Roles

| Role | Responsibility | Observable Signals |
|---|---|---|
| Organizer / broker | packages the opportunity, coordinates resources and settlement | multi-cluster coordination, repeated playbook across campaigns, off-platform settlement hints |
| Account supplier | provides accounts or account pools | shared registration traits, lifecycle similarity, profile templates, weak organic history |
| SMS / verification supplier | supports registration or binding operations | phone segment concentration, repeated binding changes, virtual number indicators |
| Proxy / network supplier | provides IP separation and geo variation | IP rotation, ASN concentration, impossible travel, stable behavior across changing IPs |
| Device resource supplier | provides emulator, cloud phone, or device environments | device fingerprint clusters, emulator/cloud signals, abnormal device entropy |
| Automation/tool provider | provides scripts or automation workflows | highly regular timing, repeated paths, low behavioral diversity, synchronized actions |
| Task platform / human executor | performs clicks, comments, orders, installs, reviews | low-quality but human-like actions, templated language, shallow retention |
| Merchant / channel participant | benefits from fake orders, reputation, traffic, or settlement | volume spike, quality mismatch, buyer/channel graph concentration |
| Content operator | creates or recycles content materials | near-duplicate text/media, rapid posting, topic/template reuse |
| Cash-out / settlement role | converts benefits, refunds, payouts, or assets | concentrated payout accounts, rapid withdrawals, linked payment instruments |

## How to Use Roles

For each suspected role, output:

```text
Role: [role name]
Status: observed / inferred / unknown
Confidence: high / medium / low
Evidence: [signals from the case]
Evidence gaps: [what must be checked]
```

## Do Not Overclaim

Avoid statements like:

```text
This is definitely an organized black-market group.
```

Prefer:

```text
The current signals are consistent with coordinated abuse, but role separation requires evidence from account, device, IP, payment, content, or settlement linkage.
```

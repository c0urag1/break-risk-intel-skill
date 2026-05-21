# Abuse Chain Model / 黑灰产链路模型

Source: Analyst heuristic.
Purpose: Provide a conceptual model for authorized risk-control, anti-fraud, anti-abuse, and business-security analysis.

This file is not a playbook for abuse. Use it to structure case analysis, evidence collection, and mitigation planning. Do not provide executable bypass steps, scripts, black-market resource lists, or operational instructions.

## Core Model

Most black/grey-market cases can be analyzed as a chain:

```text
Target selection → Resource preparation → Rule probing → Scaled execution → Risk-control evasion → Monetization → Reuse / transfer / cleanup
```

Use this model to ask:

- What business mechanism is being targeted?
- What resources would be needed to scale the behavior?
- Which parts of the chain are directly observed?
- Which parts are only hypotheses?
- Where can the platform observe, slow down, review, or stop the chain?

## Chain Stages

| Stage | Analyst Question | Typical Evidence | Control Point |
|---|---|---|---|
| Target selection | Why this business mechanism? | subsidy, ranking, incentive, refund, settlement, account asset, content distribution | product rules, eligibility, threshold design |
| Resource preparation | What resources are needed? | account pool, phone numbers, IPs, devices, payment accounts, addresses, content materials | registration, binding, device/IP checks |
| Rule probing | Did actors test limits first? | small batches, failed attempts, threshold-seeking behavior, timing changes | rate limits, anomaly alerts, canaries |
| Scaled execution | How did behavior scale? | burst timing, repeated paths, similar features, graph clusters | throttling, review queues, graph detection |
| Risk-control evasion | What signals were avoided or rotated? | IP/device rotation, behavior randomization, account warming, identity changes | multi-signal risk scoring, step-up checks |
| Monetization | How is value extracted? | coupon value, traffic, ranking, ad payout, refund, account assets, cash-out | settlement delay, withdrawal review, clawback |
| Reuse / transfer / cleanup | Are resources reused or disposed? | short account lifecycle, repeated devices, cross-case links, asset transfer | entity graph, historical linkage, watchlists |

## Output Discipline

When using this model:

- Label each chain stage as `observed`, `inferred`, or `unknown`.
- Do not claim a full chain exists unless evidence supports it.
- Use confidence labels: `high`, `medium`, or `low`.
- Include evidence gaps before recommending severe actions.
- Keep chain descriptions conceptual and defensive.

## Common Chain Patterns

### Rights / Subsidy Arbitrage

```text
Eligibility creation → Benefit claiming → Low-cost conversion → Refund / resale / transfer → Account disposal
```

Common control points: eligibility scoring, delayed benefit release, order review, refund clawback, graph clustering.

### Content Distribution Abuse

```text
Account preparation → Content posting → Artificial engagement → Distribution boost → Off-platform diversion / monetization
```

Common control points: new-account distribution limits, engagement quality scoring, content similarity, comment/link detection, graph linkage.

### Reputation / Transaction Fraud

```text
Merchant demand → Buyer account matching → Order placement → Logistics / confirmation → Review / ranking gain → Off-platform settlement
```

Common control points: buyer-merchant graph, logistics anomaly detection, review similarity, order quality scoring, ranking dampening.

### Account Asset Takeover

```text
Credential or session access → Login validation → Binding changes → Asset consumption → Transfer / resale
```

Common control points: login risk scoring, sensitive-operation cooldown, device binding review, asset-use restrictions, user notification.

### Advertising / Incentive Settlement Abuse

```text
Traffic generation → Click / install / registration simulation → Conversion attribution → Settlement → Account or channel recycling
```

Common control points: post-conversion quality, attribution anomaly detection, channel-level holdback, settlement review.

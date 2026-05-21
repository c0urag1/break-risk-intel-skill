# Abuse Objective Scene Taxonomy / 按作案目标划分的场景

Source: Analyst heuristic + BREAK-derived IDs.
Purpose: Complement BREAK business scenes with abuse-objective scenes that are easier to use in case analysis.

This taxonomy does not replace JDArmy/BREAK business scenes. It helps map a case from “what the actor wants” to “what to observe and control”.

## Scenes

| Scene | Attack Target | Common Resources | Common Roles | Related BREAK IDs |
|---|---|---|---|---|
| Rights / subsidy arbitrage | coupons, new-user benefits, referrals, campaign rewards | accounts, phones, IPs, devices, addresses, payment tools | organizer, account supplier, executor, cash-out/resale role | `R0009`, `R0005`, `R0034`, `R0099`, `R0054-003` |
| Account lifecycle abuse | account creation, warming, trust building, downstream monetization | accounts, phones, IPs, devices, content/interaction resources | account supplier, device/network supplier, automation/tool provider | `R0034`, `R0088`, `R0030`, `R0098` |
| Content distribution abuse | recommendation, search, trending, comment visibility | accounts, content materials, task labor, IP/device resources | content operator, task platform, organizer | `R0012`, `R0012-001`, `R0012-002`, `R0013`, `R0115` |
| Creator / task incentive abuse | creator rewards, task completion, payout thresholds | accounts, content materials, engagement resources, payout accounts | organizer, content operator, task platform, cash-out role | `R0005`, `R0009`, `R0034`, `R0071`, `R0140` |
| Live-streaming metric abuse | hotness ranking,榜单, traffic allocation, gift/activity settlement | interaction accounts, devices, IPs, fund-flow resources | streamer/channel participant, task platform, cash-out role | `R0012`, `R0012-001`, `R0034`, `R0008`, `R0099` |
| Transaction / reputation fraud | sales volume, reviews, ranking, merchant trust | buyer accounts, logistics, review templates, payment tools | merchant, brushing team, task platform, logistics resource | `R0017`, `R0056`, `R0004`, `R0015` |
| Ad settlement fraud | click, install, registration, conversion attribution, channel payout | devices, click traffic, channel accounts, attribution parameters | channel participant, traffic supplier, tool provider | `R0008`, `R0115`, `R0005`, `R0034` |
| Payment / refund cash-out | refund rules, stored value, account balance, payout channel | payment accounts, orders, refund flows, linked beneficiaries | account supplier, executor, cash-out role | `R0054`, `R0054-003`, `R0068`, `R0090` |
| Account asset takeover | login identity, stored assets, coupons, points, balance | credentials, IP/device resources, target accounts | credential holder, automation/tool provider, cash-out role | `R0032`, `R0032-001`, `R0084`, `R0090`, `R0088` |
| Crawling / content harvesting | public APIs, detail pages, comments, prices, media/content assets | proxies, account pools, browser automation, data processing | data collector, proxy supplier, downstream buyer | `R0028`, `R0080`, `R0109`, `R0116` |

## Required Analysis Fields

When a case maps to one of these scenes, include:

- Attack target: what mechanism is likely being exploited.
- Actor roles: possible participants, with confidence.
- Resource preference: likely resources, tied to evidence.
- Conceptual abuse chain: high-level only.
- Monetization path: how value may be extracted.
- Observables: account, device, IP, content, order, payment, graph, settlement.
- Evidence gaps: what data is needed before stronger claims.
- Control points: where to slow, review, limit, delay, or claw back.

## Evidence Boundary

If the user only provides symptoms, use `possible` or `hypothesis`. Use `likely` only when multiple independent signals align. Use `observed` only for facts present in the input or attached data.

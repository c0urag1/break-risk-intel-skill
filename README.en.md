# BREAK Risk Intel Skill

[中文](README.md) | English

A **grey-market intelligence analyst Skill** for Claude Code / Codex CLI.

> Built on [JDArmy/BREAK](https://github.com/JDArmy/BREAK), an open-source Business Risk Enumeration & Avoidance Knowledge framework created and maintained by JDArmy. This project packages BREAK's business-risk taxonomy, risk IDs, avoidance controls, and reference data into an Agent Skill for analyzing grey-market abuse cases in Claude Code / Codex CLI.

## What It Does / Does Not Do

**What it does:** Helps an Agent analyze grey-market / business-abuse cases using BREAK risk categories and public risk-analysis frameworks. It can produce attack-target analysis, possible actor roles, resource preferences, conceptual abuse chains, monetization paths, observables, evidence gaps, risk IDs, investigation plans, and mitigation suggestions.

**What it does not do:** It is not a live intelligence feed, crawler, internal-data connector, bypass toolkit, or fraud playbook. It is intended for authorized risk-control, anti-fraud, anti-abuse, and business-security analysis.

## Installation

Recommended: ask your Agent to install it directly:

```text
Install the GitHub Skill c0urag1/break-risk-intel-skill for me.
```

Or install manually into the matching skills directory:

**Claude Code**

```bash
mkdir -p ~/.claude/skills && git clone https://github.com/c0urag1/break-risk-intel-skill.git ~/.claude/skills/break-risk-intel
```

```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.claude\skills"; git clone https://github.com/c0urag1/break-risk-intel-skill.git "$env:USERPROFILE\.claude\skills\break-risk-intel"
```

**Codex CLI**

```bash
mkdir -p ~/.codex/skills && git clone https://github.com/c0urag1/break-risk-intel-skill.git ~/.codex/skills/break-risk-intel
```

```powershell
New-Item -ItemType Directory -Force "$env:USERPROFILE\.codex\skills"; git clone https://github.com/c0urag1/break-risk-intel-skill.git "$env:USERPROFILE\.codex\skills\break-risk-intel"
```

Restart or reload your Agent CLI after installation.

## Update

Recommended: ask your Agent to update it directly:

```text
Update my installed c0urag1/break-risk-intel-skill.
```

For a manual update, run `git pull` in the installed directory:

```bash
cd ~/.claude/skills/break-risk-intel && git pull
# or
cd ~/.codex/skills/break-risk-intel && git pull
```

On Windows PowerShell, use the matching `$env:USERPROFILE\.claude\skills\break-risk-intel` or `$env:USERPROFILE\.codex\skills\break-risk-intel` path. Restart or reload your Agent CLI after updating.

## Quick Start

```text
Use the grey-market intelligence analyst to analyze this content boosting and off-platform diversion case.

A content platform found a group of new accounts that quickly followed, liked, saved, and commented after registration.
Some accounts posted highly similar content, and the comment area contained obfuscated contact details and off-platform diversion language.

Output the attack target, possible actor roles, resource preferences, conceptual abuse chain, observables, evidence gaps, BREAK mapping, and mitigation suggestions.
```

The Agent should produce:

```text
One-line judgment:
Possible content-distribution abuse and off-platform diversion risk, confidence: medium.

Known facts:
- New accounts appeared and interacted quickly
- Content similarity is high
- Comments contain off-platform diversion signals

Hypotheses:
- Account pool or account matrix may be boosting engagement
- Content materials may be templated or generated in bulk
- Comment area may be used for private-domain diversion

Attack target:
Recommendation cold start, engagement weight, and comment-area diversion entry points.

Possible actor roles:
Account supplier, content operator, engagement supplier, and diversion operator.

Resource preferences:
Account pool, content materials, engagement resources, proxy IP / device environments.

Conceptual abuse chain:
Account preparation → account warming / cold start → bulk content posting → artificial engagement → recommendation/search exposure → comment/profile diversion → off-platform monetization

BREAK mapping:
- R0012 Content boosting
- R0012-001 Like fraud
- R0012-002 Comment fraud
- R0034 Automated account farming

Evidence gaps:
Validate account registration clustering, device/IP linkage, content similarity, engagement quality, contact-detail variants, and account graph relations.

Mitigation suggestions:
New-account cold-start limits, engagement quality scoring, content similarity checks, comment diversion detection, account graph clustering, and delayed recommendation for high-risk accounts.
```

## Use Cases

Useful for risk-control, security, anti-fraud, anti-abuse, and business-security case analysis, such as:

- rights and subsidy arbitrage: coupons, referrals, campaign rewards, membership benefits
- account lifecycle abuse: bulk registration, account farming, account matrices
- content distribution abuse: likes, comments, saves, follows, off-platform diversion
- creator / task incentive abuse: low-quality content, task subsidies, payout risk
- live-streaming metric abuse: popularity, ranking, gifts, campaign tasks
- transaction and reputation fraud: fake orders, fake reviews, fake logistics
- ad settlement fraud: fake clicks, fake registrations, fake conversions
- account asset risk: credential stuffing, account takeover, balance/points/coupon depletion
- refund and payment risk: refund arbitrage, after-sales benefit abuse, cash-out risk
- data and content harvesting: crawling, content copying, price/comment collection

See the example cases below for detailed inputs, expected outputs, and analysis notes.

## Example Cases

| Case | Coverage |
|---|---|
| [`coupon-abuse.md`](examples/coupon-abuse.md) | coupon abuse, marketing campaign abuse, refund arbitrage |
| [`account-farming.md`](examples/account-farming.md) | automated account farming, account lifecycle, downstream monetization |
| [`fake-transaction.md`](examples/fake-transaction.md) | fake transactions, fake reviews, fake shipping |
| [`credential-stuffing.md`](examples/credential-stuffing.md) | credential stuffing, account takeover, sensitive-operation protection |
| [`content-spam.md`](examples/content-spam.md) | content spam, fake engagement, off-platform traffic diversion |
| [`proxy-device-evasion.md`](examples/proxy-device-evasion.md) | proxy IPs, device evasion, emulators / cloud phones |
| [`refund-abuse.md`](examples/refund-abuse.md) | refund abuse, gift arbitrage, after-sales workflow abuse |
| [`payment-cashout.md`](examples/payment-cashout.md) | payment cash-out, money-laundering risk, fund-flow graphing |
| [`content-boosting-and-diversion.md`](examples/content-boosting-and-diversion.md) | content boosting, account matrix, off-platform diversion |
| [`creator-incentive-abuse.md`](examples/creator-incentive-abuse.md) | creator incentives, task subsidies, payout risk |
| [`live-streaming-metric-abuse.md`](examples/live-streaming-metric-abuse.md) | live-streaming metrics, ranking, gift-flow anomalies |
| [`ad-fraud-fake-conversion.md`](examples/ad-fraud-fake-conversion.md) | ad fraud, fake conversions, channel settlement |

## Knowledge Structure

- `references/`: BREAK risk, avoidance, avoidance category, business-scene, threat actor, and attack-tool indexes, plus analysis frameworks for target selection, actor roles, resource preferences, and abuse chains
- `knowledge/`: domain playbooks for marketing abuse, account risk, merchant fraud, content abuse, payment risk, and device/network evasion
- `scenes/`: 15 BREAK business-scene playbooks
- `examples/`: representative grey-market abuse cases and synthetic examples for analysis structure; synthetic examples do not claim real incidents
- `templates/`: intelligence brief, risk matrix, investigation plan, and management report templates
- `evals/`: lightweight examples for risk mapping and misuse handling

## Safety Boundary

See [`SECURITY.md`](SECURITY.md). In short: this project is for authorized risk-control, anti-fraud, anti-abuse, and business-security analysis. It does not provide executable grey-market operation steps.

## License

This project is licensed under Apache License 2.0. See [`NOTICE`](NOTICE) for attribution details.

- [`LICENSE`](LICENSE)
- [`NOTICE`](NOTICE)
- [`references/BREAK_LICENSE.txt`](references/BREAK_LICENSE.txt)

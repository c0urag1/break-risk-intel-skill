# BREAK Risk Intel Skill

[中文](README.md) | English

A **grey-market intelligence analyst Skill** for Claude Code / Codex CLI.

> Built on [JDArmy/BREAK](https://github.com/JDArmy/BREAK), an open-source Business Risk Enumeration & Avoidance Knowledge framework created and maintained by JDArmy. This project packages BREAK's business-risk taxonomy, risk IDs, avoidance controls, and reference data into an Agent Skill for analyzing grey-market abuse cases in Claude Code / Codex CLI.

## What It Does / Does Not Do

**What it does:** Helps an Agent analyze grey-market / business-abuse cases using BREAK risk categories, risk IDs, abuse-chain hypotheses, observables, investigation plans, and mitigation suggestions.

**What it does not do:** It is not a live intelligence feed, crawler, bypass toolkit, or fraud playbook. It is intended for authorized risk-control, anti-fraud, anti-abuse, and business-security analysis.

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

## Quick Start

```text
Use the grey-market intelligence analyst to analyze this coupon abuse case and output a risk matrix and investigation plan.

During a campaign, many new accounts registered via proxy IPs, claimed new-user coupons, and quickly placed orders for low-priced goods.
The registration-to-order interval was very short, and some orders were refunded later.
```

The Agent should produce:

- risk judgment
- BREAK risk mapping
- abuse-chain hypothesis
- observables
- investigation plan
- risk matrix
- mitigation suggestions

## Use Cases

Useful for risk-control, security, anti-fraud, anti-abuse, and business-security case analysis, such as:

- coupon abuse and marketing arbitrage
- account farming
- fake transactions and fake reviews
- credential stuffing and account takeover
- content spam and off-platform traffic diversion
- proxy/IP and device evasion
- refund abuse
- payment cash-out and money-laundering risk

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

## Knowledge Structure

- `references/`: BREAK risk, avoidance, avoidance category, business-scene, threat actor, and attack-tool indexes
- `knowledge/`: domain playbooks for marketing abuse, account risk, merchant fraud, content abuse, payment risk, and device/network evasion
- `scenes/`: 15 BREAK business-scene playbooks
- `examples/`: 8 representative grey-market abuse cases
- `templates/`: intelligence brief, risk matrix, investigation plan, and management report templates
- `evals/`: lightweight examples for risk mapping and misuse handling

## Safety Boundary

See [`SECURITY.md`](SECURITY.md). In short: this project is for authorized risk-control, anti-fraud, anti-abuse, and business-security analysis. It does not provide executable grey-market operation steps.

## License

This project is licensed under Apache License 2.0. JDArmy/BREAK is also licensed under Apache License 2.0. See [`NOTICE`](NOTICE) for attribution details.

- [`LICENSE`](LICENSE)
- [`NOTICE`](NOTICE)
- [`references/BREAK_LICENSE.txt`](references/BREAK_LICENSE.txt)

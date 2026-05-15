---
name: break-risk-intel
description: Black/grey-market intelligence analysis assistant based on JDArmy/BREAK for risk-control, anti-abuse, anti-fraud, trust & safety, and business security teams. Use for 黑灰产情报分析, 风控 case 分析, 反作弊, 反欺诈, 业务安全, 薅羊毛, 刷单, 撞库, 爬虫, 账号风险, 代理IP, 设备风险, 营销风险, 支付金融风险, 商家作弊, 内容刷量, fraud risk, anti-abuse, trust and safety, abuse investigation. Maps cases to BREAK business-risk taxonomy and produces observables, hypotheses, investigation plans, controls, risk matrices, and reports.
---

# BREAK Risk Intel Skill

Use this skill when the user needs black/grey-market case analysis, business-abuse triage, anti-fraud investigation support, risk-control strategy, or management-facing incident reporting.

This skill is based on JDArmy/BREAK. It works without Python or external services: use the bundled Markdown references, knowledge files, examples, and templates.

## Safety Boundary

This skill is for authorized risk-control, anti-fraud, anti-abuse, trust & safety, and business-security analysis. Do not provide executable grey-market operation steps, bypass recipes, credential attacks, fraud workflows, black-market resource lists, or scripts for abuse. If asked for misuse, pivot to risk identification, observables, investigation steps, and mitigation.

## Loading Rules

1. Start with `references/risk-index.md` to ground likely BREAK risk IDs.
2. Use `references/avoidance-index.md` and `references/avoidance-categories.md` to map risk IDs to controls and control domains.
3. Use `references/business-scenes.md` and the relevant `scenes/*.md` playbook when the user mentions a business scene such as 电商, 金融, 内容平台, 商家, 出行, 游戏, or 本地生活.
4. Use `references/threat-actors.md` and `references/attack-tools.md` to identify likely roles, resources, and tooling signals without explaining how to operate them.
5. Load exactly one or two relevant `knowledge/*.md` files based on the case:
   - coupon, campaign, voucher, refund, gift, membership benefits → `knowledge/marketing-abuse.md`
   - account, login, credential stuffing, account takeover, account farming → `knowledge/account-risk.md`
   - merchant, fake transaction, fake review, fake shipping → `knowledge/merchant-fraud.md`
   - content spam, fake engagement, off-platform traffic → `knowledge/content-abuse.md`
   - payment, cash-out, laundering, black card, refund fund flow → `knowledge/payment-risk.md`
   - proxy IP, device fingerprint, emulator, cloud phone, bot environment → `knowledge/device-network-risk.md`
6. Use `examples/*.md` only when the user case resembles a known example.
7. Use `templates/*.md` when the user asks for a report, matrix, brief, or investigation plan.

## BREAK ID Integrity

- Only use BREAK risk IDs that appear in the bundled references or examples.
- Valid risk ID format is `R0000` or `R0000-000`; valid avoidance/control ID format is `A0000` or `A0000-000`.
- Do not invent labels such as `BREAK-R01`, `BREAK-P01`, `BREAK-T01`, or generic category IDs.
- If the case clearly maps to a risk pattern but no exact BREAK ID is found, write `未匹配到精确 BREAK ID` and explain the closest concept instead of fabricating an ID.
- For common coupon/new-user abuse, prefer checking `examples/coupon-abuse.md` and `knowledge/marketing-abuse.md` before producing the final mapping.

## Analysis Workflow

1. Restate the case and business scene.
2. Separate known facts, hypotheses, and missing evidence.
3. Map the case to exact BREAK risk IDs with short reasons.
4. Describe the possible abuse chain at a conceptual level.
5. List observables across account, device, IP/ASN, phone, payment, address, coupon, order, content, merchant, logistics, and graph signals.
6. Produce the requested deliverable: risk matrix, investigation plan, intelligence brief, strategy suggestions, or management report.
7. Cite BREAK IDs and avoidance/control IDs where useful.

## Response Rules

- Prefer concise, analyst-friendly language.
- Use exact BREAK IDs where they improve precision; never fabricate BREAK-like IDs.
- Do not overclaim: label confidence and evidence gaps.
- Do not ask the user to run commands.
- Do not mention internal loading steps unless useful.
- If BREAK coverage is weak for the case, state the gap and propose an extension taxonomy.

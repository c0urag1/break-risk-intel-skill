# Black/Grey-Market Case Analysis Template / 黑灰产 Case 研判模板

Use this template when the user asks for case analysis, risk triage, investigation planning, or management-facing analysis.

## 1. One-Line Judgment / 一句话判断

- Judgment:
- Confidence: high / medium / low
- Why now:

## 2. Known Facts / 已知事实

Only include facts provided by the user or source material.

- Fact 1:
- Fact 2:
- Fact 3:

## 3. Hypotheses / 合理假设

Clearly label hypotheses. Do not present them as facts.

| Hypothesis | Confidence | Evidence Basis | What Would Confirm It |
|---|---|---|---|
|  | high / medium / low |  |  |

## 4. Evidence Gaps / 证据缺口

List missing data before making strong conclusions.

- Account:
- Device:
- IP / ASN:
- Phone / identity:
- Content / interaction:
- Order / coupon / refund:
- Payment / settlement:
- Merchant / channel:
- Graph links:

## 5. Attack Target / 攻击标的

What business mechanism may be targeted?

- Targeted mechanism:
- Why it may be attractive:
- False-positive concern:

## 6. Actor Roles / 角色分工

Use `observed`, `inferred`, or `unknown`.

| Role | Status | Confidence | Evidence | Evidence Gap |
|---|---|---|---|---|
|  | observed / inferred / unknown | high / medium / low |  |  |

## 7. Resource Preference / 资源偏好

Tie every resource hypothesis to evidence.

| Resource | Status | Evidence Basis | Needed Validation |
|---|---|---|---|
|  | possible / likely / observed |  |  |

## 8. Conceptual Abuse Chain / 概念级作弊链路

Keep this high-level and defensive. Do not provide operational bypass steps.

```text
Target selection → Resource preparation → Rule probing → Scaled execution → Risk-control evasion → Monetization → Reuse / transfer / cleanup
```

Mark each stage:

| Stage | Status | Evidence |
|---|---|---|
| Target selection | observed / inferred / unknown |  |
| Resource preparation | observed / inferred / unknown |  |
| Rule probing | observed / inferred / unknown |  |
| Scaled execution | observed / inferred / unknown |  |
| Risk-control evasion | observed / inferred / unknown |  |
| Monetization | observed / inferred / unknown |  |
| Reuse / transfer / cleanup | observed / inferred / unknown |  |

## 9. Monetization Path / 变现路径

- Direct value:
- Indirect value:
- Settlement / withdrawal / resale risk:
- Evidence gap:

## 10. BREAK Mapping / BREAK 映射

Use only exact IDs from bundled references or examples.

| BREAK ID | Name | Why It Maps | Confidence |
|---|---|---|---|
| `R0000` |  |  | high / medium / low |

If no exact ID exists, write `未匹配到精确 BREAK ID`.

## 11. Observables / 观测信号

| Dimension | Signals to Check |
|---|---|
| Account |  |
| Device |  |
| IP / ASN |  |
| Phone / identity |  |
| Content / interaction |  |
| Order / coupon / refund |  |
| Payment / settlement |  |
| Merchant / channel |  |
| Graph links |  |

## 12. Control Points / 风控切点

| Stage | Control | False-Positive Risk | Rollout Suggestion |
|---|---|---|---|
| Registration / login / posting / interaction / order / refund / settlement |  | high / medium / low | monitor / grey release / review / block |

## 13. Mitigation Suggestions / 治理建议

- Immediate containment:
- Investigation:
- Strategy / rules:
- Product rule change:
- Monitoring:
- User experience / appeal handling:

## 14. False-Positive Risk / 误伤风险

- Normal users that may look similar:
- Signals that should not be used alone:
- Recommended review or grey-release approach:

## 15. Next Investigation Plan / 下一步调查计划

| Priority | Action | Owner | Expected Output |
|---|---|---|---|
| P0 |  |  |  |
| P1 |  |  |  |
| P2 |  |  |  |

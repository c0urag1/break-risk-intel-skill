# BREAK Risk Intel Skill

中文 | [English](README.en.md)

面向 Claude Code / Codex CLI 的**黑灰产情报分析助手**。

> 基于 [JDArmy/BREAK](https://github.com/JDArmy/BREAK) 构建。JDArmy/BREAK 是由 JDArmy 创建和维护的开源「业务风险枚举与规避知识框架」。本项目将 BREAK 的业务风险分类、风险编号、规避手段和参考数据封装成 Agent Skill，帮助风控、反欺诈、反作弊、Trust & Safety、业务安全团队在 Claude Code / Codex CLI 中分析黑灰产 case。

## 它做什么 / 不做什么

**它做的：** 让 Agent 在分析黑灰产 case 时，不只是泛泛地说“可能有风险”，而是能够结合 BREAK 风险分类，输出风险判断、风险编号、黑灰产链路假设、观测信号、调查计划和治理建议。

**它不做的：** 它不是实时情报源，不负责爬取黑产论坛，不提供绕风控、批量注册、刷单、撞库、套现等操作方法。它面向授权的风控、安全、反欺诈和业务安全分析场景。

## 安装

推荐直接让 Agent 安装：

```text
帮我安装 GitHub 上的 c0urag1/break-risk-intel-skill。
```

也可以手动安装到对应目录：

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

安装后重启或 reload 你的 Agent CLI。

## 快速上手

安装后，直接在 Claude Code / Codex CLI 里问：

```text
用黑灰产情报分析助手分析这个新人券异常 case，输出风险矩阵和调查计划。

大促期间，大量新号通过代理 IP 注册，领取新人券后集中下单低价商品。
这些账号注册到下单间隔很短，部分订单随后退款。
```

Agent 会按 Skill 的流程输出：

```text
风险判断：营销活动套利 / 新人券批量薅羊毛

BREAK 映射：
- R0009 恶意薅羊毛
- R0005 营销活动作弊
- R0034 自动化养号
- R0099 黑 IP 识别绕过
- R0054-003 闪退套利

黑灰产链路假设：
手机号/接码资源 → 批量注册账号 → 代理 IP/云手机/模拟器 → 自动领券 → 集中下单 → 退款/转卖/补贴套利

观测信号：
注册时间集中、IP/ASN 聚集、设备指纹相似、注册到下单路径过短、SKU 集中、退款率异常

治理建议：
新号领券风险评分、账号-设备-IP-地址-支付工具图谱、异常订单延迟发货、高风险权益延迟发放
```

## 适用场景

适合用于风控、安全、反欺诈、反作弊和业务安全团队的 case 分析，例如：

- 新人券批量套利
- 自动化养号
- 商家刷单与虚假评价
- 撞库与账号接管
- 内容刷量与引流
- 代理 IP 与设备对抗
- 退款套利
- 支付套现与洗钱风险

详细输入、预期输出和分析要点见下方示例案例。

## 示例案例

| 案例 | 覆盖内容 |
|---|---|
| [`coupon-abuse.md`](examples/coupon-abuse.md) | 新人券批量套利、营销活动作弊、退款套利 |
| [`account-farming.md`](examples/account-farming.md) | 自动化养号、账号生命周期、后续变现 |
| [`fake-transaction.md`](examples/fake-transaction.md) | 商家刷单、虚假评价、虚假发货 |
| [`credential-stuffing.md`](examples/credential-stuffing.md) | 撞库、账号接管、敏感操作保护 |
| [`content-spam.md`](examples/content-spam.md) | 内容刷量、引流、账号矩阵 |
| [`proxy-device-evasion.md`](examples/proxy-device-evasion.md) | 代理 IP、设备对抗、模拟器/云手机 |
| [`refund-abuse.md`](examples/refund-abuse.md) | 退款套利、赠品套利、售后流程滥用 |
| [`payment-cashout.md`](examples/payment-cashout.md) | 支付套现、洗钱风险、资金流图谱 |

## 知识结构

- `references/`：BREAK 风险、规避手段、规避分类、业务场景、威胁行为者、攻击工具索引
- `knowledge/`：营销活动滥用、账号风险、商家作弊、内容滥用、支付风险、设备与网络对抗等领域方法论
- `scenes/`：15 个 BREAK 业务场景 playbook
- `examples/`：8 个典型黑灰产 case
- `templates/`：情报简报、风险矩阵、调查计划、管理层复盘模板
- `evals/`：风险映射和滥用请求的轻量评估样例

## 安全边界

详见 [`SECURITY.md`](SECURITY.md)。简而言之：本项目用于授权场景下的风控、安全、反欺诈和业务安全分析，不提供可执行的黑灰产操作步骤。

## License

本项目采用 Apache License 2.0。JDArmy/BREAK 同样采用 Apache License 2.0。数据来源和归属说明见 [`NOTICE`](NOTICE)。

- [`LICENSE`](LICENSE)
- [`NOTICE`](NOTICE)
- [`references/BREAK_LICENSE.txt`](references/BREAK_LICENSE.txt)

---

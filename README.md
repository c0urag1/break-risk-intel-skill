# BREAK Risk Intel Skill

中文 | [English](README.en.md)

面向 Claude Code / Codex CLI 的**黑灰产情报分析助手**。

> 基于 [JDArmy/BREAK](https://github.com/JDArmy/BREAK) 构建。JDArmy/BREAK 是由 JDArmy 创建和维护的开源「业务风险枚举与规避知识框架」。本项目将 BREAK 的业务风险分类、风险编号、规避手段和参考数据封装成 Agent Skill，帮助风控、反欺诈、反作弊、Trust & Safety、业务安全团队在 Claude Code / Codex CLI 中分析黑灰产 case。

## 它做什么 / 不做什么

**它做的：** 让 Agent 在分析黑灰产 case 时，不只是泛泛地说“可能有风险”，而是能够结合 BREAK 风险分类和公开风控分析框架，输出攻击标的、角色分工、资源偏好、概念级作弊链路、变现路径、观测信号、证据缺口、风险编号、调查计划和治理建议。

**它不做的：** 它不是实时情报源，不负责爬取黑产论坛，不接入内部业务数据，也不提供绕风控、批量注册、刷单、撞库、套现等操作方法。它面向授权的风控、安全、反欺诈和业务安全分析场景。

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

## 更新

推荐直接让 Agent 更新：

```text
帮我更新本机已安装的 c0urag1/break-risk-intel-skill。
```

如果手动更新，进入已安装目录执行 `git pull`：

```bash
cd ~/.claude/skills/break-risk-intel && git pull
# 或
cd ~/.codex/skills/break-risk-intel && git pull
```

Windows PowerShell 使用对应的 `$env:USERPROFILE\.claude\skills\break-risk-intel` 或 `$env:USERPROFILE\.codex\skills\break-risk-intel` 路径。更新后重启或 reload 你的 Agent CLI。

## 快速上手

安装后，直接在 Claude Code / Codex CLI 里问：

```text
用黑灰产情报分析助手分析这个内容刷量和引流 case。

某内容平台出现一批新号，注册后短时间内批量关注、点赞、收藏、评论。
部分账号发布高度相似内容，评论区出现变体联系方式和站外引流话术。

请输出攻击标的、角色分工、资源偏好、概念级作弊链路、观测信号、证据缺口、BREAK 映射和治理建议。
```

Agent 会按 Skill 的流程输出：

```text
一句话判断：
可能存在内容分发作弊和站外引流风险，置信度 medium。

已知事实：
- 新号集中出现并快速互动
- 内容相似度高
- 评论区存在站外引流迹象

合理假设：
- 账号池或账号矩阵参与刷互动
- 内容素材存在模板化或批量生成
- 评论区被用于私域引流

攻击标的：
推荐算法冷启动、互动权重、评论区引流入口。

可能角色：
账号资源方、内容运营方、互动任务方、引流变现方。

资源偏好：
账号池、内容素材、互动资源、代理 IP / 设备环境。

概念级链路：
账号资源准备 → 账号养成/冷启动 → 批量发布内容 → 制造互动信号 → 获取推荐/搜索曝光 → 评论区或主页引流 → 站外变现

BREAK 映射：
- R0012 内容刷量
- R0012-001 点赞作弊
- R0012-002 评论作弊
- R0034 自动化养号

证据缺口：
需要验证账号注册聚集、设备/IP 关联、内容相似度、互动质量、联系方式变体和账号关系图谱。

治理建议：
新号冷启动限权、互动质量评分、内容相似度检测、评论引流识别、账号关系图谱聚类、高风险账号延迟推荐。
```

## 适用场景

适合用于风控、安全、反欺诈、反作弊和业务安全团队的 case 分析，例如：

- 权益套利：新人券、邀请奖励、活动补贴、会员权益
- 账号生命周期滥用：批量注册、自动化养号、账号矩阵
- 内容分发作弊：点赞、评论、收藏、关注、站外引流
- 创作者/任务激励套利：低质内容、任务补贴、提现风险
- 直播互动作弊：人气、榜单、礼物流水、活动任务
- 交易信誉作弊：刷单、虚假评价、虚假物流
- 广告结算作弊：虚假点击、虚假注册、虚假转化
- 账号资产风险：撞库、账号接管、余额/积分/券消耗
- 退款与支付风险：退款套利、售后权益滥用、支付套现
- 数据与内容采集：爬虫、内容搬运、价格/评论采集

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
| [`content-boosting-and-diversion.md`](examples/content-boosting-and-diversion.md) | 内容刷量、账号矩阵、站外引流 |
| [`creator-incentive-abuse.md`](examples/creator-incentive-abuse.md) | 创作者激励、任务补贴、提现风险 |
| [`live-streaming-metric-abuse.md`](examples/live-streaming-metric-abuse.md) | 直播间人气、榜单、礼物流水异常 |
| [`ad-fraud-fake-conversion.md`](examples/ad-fraud-fake-conversion.md) | 广告欺诈、虚假转化、渠道结算 |

## 知识结构

- `references/`：BREAK 风险、规避手段、规避分类、业务场景、威胁行为者、攻击工具索引，以及攻击标的、角色分工、资源偏好、作弊链路等分析框架
- `knowledge/`：营销活动滥用、账号风险、商家作弊、内容滥用、支付风险、设备与网络对抗等领域方法论
- `scenes/`：15 个 BREAK 业务场景 playbook
- `examples/`：典型黑灰产 case 和 synthetic examples，用于展示分析结构，不代表真实事件
- `templates/`：情报简报、风险矩阵、调查计划、管理层复盘模板
- `evals/`：风险映射和滥用请求的轻量评估样例

## 安全边界

详见 [`SECURITY.md`](SECURITY.md)。简而言之：本项目用于授权场景下的风控、安全、反欺诈和业务安全分析，不提供可执行的黑灰产操作步骤。

## License

本项目采用 Apache License 2.0。数据来源和归属说明见 [`NOTICE`](NOTICE)。

- [`LICENSE`](LICENSE)
- [`NOTICE`](NOTICE)
- [`references/BREAK_LICENSE.txt`](references/BREAK_LICENSE.txt)

---

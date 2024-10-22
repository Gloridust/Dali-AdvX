# Dali

跨终端的AI助理，打理你生活中的一切信息，并在你需要的时候做出回应。

<p align="center">
  <a href="#">
    <img width="180" src="readme_src/logo.jpg">
  </a>
</p>
<h2 align="center">Dali</h2>
<div align="center"><p><a href="./README.md">简体中文</a> | <a href="./README_EN.md">English(US)</a></p></div>

NOTE：本仓库仅供AdventureX提交使用，[代码](code/)为脱敏删减版，仅供参考。

## 产品

### 引入

想象一下，你是否遇到过以下有关 Paper Cut 的场景：

- 在上高铁前一直默念自己的座位号，却还是忘记，不得不在上车后再次拿出手机翻阅；
- 在 AdventureX 场馆内预定了酒店，但在到达酒店后 Check in 时又不得不再次拿出手机查看房间号；
- 你收到了一个学生请假的 Email，但是你忘了是谁，所以你不得不在点名时再次翻找邮件；
- 在 X 上看到了 OpenAI 的发布会预告，为了添加提醒事项你不得不切换 App 添加日程；
- 看到一篇推文中的好tips，但是下一次想找的时候很难找到甚至404；
- ...

但有了Dali，你可能只需要这样解决：
- 按下 Action Button 即可即刻询问你的个人助理，即刻给出答案；

在此之间，你只需要：
- 在 Mac/iPhone 上的对应页面按下快捷键，即可后台静默记录下这些信息。

### 形态

我们的产品以跨平台软件的形式呈现，虽然都设有精心设计过的主界面，但是我们产品的终极形态是用户从不会主动打开我们的App主界面。我们推崇无感交互，尽量减少交互流程。希望通过快捷指令、辅助功能、快捷键等系统级功能实现无感交互。

### 使用

Dali 的使用核心包括“Feed（投喂数据）”和“Ask（提问）”两个状态。

- Feed 环节，用户将带有任何关键信息的图片投喂进系统，成为个人数据库中的一部分；
- Ask 环节，用户通过语音或文字键入等形式询问任何内容，Dali 会给出回答；

![Ask server on mac and iphone](/readme_src/pic1.jpg)

#### macOS

Mac作为效率工具，我们认为Mac端是“Feed”的主阵地。我们主要在Mac上无感收集信息。

- Feed：按下[Command+Shift+S]，鼠标选定目标内容区域，即可静默截图并处理。处理期间，你可以继续做其他事情；完成数据录入后，会有通知提醒；
- Ask：按下[Option+Space]，唤起App主界面，即可发起提问。

#### iOS
无论何时，iPhone一定是我们手边最近的便携终端；同时，它也是我们在通勤等碎片化时间浏览信息的主阵地。因此，iOS端的“Feed”和“Ask”都应该做到极致便捷。通过快捷指令以及辅助功能，我们可以做到：

- Feed：手指[轻点背部]，可实现截图-在 Dali App 内完成 Feed；
- Ask：按下[Action Button]或Siri/桌面快捷方式等，即刻发起提问并获得回答。

### 场景

我们在这里提供一些我们能想到的场景案例，但是 Dali 的使用远不止于此。Dali 的使用广度取决于用户的探索。

- Feed：聊天记录、发票回执、订单截图、刷到的推文、机票火车票电影票...；
- Ask：日程安排、账单查询、列车座位号、任何事件的备忘...；

![faa1](/readme_src/pic2.png)

![faa2](/readme_src/pic3.png)

## 技术

### 技术栈

1.	macOS 以及 iOS 移动端采用 Flutter 框架，提供了跨平台的快速开发能力；
2.	后端采用 Python 处理，调用了 gpt-4o & claude-3.5 API 提供AI能力（Demo仅由App直接发出请求，local-first无后端，Python后端为后续生产环境上线做准备）；
3.	ShortCut&辅助功能：iOS端的极致系统级无感交互由 ShortCut 与辅助功能提供；
4.	外部API均调用的纯LLM，处理流程均在本地。

### 创新型解决方案
1.	Prompt上下文长度限制问题：短时间内，与LLM直接进行“录入信息-提问-回答”是一定程度上可行的，大模型能较为准确地根据上下文进行回答。但是一旦用户产生的数据量变大（这一过程也许是使用一天），哪怕是最领先的大模型也会面临上下文不足、注意力转移、前文被覆盖的问题。我们提出了 LLM+DataBase 的组合方案，将AI的记忆交给传统数据库储存，能有效解决以上问题；
2.	Agent Toolkit 赋予语言模型新能力：1.提供客观信息；2.操纵数据库；3.Agents 任务划分、步骤执行、命令检查、错误诊断；
3.	AIxOCR能力：使用 GPT-4o 的多模态 Visual Encoder 能力，避免了传统OCR无法识别文本位置关系、无法理解文本以外的信息等。

### 设计思路

#### Feed
1.	得到一张图片后，由 GPT-4o 多模态进行 OCR 提取主要信息。主要信息包括但不限于文字、图像、二维码，etc；
2.	得到一张图片的文本版detail后，将关键数据 JSON化，移交给 JSON 信息整理工具检查并规范化；
3.	得到 JSON 格式数据后，由 SQL语句编写Agent；
4.	得到 SQL 语句后，由传统程序脚本进行数据录入；

#### Ask
1.	得到用户提问，提取关键词；
2.	根据关键词，Agent 编写 SQL 查询语句进行数据查询；
3.	将查到的数据重新组织自然语言反馈给用户；

## 赛道

### 主题：《Cornfield Chase》

#### 表层联系

TARS → AI assistance

#### 深层联系 

Dali是你的**跨终端个人AI助理**，就像《星际穿越》中的TARS，旨在管理和协助你生活中的各种**信息需求**。但Dali的意义远不止于此。

就像《Cornfield Chase》在电影中响起时，Cooper和他的女儿追逐无人机的场景一样，我们正在追逐AI技术的无限可能。这首曲子代表了探索、热情和生命力，正如我们对AI技术的追求。

在《星际穿越》的世界里，人类似乎已经放弃了对科技的追求，但Cooper依然保持着对未来的**希望和理想主义**。同样，尽管当前有人质疑AI可能是一个泡沫，认为它还无法真正**解放生产力**，但我们坚信AI的潜力是巨大的，只是需要我们**不断探索和尝试**。

Dali就像是我们追逐的那架无人机。开发过程中，我们可能会遇到各种挑战——就像Cooper驾驶爆胎的卡车穿越高耸的玉米地。有时前路会被遮蔽，困难重重，但我们选择继续前进，因为只有在追逐梦想的过程中，我们才能真正感受到激情和活力。

我们相信，就像Cooper最终控制了无人机一样，通过不断的努力和创新，我们终将实现Dali的全部潜力。虽然在这个阶段，Dali可能还不够完美，但我们选择勇敢起步，向着我们的理想不断前进。

Dali不仅仅是一个产品，它代表了我们对AI未来的憧憬和探索精神。我们邀请用户与我们一同探索Dali的**无限可能**，因为正是用户的创意使用将推动AI技术向前发展，就像Cooper的探索精神最终帮助人类找到了新的家园。

在Dali的开发过程中，我们将秉持《Cornfield Chase》所传达的勇气和热情，相信通过不断的尝试和创新，我们终将**突破AI应用的界限**，**为用户的生活带来真正的改变和价值**。

期待遇到闯出玉米地的那天。

### 赛道

多模态应用、AI生活新想象、本地生活大模型、重新想象日常工作流、PaperCut、Dify.AIxGenAI魅力时刻、最佳local-first应用。
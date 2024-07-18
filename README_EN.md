# Dali

A cross-platform AI assistant that manages all the information in your life and responds when you need it.

<p align="center">
  <a href="#">
    <img width="180" src="readme_src/logo.jpg">
  </a>
</p>
<h2 align="center">Dali</h2>
<div align="center"><p><a href="./README.md">简体中文</a> | <a href="./README_EN.md">English(US)</a></p></div>

NOTE: This repository is for AdventureX submission only. The [code](code/) is a redacted version for reference only.

## Product

### Introduction

Imagine if you've encountered the following scenarios related to Paper Cut:

- Constantly repeating your seat number before boarding a high-speed train, yet still forgetting it and having to check your phone again after boarding.
- Booking a hotel at the AdventureX venue, but having to take out your phone again to check the room number when checking in.
- Receiving an email about a student's leave request, but forgetting who it was and having to search for the email again during roll call.
- Seeing an OpenAI conference announcement on X and having to switch apps to add a calendar reminder.
- Finding great tips in a tweet, but struggling to find it again later or encountering a 404 error.
- ...

With Dali, you might only need to do this:
- Press the Action Button to instantly ask your personal assistant and get an answer immediately.

Before that, you only need to:
- Press a hotkey on the corresponding page on Mac/iPhone to silently record this information in the background.

### Form

Our product is presented as cross-platform software. Although they all have carefully designed main interfaces, the ultimate form of our product is that users will never actively open our App's main interface. We advocate for seamless interaction, minimizing interaction processes as much as possible. We aim to achieve seamless interaction through system-level functions such as shortcuts, accessibility features, and hotkeys.

### Usage

The core use of Dali includes two states: "Feed" (inputting data) and "Ask" (querying).

- In the Feed phase, users input images containing any key information into the system, becoming part of their personal database.
- In the Ask phase, users inquire about any content through voice or text input, and Dali provides answers.

![Ask server on mac and iphone](/readme_src/pic1.jpg)

#### macOS

As an efficiency tool, we believe Mac is the main battlefield for "Feed". We mainly collect information seamlessly on Mac.

- Feed: Press [Command+Shift+S], select the target content area with the mouse, and it will silently screenshot and process. You can continue doing other things during processing; a notification will remind you when data entry is complete.
- Ask: Press [Option+Space] to bring up the App's main interface and initiate a query.

#### iOS
iPhone is always the most accessible portable terminal at hand; it's also our main platform for browsing information during commutes and other fragmented time. Therefore, both "Feed" and "Ask" on iOS should be extremely convenient. Through shortcuts and accessibility features, we can achieve:

- Feed: [Lightly tap the back] to take a screenshot and complete the Feed in the Dali App.
- Ask: Press the [Action Button] or use Siri/desktop shortcuts to instantly initiate a query and get an answer.

### Scenarios

We provide some scenario examples we can think of here, but the use of Dali is far beyond this. The breadth of Dali's use depends on user exploration.

- Feed: Chat records, invoice receipts, order screenshots, tweets you come across, flight/train/movie tickets...
- Ask: Schedule arrangements, bill inquiries, train seat numbers, memos for any events...

![faa1](/readme_src/pic2.png)

![faa2](/readme_src/pic3.png)

## Technology

### Tech Stack

1. macOS and iOS mobile ends use the Flutter framework, providing cross-platform rapid development capabilities.
2. The backend uses Python processing, calling gpt-4o & claude-3.5 API to provide AI capabilities (Demo only sends requests directly from the App, local-first without backend, Python backend is prepared for subsequent production environment launch).
3. ShortCut & Accessibility Features: iOS's ultimate system-level seamless interaction is provided by ShortCut and accessibility features.
4. External APIs all call pure LLM, with processing flows all local.

### Innovative Solutions
1. Prompt context length limitation problem: In the short term, "information input - question - answer" directly with LLM is feasible to some extent, with large models able to answer relatively accurately based on context. However, once the user's data volume becomes large (this process may take a day of use), even the most advanced large models will face issues of insufficient context, attention shift, and overwriting of previous content. We propose a combined LLM+DataBase solution, storing AI memory in traditional databases, which can effectively solve the above problems.
2. Agent Toolkit empowers language models with new capabilities: 1. Provide objective information; 2. Manipulate databases; 3. Agents task division, step execution, command checking, error diagnosis.
3. AIxOCR capability: Using GPT-4o's multimodal Visual Encoder capability avoids traditional OCR's inability to recognize text position relationships and understand information beyond text.

### Design Thinking

#### Feed
1. After obtaining an image, GPT-4o multimodal performs OCR to extract main information. Main information includes but is not limited to text, images, QR codes, etc.
2. After obtaining the text version details of an image, key data is JSONized and handed over to the JSON information organization tool for checking and standardization.
3. After obtaining JSON format data, it's passed to the SQL statement writing Agent.
4. After obtaining the SQL statement, traditional program scripts perform data entry.

#### Ask
1. Obtain user questions and extract keywords.
2. Based on keywords, the Agent writes SQL query statements for data retrieval.
3. Reorganize the retrieved data into natural language feedback to the user.
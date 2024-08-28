# 安装 Installation
### 已为Github用户开测试组， 可通过testflight安装：
### Just opened a testing group for github users：
### https://testflight.apple.com/join/1JDEKywe
### 如果觉得这个fork好用， 请记得点星。
### Give it a star if you find this version helpful.

 <br>

# 代码 Coding
### 代码提交在`noWaterMark`分支。
### For latest coding commits go to branch `noWaterMark`.

 <br>

# 概述 Overview

#### 这是首个实现iOS多点触控透传的Fork. 目前已经严重偏离原版moonlight-iOS (具体看release页面)。 我已经对一项项拆分修改过的功能提交PR， 再合并到官方代码仓库没有兴趣了  <br>
#### This fork is the first one to implement native multi-touch. It has developed with `too many deviations` from the original version (see the release page for details). I am not interested in splitting the modified features to create pull request to the official repository one by one.

 <br>

# 注意事项 Notice
### 发布基于本Fork的修改版本，请务必申明来源。偷摸合并代码、功能性抄袭将受本人鄙视。 <br>
### Please acknowledge the source when releasing modified versions based on this fork. Silent code merging and functional plagiarism will be met with disdain.<br>

<br>

# 开发者B站号. Developer on Bilibili

如果你有在用Bilibili， 请关注`True砖家`，了解该fork的最新消息。 <br>
If you are on Bilibili, subscribe `True砖家` to get the latest news of this fork: <br>
https://b23.tv/A0F9v7n

 <br>

# 添加键盘命令 Add Keyboard Command
![image](https://github.com/user-attachments/assets/0ea0f91c-574d-4408-9c92-d5a3e229807a)
<br>Read this instruction:
[How.to.add.keyboard.command.for.moonlight-iOS](https://b23.tv/fgdRJk8)

<br>

# 特别感谢 Special Thanks to:
https://github.com/King0fSpace/moonlight-ios-CustomOSC
<br>On screen control customization of my version originated form this repo (with much more improvements)

<br>

# 特别纪念 Special Note
## 为防范抄袭狗Up主 "阿西西的日常" , 该仓库曾在 2024年7月期间暂停公开提交代码。<br>
## To prevent plagiarism by copycat "阿西西的日常 (Axixi's Daily Life)", this repository temporarily suspended public code commits during July 2024.

【阿西西: 我撒谎、偷窃、白嫖，但我是大佬Up主】 
【 Axixi: I lie, I steal, I cheat, but I'm a big shot uploader 】
https://b23.tv/9noIx3i

【"阿西西的日常" : 游戏串流界小偷、假大佬、毒瘤up主】 
【 "Axixi's Daily Life": A thief in the game streaming community, a pretender, and a toxic uploader】 
https://b23.tv/Z0ChSiD<br>
 <br> 

<br><br><br><br><br>

[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/kwv8vpwr457lqn25/branch/master?svg=true)](https://ci.appveyor.com/project/cgutman/moonlight-ios/branch/master)

[Moonlight for iOS/tvOS](https://moonlight-stream.org) is an open source client for [Sunshine](https://github.com/LizardByte/Sunshine) and NVIDIA GameStream. Moonlight for iOS/tvOS allows you to stream your full collection of games and apps from your powerful desktop computer to your iOS device or Apple TV.

Moonlight also has a [PC client](https://github.com/moonlight-stream/moonlight-qt) and [Android client](https://github.com/moonlight-stream/moonlight-android).

Check out [the Moonlight wiki](https://github.com/moonlight-stream/moonlight-docs/wiki) for more detailed project information, setup guide, or troubleshooting steps.

[![Moonlight for iOS and tvOS](https://moonlight-stream.org/images/App_Store_Badge_135x40.svg)](https://apps.apple.com/us/app/moonlight-game-streaming/id1000551566)

## Building
* Install Xcode from the [App Store page](https://apps.apple.com/us/app/xcode/id497799835)
* Run `git clone --recursive https://github.com/moonlight-stream/moonlight-ios.git`
  *  If you've already clone the repo without `--recursive`, run `git submodule update --init --recursive`
* Open Moonlight.xcodeproj in Xcode
* To run on a real device, you will need to locally modify the signing options:
    * Click on "Moonlight" at the top of the left sidebar
    * Click on the "Signing & Capabilities" tab
    * Under "Targets", select "Moonlight" (for iOS/iPadOS) or "Moonlight TV" (for tvOS)
    * In the "Team" dropdown, select your name. If your name doesn't appear, you may need to sign into Xcode with your Apple account.
    * Change the "Bundle Identifier" to something different. You can add your name or some random letters to make it unique.
    * Now you can select your Apple device in the top bar as a target and click the Play button to run.

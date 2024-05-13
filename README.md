# Moonlight-ZWM

这是首个公开的 iOS 多点触控透传fork。原版本基于 moonlight-ios 9.0.0 ，2024.2.4 提交的 moonlight-common-c 子模块，以及 Bilibili Up主 阿西西的日常 的早期修改。
已于2024.04.30合并官方仓库9.0.2的代码修改， 并更新moonlight-common-c, 同时修改了触发退出会话的手势。 后续将视情况更新。

2023年12月， 阿西西的日常首先在iOS Moonlight上实现了多点触控，当时我在他的QQ群里承担了大部分iOS版的测试。

2024年4月，我尝试解决了一个奇怪的多点触控bug, 第一次可以正常使用多点触控。

安装 release 中的 ipa 文件，需要先对文件进行自签名，或者先越狱、安装巨魔商店。

启用多点触控，只需在“设置 ->触摸模式”中选择“触摸屏”即可。

查看代码，请转到分支“moonlight-iOS-ZWM-updated”。


This is the first fork published that actually works properly in native multi-point passthrough mode on iOS. It was originally based on moonlight-ios version 9.0.0 and early modification by Bilibili uploader 阿西西的日常. On 2024.04.30, I merged my fork with 9.0.2 modifications from official repo, updated moonlight-common-c to the latest commit, also defined a custom gesture for exiting remote session. To be updated in the future if necessary.

In Dec. 2023 阿西西的日常 was the first developer to implement native multi-touch passthrough on iOS while I undertook most part of testing for the modified iOS moonlight in his QQ group. 

In Apr. 2024, I managed to fix a weird native-touch bug making it able to work properly in native-touch passthrough for the first time.

To install the ipa file in release, you need to find a way to sideload the app on iOS, or try to jaibreak or install trollstore.

To Enable native-touch passthrough, just select "Touchscreen" in "Settings -> Touch Mode".

To check the code go to branch "moonlight-iOS-ZWM-updated".


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

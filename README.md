# TapTic
Use iOS _(>=10.0)_ TapTic API easily with Swift.

![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)
![CocoaPods](https://cocoapod-badges.herokuapp.com/v/TapTic/badge.png)

## Usage
1. First, import `TapTic`

  ```swift
  import TapTic
  ```

1. Make TapTic with type.

  ```swift
  TapTic.make(.impact(.heavy))
  ```
It is simple, right?

## TapTic Feedback types
There's three feedback types in iOS.
* **Notification**: _([UINotificationFeedbackType](https://developer.apple.com/reference/uikit/uinotificationfeedbacktype))_
  * success
  * warning
  * error
* **Impact**: _([UIImpactFeedbackStyle](https://developer.apple.com/reference/uikit/uiimpactfeedbackstyle))_
  * light
  * medium
  * heavy
* **Selection**

## Button with TapTic
This project includes `TapTicButton`, subclass of `UIButton`.

* Initialize button with `feedbackType`

  ```swift
  let button = TapTicButton(feedbackType: .selection)
  ```
  
* Or, set `feedbackType` after initialize the button.

  ```swift
  let button = TapTicButton()
  button.feedbackType = .selection
  ```

## Installation
* Install with [Cocoapods](http://cocoapods.org)

  ```ruby
  pod 'TapTic', '~> 1.0'
  ```

## Requirements
* iOS >= 10.0
  * But, feel free to use `TapTic` and `TapTicButton` under iOS 10.0. The codes to handle exceptions under iOS10 are included.

## Demo
Run [Demo](Demo) on your iPhone. _(It is so bad that cannot feel TapTic with iOS Simulator)_

## Contribution
I'm a Swift-learner. If some bad codes are included in this project, PLEASE contribute with Pull request.

## Author
**TapTic** is written by [Taejun Kim (KimDarren)](https://github.com/KimDarren).

## Licenses
**TapTic** is under MIT license. See the [LICENSE](LICENSE) for more info.

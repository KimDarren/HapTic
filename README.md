# HapTic
Use iOS _(>=10.0)_ HapTic API easily with Swift.

![Swift](https://img.shields.io/badge/Swift-3.0-orange.svg)
![CocoaPods](https://cocoapod-badges.herokuapp.com/v/HapTic/badge.png)

## Usage
1. First, import `HapTic`

  ```swift
  import HapTic
  ```

1. Make HapTic with type.

  ```swift
  HapTic.make(.impact(.heavy))
  ```
It is simple, right?

## HapTic Feedback types
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

## Button with HapTic
This project includes `HapTicButton`, subclass of `UIButton`.

* Initialize button with `feedbackType`

  ```swift
  let button = HapTicButton(feedbackType: .selection)
  ```
  
* Or, set `feedbackType` after initialize the button.

  ```swift
  let button = HapTicButton()
  button.feedbackType = .selection
  ```

## Installation
* Install with [Cocoapods](http://cocoapods.org)

  ```ruby
  pod 'HapTic', '~> 1.0'
  ```

## Requirements
* iOS >= 10.0
  * But, feel free to use `HapTic` and `HapTicButton` under iOS 10.0. The codes to handle exceptions under iOS10 are included.

## Demo
Run [Demo](Demo) on your iPhone. _(It is so bad that cannot feel HapTic with iOS Simulator)_

## Contribution
I'm a Swift-learner. If some bad codes are included in this project, PLEASE contribute with Pull request.

## Author
**HapTic** is written by [Taejun Kim (KimDarren)](https://github.com/KimDarren) with [Jinwoo Lee](https://github.com/jinwoo1996).

## Licenses
**HapTic** is under MIT license. See the [LICENSE](LICENSE) for more info.

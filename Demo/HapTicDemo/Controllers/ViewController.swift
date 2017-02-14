// MIT License
//
// Copyright (c) 2017 KIM TAE JUN
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit
import Then

class ViewController: UIViewController {

  let buttonWidth = UIScreen.main.bounds.size.width - 40
  lazy var sampleButton: HapTicButton = HapTicButton(feedbackType: .selection).then {
    $0.frame = CGRect(x: 20, y: 60, width: self.buttonWidth, height: 55)
    $0.setTitleColor(UIColor.red, for: .normal)
    $0.titleLabel?.numberOfLines = 0
    $0.contentHorizontalAlignment = .center
    $0.layer.borderWidth = 1
    $0.layer.borderColor = UIColor.lightGray.cgColor
    $0.layer.cornerRadius = 5
  }
  
  lazy var typeButton: HapTicButton = HapTicButton(feedbackType: .impact(.heavy)).then {
    $0.frame = CGRect(x: 20, y: 120, width: self.buttonWidth, height: 55)
    $0.setTitle("Tap to change feedback type", for: .normal)
    $0.setTitleColor(UIColor.blue, for: .normal)
    $0.layer.borderWidth = 1
    $0.layer.borderColor = UIColor.lightGray.cgColor
    $0.layer.cornerRadius = 5
    $0.addTarget(self, action: #selector(ViewController.selectType(_:)), for:.touchUpInside)
  }
  
  var type: Feedback = Feedback(type: .impact(.heavy), title: "Impact (Heavy)") {
    didSet {
      self.sampleButton.feedbackType = self.type.type
      self.typeButton.feedbackType = self.type.type
      self.sampleButton.setTitle("Tap to feel HapTic\n \(self.type.title)", for: .normal)
    }
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.white
    self.view.addSubview(self.sampleButton)
    self.view.addSubview(self.typeButton)
    self.type = Feedback(type: .impact(.heavy), title: "Impact (Heavy)")
  }
  
  // MARK: Action
  
  func selectType(_ sender: HapTicButton) {
    let actionSheet: UIAlertController = UIAlertController(title: "HapTic", message: "Select which feedback you want", preferredStyle: .actionSheet).then {
      
      let feedbacks = Feedback.all()
      for feedback in feedbacks {
        let action = UIAlertAction(title: feedback.title, style: .default, handler: { action in
          self.type = feedback
        })
        $0.addAction(action)
      }
      let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
      $0.addAction(cancelAction)
    }
    
    self.present(actionSheet, animated: true, completion: nil)
  }
  
}


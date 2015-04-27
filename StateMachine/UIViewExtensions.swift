//
//  UIViewExtensions.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
  func slideOffScreen(callback: () -> ()) {
    let finalFrame = CGRectOffset(self.bounds, self.bounds.size.width, 0);

    UIView.transitionWithView(self, duration:0.2,
      options:UIViewAnimationOptions.CurveEaseOut,
      animations:{
        self.frame = finalFrame
      },
      completion:{(BOOL finished) in
        callback()
      }
    )
  }
}

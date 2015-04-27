//
//  ViewControllerState.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerState: State {
//MARK: - Properties
  var vc: UIViewController?
  var parentVC: UIViewController?
  var nibName:String

//MARK: - Initializers
  init(nibName:String) {
    self.nibName = nibName
  }

//MARK: - State protocol methods
  func enter() {
    
    var view:UIView? = vc?.view
    var parentView:UIView? = parentVC?.view

    let bounds = parentView?.bounds
    view?.frame = CGRectOffset(bounds!, bounds!.size.width, 0);

    parentVC?.addChildViewController(vc!)
    vc?.didMoveToParentViewController(parentVC!)

    parentVC?.view.addSubview(view!)

    UIView.transitionWithView(view!, duration:0.2,
      options:UIViewAnimationOptions.CurveEaseOut,
      animations:{
        view?.frame = bounds!
        return
      },
      completion:{(BOOL finished) in
      }
    )
  }

  func exit(completion: () -> ()) {
    vc?.view.slideOffScreen(){
      self.vc?.view.removeFromSuperview()
      self.vc?.removeFromParentViewController()
      completion()
    }
  }

  func handleEvent(event: Event) {
  }
}
//
//  ViewController.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import UIKit

class ViewController: BaseStateViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.stateMachine = ViewControllerStateMachine()
    let initialState = ViewControllerState(
      stateMachine: self.stateMachine!,
      nibName: "BlueStateViewController",
      parentViewController:self)
    
    self.stateMachine!.initialState(initialState)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}


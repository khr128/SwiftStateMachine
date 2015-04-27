//
//  BaseStateViewController.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import UIKit

class BaseStateViewController: UIViewController {
//MARK: - Properties
  var stateMachine:ViewControllerStateMachine

//MARK: - Initializers
  init(stateMachine:ViewControllerStateMachine, nibName:String) {
    self.stateMachine = stateMachine
    super.init(nibName:nibName, bundle:nil)
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

//MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//MARK: - Navigation

    /*

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

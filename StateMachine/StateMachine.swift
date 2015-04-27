//
//  StateMachine.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import Foundation
protocol StateMachine {
  var currentState: State? {get}
  func initialState(state: State)
  func transitionTo(state: State)
}
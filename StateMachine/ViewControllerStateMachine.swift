//
//  ViewControllerStateMachine.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import Foundation
class ViewControllerStateMachine : StateMachine {
  var currentState: State?

  func initialState(state: State) {
    currentState = state;
    currentState?.enter()
  }

  func transitionTo(state: State) {
    currentState?.exit() {
      self.currentState = state;
      self.currentState?.enter()
    }
  }
}
//
//  State.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import Foundation

protocol State {
  func enter()
  func exit(completion: () -> ())
  func handleEvent(event: Event)
}
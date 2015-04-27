//
//  Event.swift
//  StateMachine
//
//  Created by khr on 4/26/15.
//  Copyright (c) 2015 khr. All rights reserved.
//

import Foundation

protocol Event {
  var type:EventTypes {get}
  init(type:EventTypes)
}
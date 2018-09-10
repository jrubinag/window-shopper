//
//  Wage.swift
//  window-shopper
//
//  Created by Jonathan Rubina on 9/10/18.
//  Copyright © 2018 Jonathan Rubina. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage : Double , andPrice price : Double) -> Int {
      return Int(ceil(price / wage ))
    }
}

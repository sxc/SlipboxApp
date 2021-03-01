//
//  NSPredicate+helper.swift
//  SlipboxApp
//
//  Created by Xiaochun Shen on 2021/2/28.
//

import Foundation
import CoreData

extension NSPredicate {
    
    static var all = NSPredicate(format: "TRUEPREDICATE")
    static var none = NSPredicate(format: "FALSEPREDICATE")
}

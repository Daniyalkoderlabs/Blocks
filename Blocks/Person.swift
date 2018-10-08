//
//  Person.swift
//  Blocks
//
//  Created by Daniyal Yousuf on 1/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import Foundation
class Person {
    
    var name: String = "Optional"
    var age : Int = 32
    
    
    func performAdd(    done: @escaping() -> Void   ){
        print("Add ---- " + "\(name)")
        done()
        print("Add ---- " + "\(name)")
    }
    
    func performMultiple (      done: @escaping (Int,String) -> Void    ) {
        print("Multiply ---- " + "\(name)")
        done(07, "Daniyal")
        print("Multiply ---- " + "\(name)")
    }
    
    
}

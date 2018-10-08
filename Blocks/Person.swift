//
//  Person.swift
//  Blocks
//
//  Created by Daniyal Yousuf on 1/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import Foundation

enum Result {
    
    case handlers(AnyObject)
    case empty()
    case error(String)
    
}

struct Handlers {
    typealias personHandler = (Result) -> Void
}


class Person {
    
    var name: String = "Optional"
    var age : Int = 32
    convenience init(name: String, age:Int) {
        self.init()
        self.name = name;
        self.age  = age
    }
    
    func performAdd(done: Handlers.personHandler){
        print("Add ---- " + "\(name)")
        done(Result.empty())
        print("Add ---- " + "\(name)")
    }
    
    func performMultiple(done:Handlers.personHandler) {
        print("Multiply ---- " + "\(name)")
        let person = Person(name: "Daniyal", age: 07)
        done(Result.handlers(person))
        print("Multiply ---- " + "\(name)")
    }
}

extension Dictionary {
    var o : AnyObject {
        return self as AnyObject
    }
}

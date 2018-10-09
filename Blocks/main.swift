//
//  main.swift
//  Blocks
//
//  Created by Daniyal Yousuf on 1/8/18.
//  Copyright © 2018 Daniyal Yousuf. All rights reserved.
//

import Foundation



print("Hello, World!")

var person1 = Person()
person1.performAdd {_ in 
    person1.name = "Nabeel"
}


person1.performMultiple { (AnyObject) in
    
    switch AnyObject {
        
    case .handlers(let obj):
        let castPerson  = obj  as! Person //forcing casting -- end programmer has to do optional binding himself.
        person1.name = castPerson.name
        
    default:
        print("default case")
    }
}

person1.performSubstraction { (result) -> String in
    switch result {
        
    case .handlers (let obj):               //call back send value back
        print(obj)
        return "Ahmed!!!"
        
    default:
        print("this is default")
        return "No Ahmed"
    }
}

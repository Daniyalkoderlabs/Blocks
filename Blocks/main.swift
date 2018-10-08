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
person1.performAdd {
    person1.name = "Nabeel"
}


person1.performMultiple { (a, d) in
    person1.name = d
}

//
//  College.swift
//  CollegeProfileBuilder
//
//  Created by Daniel Korach on 7/25/16.
//  Copyright © 2016 Daniel Korach. All rights reserved.
//

import UIKit

class College: NSObject {

    var name = ""
    var state = ""
    var enrollment = 0
    var image = UIImage(named: "Default")
    
    convenience init(name: String, state: String, enrollment: Int, image: UIImage) {
        self.init()
        self.name = name
        self.state = state
        self.enrollment = enrollment
        self.image = image
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}





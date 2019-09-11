//
//  Employee.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/5/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import UIKit

class Employee: EmployeeProtocol {
    var name: String
    var id: String
    var seniority: String
    
    init(name: String, id: String, seniority: String) {
        self.name = name
        self.id = id
        self.seniority = seniority
    }
}

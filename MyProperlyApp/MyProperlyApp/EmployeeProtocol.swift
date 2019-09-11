//
//  EmployeeProtocol.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/10/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import Foundation

protocol EmployeeProtocol {
    var name: String { get set }
    var id: String { get set }
    var seniority: String { get set }
}

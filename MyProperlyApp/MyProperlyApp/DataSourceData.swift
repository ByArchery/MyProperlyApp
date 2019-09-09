//
//  DataSourceData.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/9/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import Foundation

class DataSourceData: DataSource {
    //var data
    func getAllEmployees() -> [Employee]  {
        return employeesAttributes.map({ attributes in
            return Employee(name: attributes["name"]!, id: attributes["id"]!, seniority: attributes["seniority"]!)
        })
    }
    
    let employeesAttributes = [
        ["name" : "David", "id" : "1017233462", "seniority" : "Junior"],
        ["name" : "Maria", "id" : "2002988123", "seniority" : "Senior"],
        ["name" : "Camilo", "id" : "10293837465", "seniority" : "Semi-Senior"]
    ]
}

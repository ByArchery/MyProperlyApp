//
//  EmployeesDataSourceFactory.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/6/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import Foundation

class DataSourceFactory {
    var employeesData = DataSourceData()
    
    func obtainDataSource() -> DataSourceData {
        return employeesData
    }
}

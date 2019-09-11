//
//  DataSourceData.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/9/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import Foundation

extension Notification.Name {
    static let dataSourceChangeSimulation = Notification.Name("dataSourceChangeSimulation")
}

class DataSourceData: DataSource {
    var changeObserver: () -> Void = {}
    
    func getAllEmployees() -> Employee {
        // deberia suscribirse para recibir esas notificaciones
        return employeesAttributes.randomElement().map({ attributes in
            return Employee(name: attributes["name"]!, id: attributes["id"]!, seniority: attributes["seniority"]!)
        })!
    }
    
    let employeesAttributes = [
        ["name" : "David", "id" : "1017233462", "seniority" : "Junior"],
        ["name" : "Maria", "id" : "2002988123", "seniority" : "Senior"],
        ["name" : "Camilo", "id" : "10293837465", "seniority" : "Semi-Senior"],
        ["name" : "Andres", "id" : "636345645655", "seniority" : "Junior"]
//        ["name" : "Felipe", "id" : "3521145345", "seniority" : "Senior"],
//        ["name" : "Alex", "id" : "8784762", "seniority" : "SeniorAdv"],
//        ["name" : "Sofia", "id" : "2345678486", "seniority" : "JuniorAdv"],
//        ["name" : "Mario", "id" : "187857673", "seniority" : "SoftwareDesigner"],
//        ["name" : "Sebastian", "id" : "16345895", "seniority" : "Senior"],
//        ["name" : "Alberto", "id" : "765432", "seniority" : "Senior2"],
//        ["name" : "Ernesto", "id" : "234565586", "seniority" : "Senior"],
//        ["name" : "Santiago", "id" : "243374567", "seniority" : "Junior"],
//        ["name" : "Julian", "id" : "2363475", "seniority" : "Semi-SeniorAdv"],
//        ["name" : "Pablo", "id" : "5698678655", "seniority" : "Senior"],
//        ["name" : "Sergio", "id" : "785696578", "seniority" : "Senior"],
//        ["name" : "Evangelyne", "id" : "254363678", "seniority" : "Senior1"],
//        ["name" : "Sylvie", "id" : "907698757673", "seniority" : "Junior"],
//        ["name" : "Amalie", "id" : "6745856867564", "seniority" : "Junior"],
//        ["name" : "Lucy", "id" : "3456784", "seniority" : "JuniorAdv"],
//        ["name" : "Lucile", "id" : "3564736456", "seniority" : "Senior"],
//        ["name" : "Angela", "id" : "7564467", "seniority" : "Semi-Senior"],
//        ["name" : "Olga", "id" : "34657457567", "seniority" : "Senior"],
//        ["name" : "David", "id" : "1101928237436", "seniority" : "SeniorAdv"]
    ]
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(notificationHandler(notification:)), name: .dataSourceChangeSimulation, object: nil)
    }
    
    @objc func notificationHandler(notification: Notification) {
        // aqui estoy simulando que hubo un cambio en la base de datos
        changeObserver()
    }
}

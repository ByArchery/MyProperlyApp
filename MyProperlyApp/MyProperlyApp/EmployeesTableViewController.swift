//
//  EmployeesTableViewController.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/5/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import UIKit

class EmployeesTableViewController: UITableViewController {

    var dataSource = DataSourceFactory().obtainDataSource()
    var employees: Employee = Employee(name: "", id: "", seniority: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.changeObserver = {
            print("hay un cambio en el datasource debo recargar datos")
        }
        employees = dataSource.getAllEmployees()
    }
    
    @IBAction func insertNewEmployee() {
        // enviar una notificacion unicamente
        NotificationCenter.default.post(name: .dataSourceChangeSimulation, object: nil)
    }
}

extension EmployeesTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeesCell", for: indexPath) as! EmployeeTableViewCell
        
        cell.employee = employees
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}

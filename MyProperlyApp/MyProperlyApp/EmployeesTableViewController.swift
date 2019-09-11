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
    var employees: [Employee] = []
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employees = dataSource.getAllEmployees()
    }
    
    @IBAction func insertNewEmployee() {
        for i in 0...2 {
            employees.append(dataSource.getAllEmployees().randomElement()!)
        }
        tableView.reloadData()
    }
}

extension EmployeesTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeesCell", for: indexPath) as! EmployeeTableViewCell
        
        cell.employee = employees[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}

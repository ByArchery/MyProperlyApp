//
//  EmployeesTableViewController.swift
//  MyProperlyApp
//
//  Created by David Andres Mejia Lopez on 9/5/19.
//  Copyright © 2019 David Andres Mejia Lopez. All rights reserved.
//

import UIKit

class EmployeesTableViewController: UITableViewController {

    var employeesDataFromDataSource = DataSourceFactory()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.employeesDataFromDataSource = {
            DataSourceFactory.init()
        }()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSourceData.employeesAttributes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmployeesCell", for: indexPath) as! EmployeeTableViewCell
        
        cell.employee = employeesDataFromDataSource

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}

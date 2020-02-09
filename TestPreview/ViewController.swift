//
//  ViewController.swift
//  TestPreview
//
//  Created by Gualtiero Frigerio on 30/01/2020.
//  Copyright © 2020 Gualtiero Frigerio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let baseURL = "https://jsonplaceholder.typicode.com"
    let restClient = RESTHandler()
    var dataSource:DataSource!
    var dataSourceCallbacks:DataSourceCallbacks!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = DataHandler(withBaseURL: baseURL, restClient: restClient)
        let users = DataSourceCommon.getTestUsers()
        getUsers()
    }

    func getUsers() {
        dataSource.getUsersWithMergedData().observe { promiseReturn in
            switch promiseReturn {
            case .value(let users):
                self.showUsers(users)
            case .error(let error):
                print("error \(error)")
            }
        }
    }
    
    func showUsers(_ users:[User]) {
        DispatchQueue.main.async {
            let usersVC = UsersTableViewController()
            usersVC.setUsers(users)
            self.navigationController?.pushViewController(usersVC, animated: true)
        }
    }

}


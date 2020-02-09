//
//  SwiftUIPreview.swift
//  TestPreview
//
//  Created by Gualtiero Frigerio on 30/01/2020.
//  Copyright © 2020 Gualtiero Frigerio. All rights reserved.
//

import Foundation

import SwiftUI

struct UsersTableViewControllerPreview: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIView {
        let navigationController = UINavigationController()
        let usersTVC = UsersTableViewController()
        let users = DataSourceCommon.getTestUsers()
        usersTVC.setUsers(users)
        navigationController.setViewControllers([usersTVC], animated: false)
        return navigationController.view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

struct UserViewControllerPreview: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let navigationController = UINavigationController()
        let userVC = UserViewController()
        let users = DataSourceCommon.getTestUsers()
        userVC.setUser(users[0])
        navigationController.setViewControllers([userVC], animated: false)
        return navigationController.view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

struct Test_Preview: PreviewProvider {
    static var previews: some View {
        //return UsersTableViewControllerPreview()
        return UserViewControllerPreview()
    }
}

//
//  CategoryViewModel.swift
//  IOS_Archit_Test
//
//  Created by Archit Rai Saxena on 16/11/20.
//  Copyright © 2020 Archit. All rights reserved.
//

import UIKit

protocol CategoryVMDelegate: class {
    func reloadCategoryData()
}

class CategoryViewModel: NSObject {

    weak var delegate: CategoryVMDelegate?
    
    public func loadDataSource() {
        //If any data to fetch from server or setting up the dataSource & reloading the tableview
        if let delegate_ = delegate {
            delegate_.reloadCategoryData()
        }
    }
}


//
//  HomeModel.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/14.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI
import Combine

struct FunctionCategory {

    static let category = FunctionCategory(title: "landmark", iconName: "landmark")
    
    init(title: String,iconName: String) {
        self.title = title
        self.iconName = iconName
    }
    
    var title: String
    let iconName: String
    var isHidden: Bool = false
}


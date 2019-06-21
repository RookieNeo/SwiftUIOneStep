//
//  CategoryRow.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/14.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct CategoryRow : View {
    let category: FunctionCategory
    var body: some View {
        HStack() {
            List {
                NavigationButton(destination: Text("asd")) {
                    Image(category.iconName)
                        .padding(.leading, 20)
                    Text("Test")
                        .color(Color.white)
                    }
                    .background(Color.black)
            }
        }
    }
}

#if DEBUG
struct CategoryRow_Previews : PreviewProvider {
    static var previews: some View {
        CategoryRow(category: FunctionCategory.category)
    }
}
#endif

//
//  Home.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/14.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct Home : View {
    @State var categorie = FunctionCategory.category
    
    var body: some View {
        NavigationView {
            List {
                NavigationButton(destination: HomeDetail(model: $categorie)) {
                    HStack {
                        Text(categorie.title)
                        Text(categorie.isHidden ? "true" : "false")
                    }
                }
            }
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif

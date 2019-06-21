//
//  NavigationExampleView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct NavigationExampleView : View {
    var body: some View {
        NavigationView {
            Text("SwiftUI")
                .navigationBarTitle(Text("Welcome"))
                .navigationBarItems(trailing:
                    Button(action: {
                        print("Help tapped!")
                    }) {
                        Text("Help")
                })
        }
    }
}

#if DEBUG
struct NavigationExampleView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationExampleView()
    }
}
#endif

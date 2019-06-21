//
//  AppearAndDisAppear.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/18.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct AppearAndDisAppear : View {
    var body: some View {
        NavigationView {
            NavigationButton(destination: Detail()) {
                Text("Hello Word")
            }
            }.onAppear{
                print("ContentView Appear")
            }
            .onDisappear{
                print("ContentView DisAppear")
            }
    }
}

struct Detail: View {
    var body: some View {
        VStack {
            Text("Second View")
        }
            .onAppear{
                print("appeared")
            }
            .onDisappear{
                print("disappeared")
            }
    }
}

#if DEBUG
struct AppearAndDisAppear_Previews : PreviewProvider {
    static var previews: some View {
        AppearAndDisAppear()
    }
}
#endif

//
//  FormView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

//struct FormView : View {
//    @State var enableLogging = false
//
//    @State var selectedColor = 0
//    @State var colors = ["Red", "Green", "Blue"]
//
//    var body: some View {
//        NavigationView {
//            Form {
//                SegmentedControl(selection: $selectedColor) {
//                    ForEach(0 ..< colors.count) {
//                        Text(self.colors[$0]).tag($0)
//                    }
//                }
//
//                Toggle(isOn: $enableLogging) {
//                    Text("Enable Logging")
//                }
//
//                Button(action: {
//                    // activate theme!
//                }) {
//                    Text("Save changes")
//                }
//                }.navigationBarTitle(Text("Settings"))
//        }
//    }
//}
//
//#if DEBUG
//struct FormView_Previews : PreviewProvider {
//    static var previews: some View {
//        FormView()
//    }
//}
//#endif

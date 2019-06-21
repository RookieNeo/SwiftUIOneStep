//
//  AlertView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct AlertView : View {
    @State var showingAlert = false
    
    var body: some View {
        NavigationView {
            Group {
                NavigationButton(destination: DetailView(showingAlert: $showingAlert)) {
                    Text("next")
                }
                Text("asd")
                    .presentation($showingAlert) {
                        Alert(title: Text("Are you sure you want to delete this?"), message: Text("There is no undo"), primaryButton: .destructive(Text("Delete")) {
                            print("Deleting...")
                            }, secondaryButton: .cancel())
                }
            }
        }
    }
}

struct DetailView: View {
    @Binding var showingAlert: Bool
    
    var body: some View {
        Toggle(isOn: $showingAlert) {
            Text("toggle")
        }
    }
}

#if DEBUG
struct AlertView_Previews : PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
#endif

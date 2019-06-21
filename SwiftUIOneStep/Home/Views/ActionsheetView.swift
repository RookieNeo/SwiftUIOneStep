//
//  ActionsheetView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ActionsheetView : View {
    @State var showingSheet = false
    
    var sheet: ActionSheet {
        ActionSheet(title: Text("Action"), message: Text("Quote mark"), buttons: [.default(Text("Woo"), onTrigger: {
            self.showingSheet = false
        })])
    }
    
    var body: some View {
        Button(action: {
            self.showingSheet = true
        }) {
            Text("Woo \(self.showingSheet ? "true" : "false")")
            }
            .presentation(showingSheet ? sheet : nil)
    }
}

#if DEBUG
struct ActionsheetView_Previews : PreviewProvider {
    static var previews: some View {
        ActionsheetView()
    }
}
#endif

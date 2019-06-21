//
//  ExplicitAnmation.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ExplicitAnmation : View {
    @State var opacity: Double = 1
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.opacity -= 0.2
            }
        }) {
            Text("Tap here")
                .padding()
                .opacity(opacity)
        }
    }
}

#if DEBUG
struct ExplicitAnmation_Previews : PreviewProvider {
    static var previews: some View {
        ExplicitAnmation()
    }
}
#endif

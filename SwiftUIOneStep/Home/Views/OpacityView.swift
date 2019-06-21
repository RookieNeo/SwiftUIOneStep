//
//  OpacityView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct OpacityView : View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Tap here")
            }
            Text("asd")
            Text("Now you see me")
                .padding()
                .background(Color.red)
                .opacity(0.3)
        }
        .accentColor(Color.red)
        //I don't find any view's color change emmm
    }
}

#if DEBUG
struct OpacityView_Previews : PreviewProvider {
    static var previews: some View {
        OpacityView()
    }
}
#endif

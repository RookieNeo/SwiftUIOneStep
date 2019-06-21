//
//  ShadowView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ShadowView : View {
    var body: some View {
        Text("Hacking with Swift")
            .padding()
            .shadow(color: .red, radius: 5, x: 20, y: 20)
            .border(Color.red, width: 4)
    }
}

#if DEBUG
struct ShadowView_Previews : PreviewProvider {
    static var previews: some View {
        ShadowView()
    }
}
#endif

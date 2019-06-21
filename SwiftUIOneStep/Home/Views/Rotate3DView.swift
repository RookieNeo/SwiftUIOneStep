//
//  Rotate3DView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct Rotate3DView : View {
    var body: some View {
        Text("EPISODE LLVM")
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .rotation3DEffect(.degrees(45), axis: (x: 1, y: 0, z: 0))
        
    }
}

#if DEBUG
struct Rotate3DView_Previews : PreviewProvider {
    static var previews: some View {
        Rotate3DView()
    }
}
#endif

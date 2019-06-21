//
//  ScaleView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ScaleView : View {
    var body: some View {
        VStack(spacing: 100){
            Text("Hello World!")
                .scaleEffect(5)
            Text("Up we go")
                .scaleEffect(x: 1, y: 5)
            Text("Up we go")
                .scaleEffect(2, anchor: UnitPoint(x: 1, y: 1))
        }
    }
}

#if DEBUG
struct ScaleView_Previews : PreviewProvider {
    static var previews: some View {
        ScaleView()
    }
}
#endif

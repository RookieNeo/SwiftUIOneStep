//
//  GestureView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/18.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct GestureView : View {
    @State var scale: Length = 1.0
    @State var point: CGPoint = CGPoint(x: 0, y: 0)
    var body: some View {
        
        Image("landmark")
            .position(point)
            .scaleEffect(scale)
            .gesture(
                DragGesture(minimumDistance: 1).onChanged({ (value) in
                    self.point = value.location
                })
        )
//        VStack {
//            Image("landmark")
//                .scaleEffect(scale)
//                .gesture(
//                    TapGesture(count: 2)
//                        .onEnded({ _ in
//                            self.scale += 0.1
//                        })
//            )
//        }
    }
}

#if DEBUG
struct GestureView_Previews : PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
#endif

//
//  RotateView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct RotateView : View {
    @State var rotation: Double = 0
    var body: some View {
        VStack{
            Text("Up we go")
                .rotationEffect(.degrees(-90))
            Text("Up we go")
                .rotationEffect(.radians(.pi))
            Slider(value: $rotation, from: 0.0, through: 720.0,by: 1.0)
            Text("Up we go")
            .rotationEffect(.degrees(rotation))
            Text("Up we go")
                .rotationEffect(.degrees(rotation), anchor: UnitPoint(x: 0, y: 0))
        }
    }
}

#if DEBUG
struct RotateView_Previews : PreviewProvider {
    static var previews: some View {
        RotateView()
    }
}
#endif

//
//  Circle.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/17.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI
/*
 struct RedCircle: View {
 var body: some View {
 Circle.fill(.red)
 }
 }
 */
struct CircleView : View {
    var body: some View {
        let spectrum = Gradient(colors: [.red,.yellow,.green,.purple,.red])
        
        let conic = AngularGradient(gradient: spectrum,center: .center, angle: .degrees(-90))
        
        return Circle().strokeBorder(conic,lineWidth: 50)
    }
}

#if DEBUG
struct Circle_Previews : PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
#endif

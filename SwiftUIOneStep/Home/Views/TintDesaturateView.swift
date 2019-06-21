//
//  TintDesaturateView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct TintDesaturateView : View {
    var body: some View {
        VStack{
            Image("landmark")
                .colorMultiply(.red)
            Image("landmark")
                .saturation(0.5)
            Image("landmark")
                .contrast(0.5)
        }
    }
}

#if DEBUG
struct TintDesaturateView_Previews : PreviewProvider {
    static var previews: some View {
        TintDesaturateView()
    }
}
#endif

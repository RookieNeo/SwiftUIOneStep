//
//  MaskView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct MaskView : View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 300, height: 300)
            .mask(Text("Swift")
                .frame(width: 300,height: 300)
                .font(Font.system(size: 72).weight(.black))
        )
    }
}

#if DEBUG
struct MaskView_Previews : PreviewProvider {
    static var previews: some View {
        MaskView()
    }
}
#endif

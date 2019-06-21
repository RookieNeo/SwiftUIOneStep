//
//  CustomerFrameView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct CustomerFrameView : View {
    var body: some View {
        Button(action: {print("Button Tapped")}) {
            Text("Welcome")
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity)
                .font(.largeTitle)
            .foregroundColor(.white)
            .background(Color.red)
        }
    }
}

#if DEBUG
struct CustomerFrameView_Previews : PreviewProvider {
    static var previews: some View {
        CustomerFrameView()
    }
}
#endif

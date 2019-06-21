//
//  BindingAnimation.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct BindingAnimation : View {
    @State var showingWelcome = false
    var body: some View {
        VStack {
            Toggle(isOn: $showingWelcome.animation(.spring())) {
                Text("Toggle label")
            }
            
            if showingWelcome {
                Text("Hello World")
            }
            //em....no animation 
        }
    }
}

#if DEBUG
struct BindingAnimation_Previews : PreviewProvider {
    static var previews: some View {
        BindingAnimation()
    }
}
#endif

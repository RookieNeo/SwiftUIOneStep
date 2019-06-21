//
//  TransitionAnimation.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct TransitionAnimation : View {
    @State private var showDetails = false
    
    var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale()
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.showDetails.toggle()
                }
            }) {
                Text("Tap to show details")
            }
            if showDetails {
                Image("landmark").transition(transition)
            }
        }
    }
}

#if DEBUG
struct TransitionAnimation_Previews : PreviewProvider {
    static var previews: some View {
        TransitionAnimation()
    }
}
#endif

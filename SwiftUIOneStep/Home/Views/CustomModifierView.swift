//
//  CustomModifierView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding()
        .background(Color.red)
        .foregroundColor(Color.white)
        .font(.largeTitle)
    }
}

struct CustomModifierView : View {
    var body: some View {
        Text("Hello World!")
        .modifier(PrimaryLabel())
    }
}

#if DEBUG
struct CustomModifierView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            CustomModifierView()
                .environment(\.sizeCategory, .extraSmall)
            CustomModifierView()
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            CustomModifierView()
            .environment(\.colorScheme, .dark)
        }
    }
}
#endif

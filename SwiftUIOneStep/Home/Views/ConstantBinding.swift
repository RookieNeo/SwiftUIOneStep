//
//  ConstantBinding.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ConstantBinding : View {
    var body: some View {
        VStack {
            TextField(.constant("Hello"))
                .textFieldStyle(.roundedBorder)
            Slider(value: .constant(0.5))
        }
    }
}

#if DEBUG
struct ConstantBinding_Previews : PreviewProvider {
    static var previews: some View {
        ConstantBinding()
    }
}
#endif

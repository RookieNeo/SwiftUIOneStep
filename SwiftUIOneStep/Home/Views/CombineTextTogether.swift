//
//  CombineTextTogether.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/20.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct CombineTextTogether : View {
    var body: some View {
        Text("SwiftUI ")
            .font(.largeTitle)
            .color(.red)
            + Text("is ")
                .font(.headline)
            + Text("awesome")
                .font(.footnote)
    }
}

#if DEBUG
struct CombineTextTogether_Previews : PreviewProvider {
    static var previews: some View {
        CombineTextTogether()
    }
}
#endif

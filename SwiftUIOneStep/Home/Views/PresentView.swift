//
//  PresentView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct PresentView : View {
    var body: some View {
        VStack {
            PresentationButton(destination: 
                Text("Click to present")
            ) {
                PresentDetailView()
            }
        }
    }
}

struct PresentDetailView: View {
    var body: some View {
        Text("Detail")
    }
}

#if DEBUG
struct PresentView_Previews : PreviewProvider {
    static var previews: some View {
        PresentView()
    }
}
#endif

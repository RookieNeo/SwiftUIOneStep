
//
//  SegmentedControl.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/18.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct SegmentedControlView : View {
    enum Colors: String,CaseIterable,Hashable,Identifiable{
        var id: String {
            return self.rawValue
        }
        case red
        case yellow
    }
    @State private var selectedColor = Colors.red
    
    var body: some View {
        VStack {
            SegmentedControl(selection: $selectedColor) {
                ForEach(Colors.allCases) { color in
                    Text(color.rawValue).tag(color)
                }
            }
            Text("Value: \(selectedColor.rawValue)")
                .tapAction(count: 2) {
                    print("click")
                }
        }
    }
}

#if DEBUG
struct SegmentedControl_Previews : PreviewProvider {
    static var previews: some View {
        SegmentedControlView()
    }
}
#endif

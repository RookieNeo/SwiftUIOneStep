//
//  SectionView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct SectionView : View {
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            
            Section(header: Text("Other tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
        }
    }
}

#if DEBUG
struct SectionView_Previews : PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
#endif

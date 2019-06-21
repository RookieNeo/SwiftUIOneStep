//
//  ListMove.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ListMove : View {
    @State var users = ["Paul", "Taylor", "Adele"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users.identified(by: \.self)) { user in
                    Text(user)
                    }
                    .onMove(perform: move)
                }
                .navigationBarItems(trailing: EditButton())
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        // sort the indexes low to high
        let reversedSource = source.sorted()
        
        // then loop from the back to avoid reordering problems
        for index in reversedSource.reversed() {
            // for each item, remove it and insert it at the destination
            users.insert(users.remove(at: index), at: destination)
        }
    }
}

#if DEBUG
struct ListMove_Previews : PreviewProvider {
    static var previews: some View {
        ListMove()
    }
}
#endif

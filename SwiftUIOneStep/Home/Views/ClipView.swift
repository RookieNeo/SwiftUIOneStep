//
//  ClipView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ClipView : View {
    var body: some View {
        VStack{
            
            Button(action: {
                print("Button tapped")
            }) {
                Image(systemName: "bolt.fill")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .clipShape(Circle())
            }
            
            Button(action: {
                print("Button tapped")
            }) {
                Image(systemName: "bolt.fill")
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(Color.green)
                    .clipShape(Capsule())
            }
            
            Text("Round Me")
                .padding()
                .background(Color.red)
                .cornerRadius(25)
        }
    }
}

#if DEBUG
struct ClipView_Previews : PreviewProvider {
    static var previews: some View {
        ClipView()
    }
}
#endif

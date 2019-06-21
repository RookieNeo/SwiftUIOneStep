//
//  OffsetView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct OffsetView : View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Home")
            Text("Options")
                .offset(y: 15)
            .padding(.bottom, 15)
            Text("Help")
        }
    }
}

struct PaddingBackgroundView: View {
    var body: some View {
        VStack {
            Text("Hacking with Swift")
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
            Text("Hacking with Swift")
                .background(Color.red)
                .foregroundColor(.white)
                .padding()
            Text("Forecast: Sun")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .padding()
                .background(Color.orange)
                .padding()
                .background(Color.yellow)
            Text("Rookie Neo")
                .offset(y:15)
                .padding()
                .border(Color.red,width: 10,cornerRadius: 10)
            
        }
    }
}

#if DEBUG
struct OffsetView_Previews : PreviewProvider {
    static var previews: some View {
        Group{
//            OffsetView()
            PaddingBackgroundView()
        }
    }
}
#endif

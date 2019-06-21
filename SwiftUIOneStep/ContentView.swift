//
//  ContentView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/14.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        HStack(alignment: .midStarAndTitle) {
            VStack {
                Text("✨✨✨✨✨").layoutPriority(1)
                    .alignmentGuide(.midStarAndTitle) { d -> Length in
                        return d[.bottom] / 2
                }
                Text("5 stars").layoutPriority(2)
                }.font(.caption)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Avocado Toast").font(.title).alignmentGuide(.midStarAndTitle) { d -> Length in
                        return d[.bottom] / 2
                    }
                    .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .top, endPoint: .bottom), cornerRadius: 0)
                    Spacer()
                    Image("turtlerock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                }
                Text("Ingredients: Avocado, Almond Butter, Bread, Red Pepper Flakes")
                    .font(.caption)
                    .lineLimit(1)
            }
        }
    }
}

extension VerticalAlignment {
    private enum MidStarAndTitle: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> Length {
            return context[.bottom]
        }
    }
    static let midStarAndTitle = VerticalAlignment(MidStarAndTitle.self)
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

//
//  TestView.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/18.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct TestView : View {
    @State var name: String = "asd"
    @State var celsius : Double = 0.5
    
    var body: some View {
        VStack(alignment: .center) {
            TextField($name,placeholder: Text("请输入"))
            .textFieldStyle(.roundedBorder)
            Text(name)
            Slider(value: $celsius,from: -100,through: 100,by: 0.1)
            Text("\(celsius) Celsius is \(celsius * 9 / 5 + 32) Fahrenheit")
            .fixedSize()
            
        }
        .padding()
    }
}

#if DEBUG
struct TestView_Previews : PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
#endif

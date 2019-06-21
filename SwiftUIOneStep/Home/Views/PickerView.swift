//
//  Picker.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/18.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct PickerView : View {
    enum Colors: String,CaseIterable,Hashable,Identifiable{
        var id: String {
            return self.rawValue
        }
        case red
        case yellow
    }
    @State private var selectedColor = Colors.red
    
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State var birthDate = Date()
    
    var body: some View {
        VStack() {
            Picker(selection: $selectedColor, label: Text("choose a color")) {
                ForEach(Colors.allCases) { color in
                    
                    Text(color.rawValue).tag(color)
                }
            }
            Text("Selected: \(selectedColor.rawValue)")
            
            DatePicker(
                $birthDate,
                maximumDate: Date(),
                displayedComponents: .date
            )
            
            Text("Date is \(birthDate, formatter: dateFormatter)")
        }
    }
}

#if DEBUG
struct Picker_Previews : PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif

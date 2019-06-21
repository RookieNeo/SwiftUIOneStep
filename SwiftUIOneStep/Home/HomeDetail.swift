//
//  HomeDetail.swift
//  SwiftUIOneStep
//
//  Created by Neo on 2019/6/19.
//  Copyright © 2019 Neo. All rights reserved.
//

import SwiftUI

struct HomeDetail : View {
    @Binding var model : FunctionCategory
    var body: some View {
        VStack {
            Toggle(isOn: $model.isHidden) {
                Text(model.isHidden ? "true" : "false")
            }
            TextField($model.title)
            Text(model.title)
        }
    }
}

#if DEBUG
//struct HomeDetail_Previews : PreviewProvider {
//    static var previews: some View {
//        HomeDetail(model: FunctionCategory.functionCategories[0])
//    }
//}
#endif

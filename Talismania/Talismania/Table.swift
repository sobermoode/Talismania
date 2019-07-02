//
//  Table.swift
//  Talismania
//
//  Created by Aaron Justman on 7/1/19.
//  Copyright © 2019 Divided Sky. All rights reserved.
//

import SwiftUI

struct Table : View {
    var body: some View {
        Rectangle().frame(width: 100, height: 100, alignment: .center).foregroundColor(.green)
    }
}

#if DEBUG
struct Table_Previews : PreviewProvider {
    static var previews: some View {
        Table()
    }
}
#endif

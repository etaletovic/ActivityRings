//
//  Test.swift
//  ActivityRings
//
//  Created by Emir Taletovic on 2/16/20.
//  Copyright © 2020 Emir Taletovic. All rights reserved.
//

import SwiftUI

struct Test: View {
    var body: some View {
        ZStack {

            Circle()
                .foregroundColor(.lightRed)
                .frame(width:100, height:100)

            Circle()
                .foregroundColor(.darkRed)
                .frame(width:100, height:100)
                .offset(x: -50)



        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

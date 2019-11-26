//
//  ContentView.swift
//  rusty-libpebble2
//
//  Created by Tanner Meade on 11/26/19.
//  Copyright © 2019 rebble. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let s = getName()
    var body: some View {
        Text(s)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func getName() -> String {
    let result = hello("Tanner-swift-xcode-prj")
    let sr =  String(cString: result!)
    // IMPORTANT: once we get the result we have to release the pointer.
    hello_release(UnsafeMutablePointer(mutating: result))
    return sr
}

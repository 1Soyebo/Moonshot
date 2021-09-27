//
//  ContentView.swift
//  Moonshot
//
//  Created by Ibukunoluwa Soyebo on 27/09/2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView{
            List(0..<100) { row in
                NavigationLink(destination: Text("umm \(row)")){
                    Text("row \(row)")
                }
            }
            .navigationTitle("SWe")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

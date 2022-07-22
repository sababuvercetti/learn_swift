//
//  ContentView.swift
//  Landmarks
//
//  Created by Samuel Baraka on 21/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment:.leading) {
            Text("Sam Rocks")
                .font(.largeTitle).foregroundColor(.black).padding()
            HStack {
                Text("Maasai Mara Nationlal reserve")
                    .font(.subheadline)
                Spacer()
                Text("Narok")
                    .font(.subheadline)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

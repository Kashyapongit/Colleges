//
//  ContentView.swift
//  Colleges
//
//  Created by Sachin Kashyap on 05/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Humber")
                .font(.title)
            HStack {
                Text("High quality education")
                    .font(.subheadline)
                Spacer()
                Text("Toronto")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

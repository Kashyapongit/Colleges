//
//  detailCollege.swift
//  Colleges
//
//  Created by Sachin Kashyap on 07/06/21.
//

import SwiftUI

struct detailCollege: View {
    var body: some View {
        VStack {
            MapCollegeView()
                .frame(height: 300)
                .ignoresSafeArea()
            
            
            CollegeImageView()
                .offset(x: 89.0, y: -150)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading) {
                Text("Humber College")
                    .font(.largeTitle)
                    .fontWeight(.light)
                HStack {
                    Text("Toronto, Ontario")
                        .font(.headline)
                        .fontWeight(.light)
                    Spacer()
                 }
                Divider()
                
                Text("About us")
                    .underline()
                    .font(.title)
                    .fontWeight(.light)
                
                Text("All info goes here")
                    .font(.body)
                    
             }
            .offset(y: -50.0)
            .padding()
            
            Spacer()
        }
    }
}

struct detailCollege_Previews: PreviewProvider {
    static var previews: some View {
        detailCollege()
    }
}

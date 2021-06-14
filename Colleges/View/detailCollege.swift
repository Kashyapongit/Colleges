//
//  detailCollege.swift
//  Colleges
//
//  Created by Sachin Kashyap on 07/06/21.
//

import SwiftUI

struct detailCollege: View {
    @State var isShowingWeb: Bool = false
    var college: College
    
    var body: some View {
        ScrollView {
            MapCollegeView(coordinates: college.locationcoordinate)
                .frame(height: 300)
                
            CollegeImageView(image: college.image)
                .offset(x: 89.0, y: -110)
                .padding(.bottom, -120)
            
            VStack(alignment: .leading) {
                Text(college.name)
                    .font(.largeTitle)
                    .fontWeight(.light)
                
                HStack {
                    Text(college.city)
                        .font(.headline)
                        .fontWeight(.light)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: CollegeWebsiteView(url: college.link),
                        label: {
                            Text("Visit Website")
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                        })
                    
                }
                Spacer()
                
                Divider()
                
                Text("Intakes")
                    .underline()
                    .font(.title2)
                    .fontWeight(.light)
                Text(college.intake)
                
                Divider()
                
                Text("About \(college.name)")
                    .underline()
                    .font(.title2)
                    .fontWeight(.light)
                Text(college.description)
                    .font(.body)
                
            }
                .padding()
        }
        .navigationTitle(college.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct detailCollege_Previews: PreviewProvider {
    static var previews: some View {
        detailCollege(college: Colleges[0])
    }
}

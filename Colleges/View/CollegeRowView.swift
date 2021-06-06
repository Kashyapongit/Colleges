//
//  CollegeRowView.swift
//  Colleges
//
//  Created by Sachin Kashyap on 06/06/21.
//

import SwiftUI

struct CollegeRowView: View {
    var college: College
    
    var body: some View {
        HStack {
            college.image
                .resizable()
                .frame(width: 50, height: 50)
                .shadow(radius: 11)
            
            Text(college.name)
                .font(.title)
                .fontWeight(.light)
                
            Spacer()
        }
        
    }
}

struct CollegeRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CollegeRowView(college: Colleges[1])
            CollegeRowView(college: Colleges[2])
        }
        .previewLayout(.fixed(width: 300, height: 60))
    }
}

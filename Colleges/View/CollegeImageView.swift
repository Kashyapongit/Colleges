//
//  CollegeImageView.swift
//  Colleges
//
//  Created by Sachin Kashyap on 05/06/21.
//

import SwiftUI

struct CollegeImageView: View {
    var body: some View {
        Image("humber")
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
            .frame(width: 180, height: 180, alignment: .center)
            .shadow(radius: 7)
            
    }
}

struct CollegeImageView_Previews: PreviewProvider {
    static var previews: some View {
        CollegeImageView()
    }
}

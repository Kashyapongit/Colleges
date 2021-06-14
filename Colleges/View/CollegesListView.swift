//
//  CollegesListView.swift
//  Colleges
//
//  Created by Sachin Kashyap on 06/06/21.
//

import SwiftUI

struct CollegesListView: View {
    var body: some View {
        // Lists work with identifiable data hence data must conform to identifiable protocol.
        NavigationView {
            List(Colleges) {college in
                NavigationLink(destination: detailCollege(college: college)) {
                    CollegeRowView(college: college)
                }
            }
            .navigationTitle("Colleges")
        }
    }
}

struct CollegesListView_Previews: PreviewProvider {
    static var previews: some View {
        CollegesListView()
    }
}

//
//  ContentView.swift
//  PreStart1
//
//  Created by Mauro Arantes on 04/02/2022.
//

import SwiftUI

struct ContentView: View {
    //1
    var tutors: [Tutor] = []
 
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }
            .navigationBarTitle(Text("Tutors"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

//is this part of the ViewModel?
struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        //return?
        NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            Image(tutor.imageName)
                .cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

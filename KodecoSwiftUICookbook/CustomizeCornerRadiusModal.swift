//
//  CustomizeCornerRadiusModal.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/30/24.
//

import SwiftUI

struct CustomizeCornerRadiusModal: View {
    @State private var showModal = false
    let favoriteMovies = [
        "The Shawshank Redemption",
        "The Godfather",
        "The Dark Knight",
        "Pulp Fiction",
        "Fight Club",
        "Forrest Gump",
        "Inception",
        "The Matrix",
        "Interstellar",
        "The Lion King"
      ]
    
    var body: some View {
        Button("Show Favorite Movies") {
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            VStack {
                List(favoriteMovies, id: \.self) { movie in
                    Text(movie)
                }
            }
            .presentationDetents([.medium, .large])
            .presentationCornerRadius(21)
        })
    }
}

#Preview {
    CustomizeCornerRadiusModal()
}

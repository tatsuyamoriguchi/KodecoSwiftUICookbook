//
//  CustomizeSplitView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/13/24.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id: Int
    let title: String
    let description: String
}

struct CustomizeSplitView: View {
    
    let movies = [
        Movie(id: 1, title: "The Matrix", description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers."),
            Movie(id: 2, title: "Inception", description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O."),
            Movie(id: 3, title: "Interstellar", description: "A group of explorers make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.")
    ]
    
    @State private var selectedMovie: Movie? = nil
    @State private var columnVisibility: NavigationSplitViewVisibility = .doubleColumn
    
    var body: some View {
        NavigationSplitView(columnVisibility: $columnVisibility) {
            List(movies, selection: $selectedMovie) { movie in
                NavigationLink(movie.title, value: movie)
            }
            .navigationTitle("Favorite Movies")
        } detail: {
            if let selectedMovie = selectedMovie {
                MovieDetailView(movie: selectedMovie)
            } else {
                Text("Select a movie from the list to see its details.")
            }
        }
        .navigationSplitViewColumnWidth(100)
        .navigationSplitViewStyle(.balanced)
        
    }
}

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        Text(movie.description)
            .padding()
            .navigationTitle(movie.title)
    }
    
}

#Preview {
    CustomizeSplitView()
}

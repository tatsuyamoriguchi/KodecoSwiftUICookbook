//
//  DetailViewToSplitView.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/13/24.
//

import SwiftUI

struct Book: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let author: String
}

struct DetailViewToSplitView: View {

    let books = [
        Book(title: "The Hobbit", author: "J.R.R. Tolkien"),
        Book(title: "Pride and Prejudice", author: "Jane Austen"),
        Book(title: "1984", author: "George Orwell")
    ]
    
    @State private var selectedBook: Book? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.doubleColumn)) {
            List(books, selection: $selectedBook) { book in
                NavigationLink(book.title, value: book)
            }
            .navigationTitle("Books")
        } detail: {
            if let selectedBook = selectedBook {
                BookDetail(book: selectedBook)
            } else {
                Text("Select a book from the list to see its details.")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

struct BookDetail: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
                .font(.largeTitle)
            Text("by \(book.author)")
                .font(.title)
        }
        .navigationTitle(book.title)
    }
}

#Preview {
    DetailViewToSplitView()
}

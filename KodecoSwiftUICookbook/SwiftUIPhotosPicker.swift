//
//  SwiftUIPhotosPicker.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 6/6/24.
//

import SwiftUI
import PhotosUI

struct SwiftUIPhotosPicker: View {
    @State private var selectedItems = [PhotosPickerItem]()
    @State private var images = [UUID: Image]()
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(Array(images.keys), id: \.self) { key in
                        images[key]!
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                    }
                }
            }
            
            VStack {
                Spacer()
                PhotosPicker(selection:)
            }
        }
    }
}


#Preview {
    SwiftUIPhotosPicker()
}

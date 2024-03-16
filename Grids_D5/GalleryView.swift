//
//  ContentView.swift
//  Grids_D5
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import SwiftUI

struct GalleryView: View {
    
    @State var sheetVisible = false
    @State var selectedIamge = ""
    
    var galleryImages = [
        
        "gallery1", "gallery2", "gallery3", "gallery4",
        "gallery5", "gallery6", "gallery7", "gallery8",
        "gallery9", "gallery10", "gallery11"
    
    ]
    
    var body: some View {
        
        VStack{
            Text("Sushi MENU")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.brown)
            ScrollView{
                LazyVGrid(columns: [GridItem(), GridItem()]){
                    ForEach(galleryImages, id: \.self){pic in
                        Image(pic)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .padding(5)
                            .onTapGesture {
                                selectedIamge = pic
                                sheetVisible = true
                            }
                        
                    }
                }
            }
        }
        .sheet(isPresented: $sheetVisible, content: {
            PhotoView(sheetVisible: $sheetVisible, selectedImage: $selectedIamge)
        })
    }
}

#Preview {
    GalleryView()
}

//
//  PhotoView.swift
//  Grids_D5
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var sheetVisible: Bool
    @Binding var selectedImage: String
    
    var body: some View {
        ZStack{
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack{
                HStack {
                    Spacer()
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "arrow.down.backward.and.arrow.up.forward.circle.fill")
                            .foregroundColor(.brown)
                            .scaleEffect(2)
                            .padding()
                    })
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PhotoView(sheetVisible: Binding.constant(true), selectedImage: Binding.constant("gallery1"))
}

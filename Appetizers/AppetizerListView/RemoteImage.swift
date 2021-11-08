//
//  RemoteImage.swift
//  Appetizers
//
//  Created by VINH HOANG on 08/11/2021.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    @Published var isLoading = false
    
    func load(fromURLString urlString: String) {
        isLoading = true
        NetworkManager.shared.downloadImage(fromURL: urlString) { uiImage in
            guard let uiImage = uiImage else {return}
            DispatchQueue.main.async {
                self.isLoading = false
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("asian-flank-steak").resizable()
    }
}


struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    var body: some View {
        
        ZStack {
            RemoteImage(image: imageLoader.image)
                .onAppear {
                    imageLoader.load(fromURLString: urlString)
                }
            if imageLoader.isLoading {
                LoadingView()
            }
        }
        
    }
}

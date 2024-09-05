//
//  UploadPostViewModel.swift
//  SnapScene
//
//  Created by Aydın KAYA on 30.08.2024.
//

import Foundation
import SwiftUI
import PhotosUI

class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet {
            Task {
                await loadImage(fromItem: selectedImage)
            }
        }
    }
    
    @Published var postImage: Image?
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {   // early exit
            return
        }
        
        do {
            // Veriyi PhotosPickerItem'dan yükle
            if let data = try await item.loadTransferable(type: Data.self) {
                // Veriyi UIImage olarak dönüştür
                if let uiImage = UIImage(data: data) {
                    // Ana iş parçacığında postImage'i güncelle
                    await MainActor.run {
                        self.postImage = Image(uiImage: uiImage)
                    //MainActor.run ile postImage güncellenir. Bu kısım çok önemlidir çünkü SwiftUI'da kullanıcı arayüzü değişikliklerinin ana iş parçacığında (Main Thread) yapılması gerekir. Bu fonksiyon, bu durumu garanti eder.
                    }
                } else {
                    print("Unable to convert data to UIImage.")
                }
            } else {
                print("Unable to load data from item.")
            }
        } catch {
            print("Error loading image: \(error.localizedDescription)")
        }
    }
}

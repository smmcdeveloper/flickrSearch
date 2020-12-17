//
//  PhotoSearchViewModel.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import Foundation

class PhotoSearchViewModel {
    // MARK:- Properties
    private var photos: [Photo]
    
    // MARK:- Dependency Injection (DI)
    init(photos: [Photo] = []) {
        self.photos = photos
    }
    
    // MARK:- Handling methods
    func photo(for indexPath: IndexPath) -> Photo {
    
        return photos[indexPath.row]
    }
    
    func clearPhotos() {
        self.photos = []
    }
    
    func numberOfItems() -> Int {
        return photos.count
    }
    
    func imageUrl(for indexPath: IndexPath) -> String {
        let photo = self.photo(for: indexPath)
        return photo.url_m
    }
}

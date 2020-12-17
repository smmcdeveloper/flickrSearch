//
//  PhotoDetailViewModel.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import Foundation

class PhotoDetailViewModel {
    
    private let photo: Photo
    
    var imageUrl: String {
        return photo.url_m
    }
    
    init(photo: Photo) {
        self.photo = photo
    }
}

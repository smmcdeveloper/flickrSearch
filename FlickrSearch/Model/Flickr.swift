//
//  Flickr.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import Foundation

struct Flickr: Codable {
    let photos: Photos
    let stat: String
}

struct Photos: Codable {
    let photo: [Photo]
}

struct Photo: Codable {
    let url_m: String
    let id: String
    let height_m: Int
    let width_m: Int
}

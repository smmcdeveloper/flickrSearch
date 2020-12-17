//
//  Constants.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import Foundation

struct Constants {
   
    static let APIScheme = "https"
    static let APIHost = "api.flickr.com"
    static let APIPath = "/services/rest"
    
    static let APIparameters = [
        "method" : "flickr.photos.search",
        "api_key" : FlickrConfig.apiKey,
        "sort" : "relevance",
        "per_page" : "20",
        "format" : "json",
        "nojsoncallback" : "1",
        "extras" : "url_m"
    ]
}

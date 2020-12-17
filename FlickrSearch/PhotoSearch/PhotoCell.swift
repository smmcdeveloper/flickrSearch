//
//  PhotoCell.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import UIKit

class PhotoCell: UICollectionViewCell {

    var imageUrl: String? {
        didSet {
            guard let imageUrl = imageUrl else { return }
            photoImageView.loadImageUsingCache(with: imageUrl)
        }
    }
    
    // MARK:- Screen properties
    
    private let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "image_placeholder")
        return iv
    }()
    
    // MARK:- Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        photoImageView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
    }
}

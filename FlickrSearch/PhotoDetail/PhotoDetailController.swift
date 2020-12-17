//
//  PhotoDetailController.swift
//  FlickrSearch
//
//  Created by SMMC on 17/12/2020.
//

import UIKit

class PhotoDetailController: UIViewController {
    
    // MARK:- Properties
    var viewModel: PhotoDetailViewModel?
    
    // MARK:- Screen Properties
    private lazy var scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.contentMode = .scaleToFill
        sv.clipsToBounds = true
        
        sv.alwaysBounceVertical = false
        sv.alwaysBounceHorizontal = false
        sv.showsVerticalScrollIndicator = true
        sv.showsHorizontalScrollIndicator = true
        sv.autoresizesSubviews = false
        
        sv.maximumZoomScale = 3.0
        sv.minimumZoomScale = 1.0
        sv.delegate = self
        return sv
    }()
    
    private let photoDetailImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    // MARK:- Life Cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = .white
        
        setupSubviews()
        
        guard let viewModel = viewModel else { return }
        photoDetailImageView.loadImageUsingCache(with: viewModel.imageUrl)
    }
    
    // MARK:- Screen layout methods
    fileprivate func setupSubviews() {
        let guide = view.safeAreaLayoutGuide
        view.addSubview(scrollView)
        
        scrollView.anchor(top: guide.topAnchor,
                          leading: guide.leadingAnchor,
                          bottom: guide.bottomAnchor,
                          trailing: guide.trailingAnchor)
        
        scrollView.addSubview(photoDetailImageView)
        
        photoDetailImageView.centerInSuperview()
    }
}

// MARK:- Regarding UIScrollViewDelegate methods
extension PhotoDetailController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.photoDetailImageView
    }
}

//
//  AlbumsCell.swift
//  UICollectionViewMultipleSections
//
//  Created by Juan Meza on 8/23/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import Foundation
import UIKit


//It is the bottom part
class AlbumsCell: UICollectionViewCell {
    
    var album: String? {
        
        didSet {
            
            if let imageName = album {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 15
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    
    func setup() {
        
        
        setCellShadow()
        addSubview(imageView)
        
        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop:  0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

//
//  TrackCollectionCell.swift
//  LastFMproj
//
//  Created by Aaron Gerell on 9/4/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class TrackCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var trackImage: UIImageView!
    @IBOutlet weak var trackLabel: UILabel!
    
    
    static let identifier = "TrackCollectionCell"
    
    
    func configure(with album: Album) {
        
        trackLabel.text = album.name
        
        guard let url = Utility.getImageURL(from: album.image) else {
            trackImage.image = #imageLiteral(resourceName: "ph")
            return
        }
        
        
        dlManager.download(url) { [unowned self] dat in
            if let data = dat, let image = UIImage(data: data) {
                self.trackImage.image = image
            }
        }
    }
    
}

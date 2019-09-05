//
//  AlbumTableCell.swift
//  LastFMproj
//
//  Created by Aaron Gerell on 9/4/19.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit

class AlbumTableCell: UITableViewCell {

    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumLabel: UILabel!
    
    static let identifier = "AlbumCell"
    
    
    func configureTable(with artist: Artist) {
        
        albumLabel.text = artist.name
        
        guard let url = Utility.getImageURL(from: artist.image) else {
            albumImage.image = #imageLiteral(resourceName: "ph")
            return
        }
        
        dlManager.download(url) { [unowned self] dat in
            
            if let data = dat, let image = UIImage(data: data) {
                
                self.albumImage.image = image
            }
        }
        
        
        
    }


}

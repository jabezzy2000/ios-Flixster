//
//  TableViewCell.swift
//  flixster
//
//  Created by Jabez Agyemang-Prempeh on 09/03/2023.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.text = movie.movieName
        movieDescriptionLabel.text = movie.movieDescription
        
        Nuke.loadImage(with: movie.artworkUrl100, into: movieImageView)
    }

}

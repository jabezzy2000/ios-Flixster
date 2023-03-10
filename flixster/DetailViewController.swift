//
//  DetailViewController.swift
//  flixster
//
//  Created by Jabez Agyemang-Prempeh on 09/03/2023.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var movie: Movie!

    @IBOutlet weak var detailVotes: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailPopularity: UILabel!
    @IBOutlet weak var detailMovieName: UILabel!
    @IBOutlet weak var detailVoteAverage: UILabel!
    @IBOutlet weak var movieDetailIV: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movie.artworkUrl100, into: movieDetailIV)
        
        detailMovieName.text = movie.movieName
        detailDescription.text = movie.movieDescription
        detailPopularity.text = movie.popularity
        detailVoteAverage.text = movie.voteAverage
        detailVotes.text = movie.vote

    }
    
 

}

//
//  RecommendationViewController.swift
//  What Should I Watch
//
//  Created by Galina Podstrechnaya on 7/21/18.
//  Copyright © 2018 Galina. All rights reserved.
//

import UIKit

class RecommendationViewController: UIViewController {

    @IBOutlet weak var recommendationLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    var movies: [String] = ["The Intouchables", "Leon The Professional", "Ex Machina", "The Matrix", "Pulp Fiction"]
    
    var currentPosition: Int = 0
    
    var showImagesArray = ["intouchables.jpg", "leon.jpg", "machina.jpg", "matrix.jpg", "pulp.jpg"]
    
    @IBAction func pickMovie(_ sender: Any) {
        getRandomMovie()
    }
    
    
    func getRandomMovie() {
        let lengthOfMoviesArray = movies.count
        currentPosition = Int(arc4random_uniform(UInt32(lengthOfMoviesArray)))
    
        recommendationLabel.text = movies[currentPosition]
        movieImage.image = UIImage(named: showImagesArray[currentPosition])
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

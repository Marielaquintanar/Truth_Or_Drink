//
//  ViewController.swift
//  ExtravaganzaApp
//
//  Created by Mariela on 25/06/23.
//

import UIKit

var categoryChosen = "blank"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func extreme(_ sender: Any) {
        performSegue(withIdentifier: "goToTruthOrDare", sender: self)
        categoryChosen = "extreme"
    }
    
    @IBAction func medium(_ sender: Any) {
        performSegue(withIdentifier: "GoToSecond", sender: self)
        categoryChosen = "medium"
    }
    
    @IBAction func easy(_ sender: Any) {
        performSegue(withIdentifier: "GoThird", sender: self)
        categoryChosen = "easy"
        
    }
    
    
    
}


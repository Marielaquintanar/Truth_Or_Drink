//
//  Truth-Dare-ViewController.swift
//  ExtravaganzaApp
//
//  Created by Mariela on 26/06/23.
//

import UIKit
import Foundation


class Truth_Dare_ViewController: UIViewController {
    
    
    
    @IBOutlet weak var QuestionT: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func back_actionn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func T_ACTI(_ sender: Any) {
        guard let url = URL(string: "https://api.truthordarebot.xyz/v1/truth?r") else {
            fatalError("Error")
        }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    if let dict = json as? [String:Any]{
                        // for single values
                        if let value = dict["question"] as? String{
                            DispatchQueue.main.async {
                                self.QuestionT.text = value
                            }
                        }
                    }
                } catch {
                    print(error)
                }
                
            }
        }.resume()
    }
    

   
    @IBAction func drink_ac(_ sender: Any) {
        guard let url = URL(string: "https://api.truthordarebot.xyz/api/dare?r") else {
            fatalError("Error")
        }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    if let dict = json as? [String:Any]{
                        // for single values
                        if let value = dict["question"] as? String{
                            DispatchQueue.main.async {
                                self.QuestionT.text = value
                            }
                        }
                    }
                } catch {
                    print(error)
                }
                
            }
        }.resume()
    }

}


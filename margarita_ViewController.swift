//
//  margarita_ViewController.swift
//  ExtravaganzaApp
//
//  Created by Mariela on 04/07/23.
//

import UIKit

class margarita_ViewController: UIViewController {

    @IBOutlet weak var QuestText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // text4.layer.cornerRadius = 20

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ba(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func th(_ sender: Any) {
        guard let url = URL(string: "https://api.truthordarebot.xyz/v1/truth?pg") else {
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
                                self.QuestText.text = value
                            }
                        }
                    }
                } catch {
                    print(error)
                }
                
            }
        }.resume()
    }
    
    @IBAction func dr(_ sender: Any) {
        guard let url = URL(string: "https://api.truthordarebot.xyz/api/dare?pg") else {
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
                                self.QuestText.text = value
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

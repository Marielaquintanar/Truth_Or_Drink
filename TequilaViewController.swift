//
//  TequilaViewController.swift
//  ExtravaganzaApp
//
//  Created by Mariela on 04/07/23.
//

import UIKit

class TequilaViewController: UIViewController {
    
    // @IBOutlet weak var text2: UITextView!
    
    @IBOutlet weak var QText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  text2.layer.cornerRadius = 20
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_a(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func truth_a(_ sender: Any) {
        guard let url = URL(string: "https://api.truthordarebot.xyz/v1/truth?pg13") else {
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
                                self.QText.text = value
                            }
                        }
                    }
                } catch {
                    print(error)
                }
                
            }
        }.resume()
        
        
    }
    
    @IBAction func drink_a(_ sender: Any) {
        guard let url = URL(string: "https://api.truthordarebot.xyz/api/dare?pg13") else {
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
                                self.QText.text = value
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

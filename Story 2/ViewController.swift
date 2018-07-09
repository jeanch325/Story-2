//
//  ViewController.swift
//  Story 2
//
//  Created by Jean Cho on 7/5/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var name = ""
    
    @IBOutlet weak var userNameTextFieldd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func unwindToInitialViewController(segue: UIStoryboardSegue) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Button to confirm the Name
    @IBAction func nameButton(_ sender: Any) {
        name = userNameTextFieldd.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        if(segue.identifier == "first"){
            let dvc = segue.destination as! FirstStoryViewController
            dvc.name = name
            print(name)
        }
        else if(segue.identifier == "second"){
            let dvc = segue.destination as! SecondStoryViewController
            dvc.name = name
        }
        else if(segue.identifier == "third"){
            let dvc = segue.destination as! ThirdStoryViewController
            dvc.name = name
        }
    }
   
    
    

}


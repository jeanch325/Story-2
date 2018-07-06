//
//  SecondStoryViewController.swift
//  Story 2
//
//  Created by Jean Cho on 7/5/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class SecondStoryViewController: UIViewController {
    
    //stories
    let story1 : String = ""
    let answer1a : String = ""
    let answer1b : String = ""
    
    let story2 : String = ""
    let answer2a : String = ""
    let answer2b : String = ""
    
    let story3 : String = ""
    let answer3a : String = ""
    let answer3b : String = ""
    
    let story4 : String = ""
    
    let story5 : String = ""
    
    let story6 : String = ""

    
    @IBOutlet weak var secondStoryTextView: UITextView!
    @IBOutlet weak var secondTopButton: UIButton!
    @IBOutlet weak var secondBottomButton: UIButton!
    @IBOutlet weak var secondResetButton: UIButton!
    
    var storyIndex : Int = 1

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

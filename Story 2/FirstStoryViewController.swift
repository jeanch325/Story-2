//
//  FirstStoryViewController.swift
//  Story 2
//
//  Created by Jean Cho on 7/5/18.
//  Copyright © 2018 Jean Cho. All rights reserved.
//

import UIKit

class FirstStoryViewController: UIViewController {
    
    //stories
    let story1 : String = "s1"
    let answer1a : String = "1a1"
    let answer1b : String = "1a2"
    
    let story2 : String = "s2"
    let answer2a : String = "2a1"
    let answer2b : String = "2a2"
    
    let story3 : String = "s3"
    let answer3a : String = "3a1"
    let answer3b : String = "3a2"
    
    let story4 : String = "s4"
    
    let story5 : String = "s5"
    
    let story6 : String = "s6"
    
    @IBOutlet weak var firstStoryTextView: UITextView!
    @IBOutlet weak var firstTopButton: UIButton!
    @IBOutlet weak var firstBottomButton: UIButton!
    
    
    var storyIndex : Int = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        restart()

        // call restart function here!!!!!!!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if (storyIndex == 1 || storyIndex == 2) && sender.tag == 1 {  //if it is on story 1 or 2 and user presses top button
            storyIndex = 3
            firstStoryTextView.text = story3
            firstTopButton.setTitle(answer3a, for: .normal)
            firstBottomButton.setTitle(answer3b, for: .normal)
        }
        else if storyIndex == 1 && sender.tag == 2 {
            storyIndex = 2
            firstStoryTextView.text = story2
            firstTopButton.setTitle(answer2a, for: .normal)
            firstBottomButton.setTitle(answer2b, for: .normal)
        }
        else if storyIndex == 2 && sender.tag == 2 {
            storyIndex = 4
            firstStoryTextView.text = story4
            firstTopButton.isHidden = true
            firstBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 1 {
            storyIndex = 6
            firstStoryTextView.text = story6
            firstTopButton.isHidden = true
            firstBottomButton.isHidden = true
        }
        else if storyIndex == 3 && sender.tag == 2 {
            storyIndex = 5
            firstStoryTextView.text = story5
            firstTopButton.isHidden = true
            firstBottomButton.isHidden = true
        }
    }
    
    

    @IBAction func firstResetButton(_ sender: Any) {
        restart()
    }
    
    
    func restart () {
        storyIndex = 1
        firstStoryTextView.text = story1
        firstTopButton.isHidden = false
        firstBottomButton.isHidden = false
        firstTopButton.setTitle(answer1a, for: .normal)
        firstBottomButton.setTitle(answer1b, for: .normal)
    }
    

    
    
}
























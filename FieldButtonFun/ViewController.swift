//
//  ViewController.swift
//  FieldButtonFun
//
//  Created by csit267-13 on 10/14/15.
//  Copyright (c) 2015 CSIT_267. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var thePlace: UITextField!
    @IBOutlet weak var theVerb: UITextField!
    @IBOutlet weak var theNumber: UITextField!
    @IBOutlet weak var theStory: UITextView!
    @IBOutlet weak var theName: UITextField!
    
    let template1 = "The CCBC <name>'s descended upon <place>.\nThey vowed to <verb> night and day, until all <number> pizzas were consumed. \n<place> would never be the same again."
    
    let template2 = "Hey! Mr. <name>, play <number> songs for me.\nI'm not sleepy, and there is\nno <place> I'm <verb>ing to."
    
    let template3 = "'Twas brillig, and the <number> toves\n\tdid gyre and <verb> in the <place>.\nAll mimsy were the <name>'s,\n\tand the mome raths outgrabe."
    
    var count = 1
    
    @IBAction func createStory(sender: AnyObject) {
        
    
        
        switch count {
            case 1:
                self.theStory.text=self.template1
                self.count=self.count + 1
                storyLabel.text = "Story: (1 of 3)"
         
            case 2:
                self.theStory.text=self.template2
                self.count = self.count + 1
                storyLabel.text = "Story: (2 of 3)"
            
            case 3:
                self.theStory.text = self.template3
                self.count = 1
                storyLabel.text = "Story: (3 of 3)"
            
        default:
            self.count = 1
            createStory(self)
        }
        
        
        theStory.text = theStory.text.stringByReplacingOccurrencesOfString("<name>", withString: theName.text!)
        theStory.text=theStory.text.stringByReplacingOccurrencesOfString("<place>", withString: thePlace.text! )
        theStory.text=theStory.text.stringByReplacingOccurrencesOfString("<verb>", withString: theVerb.text!)
        theStory.text=theStory.text.stringByReplacingOccurrencesOfString("<number>", withString: theNumber.text!)
        
        deleteText()
    }
    
    func deleteText() {
        thePlace.text = nil
        theNumber.text = nil
        theVerb.text = nil
        theName.text = nil
    }
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        thePlace.resignFirstResponder()
        theVerb.resignFirstResponder()
        theNumber.resignFirstResponder()
        theName.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


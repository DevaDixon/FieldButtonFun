//
//  ViewController.swift
//  FieldButtonFun
//
//  Created by csit267-13 on 10/14/15.
//  Copyright (c) 2015 CSIT_267. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var thePlace: UITextField!
    @IBOutlet weak var theVerb: UITextField!
    @IBOutlet weak var theNumber: UITextField!
    @IBOutlet weak var theTemplate: UITextView!
    @IBOutlet weak var theStory: UITextView!
    
    @IBAction func createStory(sender: AnyObject) {
        theStory.text=theTemplate.text
    theStory.text=theStory.text.stringByReplacingOccurrencesOfString("<place>", withString: thePlace.text! )
        
        theStory.text=theStory.text.stringByReplacingOccurrencesOfString("<verb>", withString: theVerb.text!)
        theStory.text=theStory.text.stringByReplacingOccurrencesOfString("<number>", withString: theNumber.text!)
        
    }
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        thePlace.resignFirstResponder()
        theVerb.resignFirstResponder()
        theNumber.resignFirstResponder()
        theTemplate.resignFirstResponder()
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


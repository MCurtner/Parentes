//
//  DetailsViewController.swift
//  Parentes
//
//  Created by Matthew Curtner on 12/14/15.
//  Copyright © 2015 Matthew Curtner. All rights reserved.
//

import UIKit
import Kanna

class DetailsViewController: UIViewController{
    
    var passedString: String?
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        
        textView.text = passedString
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

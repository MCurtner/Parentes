//
//  MenuViewController.swift
//  Parentes
//
//  Created by Matthew Curtner on 12/14/15.
//  Copyright © 2015 Matthew Curtner. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {


    @IBOutlet weak var materskaButton: UIButton!
    @IBOutlet weak var zakladniButton: UIButton!
    @IBOutlet weak var obcanskeButton: UIButton!
    @IBOutlet weak var materskaBtnImage: UIImageView!
    @IBOutlet weak var zakladniBtnImage: UIImageView!
    @IBOutlet weak var obcanskeBtnImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        roundButton(materskaButton)
        roundButton(zakladniButton)
        roundButton(obcanskeButton)
        
        circleImage(materskaBtnImage)
        circleImage(zakladniBtnImage)
        circleImage(obcanskeBtnImage)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func roundButton(button: UIButton) {
        button.layer.cornerRadius = 20; // this value vary as per your desire
        button.clipsToBounds = true;
    }
    
    func circleImage(image: UIImageView) {
        image.layer.borderWidth = 3.0
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.whiteColor().CGColor
        image.layer.cornerRadius = image.frame.size.width/2
        image.clipsToBounds = true
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        
        
    }
    

}

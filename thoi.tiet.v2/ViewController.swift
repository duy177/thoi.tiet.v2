//
//  ViewController.swift
//  thoi.tiet.v2
//
//  Created by ios on 10/13/16.
//  Copyright © 2016 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var quote = ["Since we cannot change reality, let us change the eyes which see reality.",
                 
                 "Without a struggle, there can be no progress.",
                 
                 "If you don't like something, change it. If you can't change it, change your attitude."]
    
    var city = ["Courtneyfurt","Ha Noi",
                "South Wilford",
                "East Rosendo"]

    var images = ["Blood","Moon","Sun"]
    
    var isCel : Bool = true
  
   
   
    @IBOutlet weak var lbl_city: UILabel!
 
    @IBOutlet weak var backgroundImageview: UIImageView!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var quoteLable: UILabel!
    


    
 
    
   
    @IBAction func randomButton_action(_ sender: AnyObject)
        {
    
        
        let cityindex = Int(arc4random_uniform(UInt32(city.count)))
        lbl_city.text = city[cityindex]
        
        
        let quoteIndex = Int(arc4random_uniform(UInt32(quote.count)))
        quoteLable.text = quote[quoteIndex]
        
        let imageIndex = Int(arc4random_uniform(UInt32(images.count)))
        backgroundImageview.image = UIImage.init(named: images[imageIndex])
        getTemp()
        
        }
    
    
   
    func getTemp() -> Void
        {
        
        let randomNumber = String(format: "%2.1f", randomTemp())
        
        tempLabel.text = randomNumber
        }
    
    func randomTemp() -> Double {
        
        if isCel
        {
            return Double(arc4random_uniform(38) + 14) + Double(arc4random()) / Double(INT32_MAX)
        }
        else
        {
            return (Double(arc4random_uniform(38) + 14) + Double(arc4random()) / Double(INT32_MAX)) * 1.8 + 2
        }
        
    }
    
    


}


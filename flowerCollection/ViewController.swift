//
//  ViewController.swift
//  flowerCollection
//
//  Created by Gyroball on 2016/04/30.
//  Copyright © 2016年 Gyroball. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    // MARK: outlet
    @IBOutlet weak var flowerLabel: UILabel!
    @IBOutlet weak var flowerImageView: UIImageView!

    // MARK: property
    var count: Int = 0
    let flowerNames: [String] = ["rose",
                                 "nemo",
                                 "sunflower",
                                 "lily",
                                 "tulip"]
    let colors: [UIColor] = [UIColor.redColor(),
                             UIColor.blueColor(),
                             UIColor.yellowColor(),
                             UIColor.whiteColor(),
                             UIColor.orangeColor()]
    let imageNames: [String] = ["rose",
                                 "nemo",
                                 "sunflower",
                                 "lily",
                                 "tulip"]
    // MARK: Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Gesture
    @IBAction func onTappedButton(sender: AnyObject)
    {
        self.setImageView()
    }
    
    func setImageView()
    {
        count += 1
        if count == flowerNames.count {
            count = 0
        }

        flowerLabel.text = flowerNames[count]
        flowerLabel.textColor = colors[count]
        flowerImageView.image = UIImage(named: String(imageNames[count]))

    }
}


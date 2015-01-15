//
//  ViewController.swift
//  FunFacts
//
//  Created by Rishabh Parikh on 1/7/15.
//  Copyright (c) 2015 Rishabh Parikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    var x = 1;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.factsArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact(sender: AnyObject) {
        var color = colorWheel.randomColor()
        view.backgroundColor = color;
        funFactButton.tintColor = color;
        funFactLabel.text = factBook.randomFact()
    }

}


//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Zachary Banken on 5/4/18.
//  Copyright © 2018 Zachary Banken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
        
    }
    
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        
        updateElement()
    }
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    var currentElementIndex = 0
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
    }
    
}


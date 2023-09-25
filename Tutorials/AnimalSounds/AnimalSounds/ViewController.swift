//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Zachary Banken on 5/6/18.
//  Copyright © 2018 Zachary Banken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var animalSoundsLabel: UILabel!
    
    
    @IBAction func catButtonTapped(_ sender: UIButton) {
        animalSoundsLabel.text = "Meow!"
        meowSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: UIButton) {
        animalSoundsLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: UIButton) {
        animalSoundsLabel.text = "Moo!"
        mooSound.play()
    }
    
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")

}


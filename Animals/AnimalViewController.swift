//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    
    @IBOutlet weak var largeTextLabel: UILabel!
    
    @IBOutlet weak var smallTextLabel: UILabel!
    var animal:  String?
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        if let animal = animal {
            smallTextLabel.text = animal
            
            let animalEmoji = toEmoji(name: animal)
            largeTextLabel.text = animalEmoji
            navigationItem.title = animal
        }
    
    }
    
    func toEmoji(name: String) -> String {
        
        switch name {
            
        case "Dog":
        return "🐶"
            
        case "Cat":
        return "🐱"
            
        case "Mouse":
        return "🐭"
            
        case "Hamster":
        return "🐹"
            
        case "Bunny":
        return "🐰"
            
        case "Panda":
        return "🐼"
            
        case "Lion":
        return "🦁"
            
        case "Pig":
        return "🐷"
            
        case "Frog":
            return "🐸"
            
        case "Octopus":
            return "🐙"
            
        default:
            return ""
            
        }
        
    }
        
    
    

    
    
}







//
//  ViewController.swift
//  MultipleLocalization
//
//  Created by Local Administrator on 10/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var randomButton: UIButton!
    
    let funFactData = ["Bats are the only mammal that can actually fly. 🦇",
                       "It’s impossible to hum while holding your nose, try it! 👃",
                       "It's illegal to own just one guinea pig in Switzerland. \nIt's considered animal abuse because they're social beings and get lonely. 🐹",
                       "The Japanese word 'Kuchi zamishi' is the act of eating when you're not hungry because your mouth is lonely. 🇯🇵",
                       "Octopuses have three hearts. \nOne heart circulates blood around the body, while the other two pump it past the gills, to pick up oxygen. 🐙"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomButton.layer.cornerRadius = 8
        funFactLabel.text = funFactData[0]
    }

    @IBAction func randomize(_ sender: Any) {
        let randomFacts = funFactData.shuffled()
        let funFact = randomFacts[0]
        
        funFactLabel.text = funFact
    }
    
}


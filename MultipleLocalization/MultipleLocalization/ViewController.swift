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
    
    let funFactData = ["funFact1",
                       "funFact2",
                       "funFact3",
                       "funFact4",
                       "funFact5",
                       "funFact6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomButton.layer.cornerRadius = 8
        funFactLabel.text = funFactData[0].localized()
    }

    @IBAction func randomize(_ sender: Any) {
        let randomFacts = funFactData.shuffled()
        let funFact = randomFacts[0]
        
        funFactLabel.text = funFact.localized()
    }
    
}

extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
        
    }

}


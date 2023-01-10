//
//  ViewController.swift
//  Destini
//
//  Created by Jeevan Chandra Joshi on 10/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var AButton: UIButton!
    @IBOutlet var BButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }

    @IBAction func choiceSelected(_ sender: UIButton) {
        Story.nextStory(sender.currentTitle)
        updateUi()
    }

    func updateUi() {
        storyLabel.text = Story.getStory()
        AButton.setTitle(Story.getChoice1(), for: .normal)
        BButton.setTitle(Story.getChoice2(), for: .normal)
    }
}

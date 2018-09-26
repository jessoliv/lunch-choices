//
//  ViewController.swift
//  Lunch Choices
//
//  Created by Jessica Olivieri on 9/25/18.
//  Copyright © 2018 Jessica Olivieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// 3 switches
	@IBOutlet weak var peanutAllergy: UISwitch!
	@IBOutlet weak var glutenAllergy: UISwitch!
	@IBOutlet weak var vegetarian: UISwitch!
	
	//food image and label
	@IBOutlet weak var choiceImage: UIImageView!
	@IBOutlet weak var choiceLabel: UILabel!
	
	var lunchChoices = ["Garden Salad", "PB_J Sandwich", "Roast Beef Sandwich"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	

	@IBAction func showChoicesPressed(_ sender: UIButton) {
		var choice = ""
		if !vegetarian.isOn && !glutenAllergy.isOn {
			choice = "Roast Beef Sandwich"
		} else if vegetarian.isOn && peanutAllergy.isOn {
			choice = "Garden Salad"
		} else {
			choice = "PB_J Sandwich"
		}
		choiceLabel.text = choice
		choiceImage.image = UIImage(named: choice)
	}
	
}


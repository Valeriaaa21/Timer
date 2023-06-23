//
//  ViewController.swift
//  timer
//
//  Created by Валерия  on 13.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVC" {
            if let secondVC = segue.destination as? SecondViewController {
                secondVC.time = Int(textfield.text!) ?? 0
            }
        }
    }
}


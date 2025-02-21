//
//  ViewController.swift
//  hangman
//
//  Created by Mathieu Ponal on 21/02/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let a = sender! as! HangmanViewController
        a.Level = 2;
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}


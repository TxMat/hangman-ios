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
        let btn = sender! as! UIButton
        print("tag = \(btn.tag)")
        if let a = segue.destination as? HangmanViewController {
            a.Level = btn.tag
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}


//
//  HangmanViewController.swift
//  hangman
//
//  Created by Mathieu Ponal on 21/02/2025.
//

import UIKit

class HangmanViewController: UIViewController {
    
    var Level: Int = 1;
    
    let word_list: [String] = [
        "APPLE",
        "BANANA",
        "WAGON",
        "MOUSE",
        "WALLET",
        "SCREEN",
        "PHONE",
        "MACEDONIA",
        "PEPPERONI",
    ]
    var secret_word_var: String = ""
    
    @IBOutlet weak var hang_image: UIImageView!
    @IBOutlet weak var alert: UILabel!
    @IBOutlet weak var secret_word: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Level)
        secret_word.text = ""
        let nb = Int.random(in: 0..<word_list.count)
        secret_word_var = word_list[nb]
        var cnt = 0;
        for c in secret_word_var {
            if (cnt == 0 && Level < 2) || (cnt == secret_word_var.count - 1 && Level < 1) {
                secret_word.text?.append(c)
            } else {
                secret_word.text?.append("-")
            }
            cnt += 1
        }
    }
    
    @IBAction func letter_pressed(_ sender: UIButton) {
        let ltr = sender.titleLabel!.text!.first!
        var tmp = secret_word.text!
        sender.isEnabled = false
        if secret_word_var.contains(ltr) && !tmp.contains(ltr) {
            // reveal
            for (c, v) in zip(secret_word_var, tmp) {
                if c == ltr {
                    v = c
                } else {
                    secret_word.text?.append("-")
                }
            }
            secret_word.text! = tmp
        } else {
            inc_hangman()
        }
    }
    
    func inc_hangman() {
        let new_img: UIImage = UIImage(imageLiteralResourceName: "Pendu0")
        hang_image.image = ""
    }
    
    func GameOver() {
        
    }
    
    
    
}

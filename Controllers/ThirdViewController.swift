//
//  3rdViewController.swift
//  Lesson4
//
//  Created by Mac on 03.12.2020.
//

import UIKit

class ThirdViewController: UIViewController {

    
    var changeColor:Bool = false
    var pinkColor: UIColor?
    var lCP:CGFloat = 0
    var rCP:CGFloat = 0
    var dir:Bool = true
    @IBOutlet weak var leftConstraintPink: NSLayoutConstraint!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var rigthConstraintPink: NSLayoutConstraint!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var testG: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        pinkColor = pinkView.backgroundColor
        lCP = leftConstraintPink.constant
        rCP = rigthConstraintPink.constant
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapGreenView(_ sender: UITapGestureRecognizer) {
        UIView.transition(from: greenView, to: blueView, duration: 1, options: .transitionFlipFromLeft, completion: nil)
    }
    
    @IBAction func tapPinkView(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 2, animations: {
            self.changeColor.toggle()
            if (self.changeColor) {
                self.pinkView.backgroundColor = .systemYellow
            }
            else {
                self.pinkView.backgroundColor = self.pinkColor
            }
            self.dir.toggle()
            if (self.dir) {
                self.leftConstraintPink.constant = self.lCP - 70
                self.rigthConstraintPink.constant = self.rCP + 70
            } else {
                self.leftConstraintPink.constant = self.lCP + 70
                self.rigthConstraintPink.constant = self.lCP - 70
            }
            UIView.animate(withDuration: 3) {
                self.view.layoutIfNeeded()
            }
        })
    }
}

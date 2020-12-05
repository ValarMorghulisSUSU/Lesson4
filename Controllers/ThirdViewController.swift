//
//  3rdViewController.swift
//  Lesson4
//
//  Created by Mac on 03.12.2020.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var blueView: UIView!
    
    @IBOutlet weak var pinkView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapGreenView(_ sender: UITapGestureRecognizer) {
        UIView.transition(from: greenView, to: blueView, duration: 3, options: UIView.AnimationOptions(rawValue: 1)) { finished in }
    }
    
    @IBAction func tapPinkView(_ sender: UITapGestureRecognizer) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}

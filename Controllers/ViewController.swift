//
//  ViewController.swift
//  Lesson4
//
//  Created by Mac on 03.12.2020.
//

import UIKit


class ViewController: UIViewController{

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openNewWindow(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewWindow") as! newController
        vc.newText = myLabel.text! + ", again!"
        navigationController?.pushViewController(vc, animated: true)
    }
    
}



class newController:UIViewController { 
    var newText:String = ""
    @IBOutlet weak var updatableLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateText(text: newText)
        // Do any additional setup after loading the view.
    }
    func updateText(text:String) {
        updatableLabel.text = text
    }

}


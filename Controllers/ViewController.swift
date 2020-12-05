//
//  ViewController.swift
//  Lesson4
//
//  Created by Mac on 03.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "showSecond" else { return }
            guard let destination = segue.destination as? SecondViewController else { return }
            destination.name = "Андрей"
        }
    
    @IBAction func openNewWindow(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewWindow")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}



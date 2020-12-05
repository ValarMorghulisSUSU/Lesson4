//
//  SecondViewController.swift
//  Lesson4
//
//  Created by Mac on 03.12.2020.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    lazy var finished: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startAnimation(_ sender: UITapGestureRecognizer) {
        self.topConstraint.constant = 200
        UIView.animate(withDuration: 2) {
            self.view.layoutIfNeeded()
        } completion: { finished in if(finished)
        {
            self.leftConstraint.constant = 10
            UIView.animate(withDuration: 3) {
                self.view.layoutIfNeeded()
            } completion: { finished in if(finished)
            {
                self.leftConstraint.constant = 250
                UIView.animate(withDuration: 3) {
                    self.view.layoutIfNeeded()
                } completion: { finished in
                    if(finished)
                    {
                        self.topConstraint.constant = 30
                        self.leftConstraint.constant = 156
                        UIView.animate(withDuration: 3) {
                            self.view.layoutIfNeeded()
                        } completion: { finished in
                        }

                    }
                    
                }

            }

        }
            
        }
        
        }
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

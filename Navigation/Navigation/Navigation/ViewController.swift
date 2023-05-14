//
//  ViewController.swift
//  Navigation
//
//  Created by 이승재 on 2023/05/11.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    
    
    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    
    var isOn = true
    
    @IBOutlet var txMessage: UITextField!
    
    @IBOutlet var imgView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton"{
            editViewController.textWayValue = "segue : use button"
        }else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use Bar button"
        }
        editViewController.textMessage = txMessage.text!
        editViewController.delegate = self
        imgView.image = imgOn
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn{
            imgView.image = imgOn
            self.isOn = true
        }
        else{
            imgView.image  = imgOff
            self.isOn = false
        }
    }
}


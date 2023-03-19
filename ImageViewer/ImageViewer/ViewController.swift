//
//  ViewController.swift
//  ImageViewer
//
//  Created by 이승재 on 2023/03/18.
//

import UIKit

class ViewController: UIViewController {
    var numImage:Int32 = 1
    var maxImage:Int32 = 6
    
    
    @IBOutlet var imgViewer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }


    @IBAction func nxtBtn(_ sender: UIButton) {
        if(numImage >= maxImage){
            numImage = 1
        }else{
            numImage = numImage + 1
        }
        
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }
    @IBAction func beforeBtn(_ sender: UIButton) {
        if(numImage <= 1){
            numImage = maxImage
        }else{
            numImage = numImage - 1
        }
    
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }
}


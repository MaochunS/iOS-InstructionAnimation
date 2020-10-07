//
//  ViewController.swift
//  InstructionAnimation
//
//  Created by maochun on 2020/10/7.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var backView : UIView = {
       let theView = UIView()
        theView.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.6)
        theView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(theView)
        
        NSLayoutConstraint.activate([
            theView.topAnchor.constraint(equalTo: self.view.topAnchor),
            theView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            theView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            theView.rightAnchor.constraint(equalTo: self.view.rightAnchor)
        ])
        
        return theView
    }()
    
    lazy var theImgView : UIImageView = {
        let theView = UIImageView()
        theView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(theView)
        
        NSLayoutConstraint.activate([
            theView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            theView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        return theView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        let _ = self.backView
        
        var aniImageArr = [UIImage]()
        for i in 1...20{
            let num = String(format: "%02d", i)
            aniImageArr.append(UIImage(named: "firstimg_01_\(num)")!)
        }
        
        self.theImgView.animationImages = aniImageArr
        self.theImgView.animationDuration = 5
        self.theImgView.image = aniImageArr[0]
        self.theImgView.startAnimating()
    }


}


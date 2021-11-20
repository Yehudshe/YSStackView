//
//  ViewController.swift
//  YSStackView
//
//  Created by Yehudshe on 11/20/2021.
//  Copyright (c) 2021 Yehudshe. All rights reserved.
//

import UIKit
import YSStackView

class ViewController: UIViewController {
    
    var container = UIView()
    
    
     var view1:UIView {
        let view = UIView()
        view.backgroundColor = .green
    return view
    }
    
    
     var view2:UIView {
        let view = UIView()
        view.backgroundColor = .purple
        
    return view
    }
    
    var btn1:UIButton {
        let view = UIButton()
        view.backgroundColor = .purple
        
    return view
    }
    var btn2:UIButton {
        let view = UIButton()
        view.backgroundColor = .yellow
        view.setTitle("HELLO WORLD! BITCH!", for: .normal)
        view.titleLabel?.font = UIFont(name: UIFont.familyNames[0], size: 20)
        view.setTitleColor(.red, for: .normal)
        
        
        view.tintColor = .blue
        
    return view
    }
    var btn3:UIButton {
        let view = UIButton()
        view.backgroundColor = .brown
        
    return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var views = [UIView]()
//        for _ in 0...20 {
//            let btn = UIView()
//            btn.frame.size = CGSize(width: 100, height: 50)
//            btn.backgroundColor = .green
//            views.append(btn)
//
//        }
        
        
        
        container.backgroundColor = .red
        view.addSubview(container)
        container.edgeTo(view, safeArea: .all)
        container.backgroundColor = .red
        container.edgeTo(view)
        
        container.VStack(btn1,
                         btn2,btn3,
        spacing: 20,distribution: .fillEqually)
        
        
        
        
        
        
        
    }


}

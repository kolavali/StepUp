//
//  ViewController.swift
//  StepUp
//
//  Created by Sudha Kolavali on 9/3/21.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Add Activity", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    let colors:  [UIColor] = [
        .systemPink,
        .systemBlue,
        .systemYellow,
        .systemOrange,
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(button)
        button.frame = CGRect(x: 20,
                              y: view.frame.size.height - 50,
                              width: view.frame.size.width - 40, height: 50)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func didTapButton() {
        view.backgroundColor = colors.randomElement()
    }


}


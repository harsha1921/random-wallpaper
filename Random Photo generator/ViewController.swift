//
//  ViewController.swift
//  Random Photo generator
//
//  Created by Harsha Tripathi on 26/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    } ()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Random Photo", for: .normal)
        return button
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = view.center
        
        view.addSubview(button)
        button.frame = CGRect(x: 30, y: view.frame.size.height-50-view.safeAreaInsets.bottom, width: view.frame.size.width-60, height: 55)
        
        getRandomPhoto()
    }
    @objc func didTapButton() {
        getRandomPhoto()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    
  func  getRandomPhoto() {
        let urlString =  "https://source.unsplash.com/user/erondu/1600x900"
        
        
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }
    }




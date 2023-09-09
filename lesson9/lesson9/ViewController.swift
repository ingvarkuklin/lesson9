//
//  ViewController.swift
//  less9(basic refactor)
//
//  Created by Игорь Куклин on 07.09.2023.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var turnButton: UIButton!
    
    @IBOutlet var viewsCollection: [UIView]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let arrayView = [redView, orangeView, greenView]
        
        for view in arrayView {
            configureView(view!)
        }
        
//        configureView(redView)
//        configureView(orangeView)
//        configureView(greenView)
    }
    
    //MARK: - пользовательские функции
    
    func configureView(_ view: UIView) {
        view.layer.cornerRadius = 100 // Оркугление
        view.layer.borderWidth = 2      // Ширина границы
        view.layer.borderColor = UIColor.black.cgColor // Цвет заливки границы
        view.backgroundColor = .clear
    }
    
    
    
    //MARK: - Actions(Действия)
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if  redView.backgroundColor == .clear && orangeView.backgroundColor == .clear && greenView.backgroundColor == .clear  {
            redView.backgroundColor = .red
        } else if redView.backgroundColor == .red {
            redView.backgroundColor = .clear
            orangeView.backgroundColor = .orange
        } else if orangeView.backgroundColor == .orange {
            orangeView.backgroundColor = .clear
            greenView.backgroundColor = .green
        } else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .clear
        }
        
        
        
       
    }
}



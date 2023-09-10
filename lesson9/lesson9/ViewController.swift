//
//  ViewController.swift
//  less9(basic refactor)
//
//  Created by Игорь Куклин on 07.09.2023.
//


import UIKit
import SnapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    let blueView = UIView(frame: .zero)
    
    @IBOutlet weak var turnButton: UIButton!
    
    @IBOutlet var viewsCollection: [UIView]!
    
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arrayView = [redView, orangeView, greenView, blueView]
        //Отображение UIView через цикл
        for view in arrayView {
            configureView(view!)
        }
        //Отображение UIView через вызов функции каждого UIView
//        configureView(redView)
//        configureView(orangeView)
//        configureView(greenView)
        
        
        view.addSubview(blueView) // ViewController->view->blue
        blueView.snp.makeConstraints { make in
            make.width.height.equalTo(100) // Если у ширины и высоты одинаковые значения, то можно их перечислить в одну строку
            make.centerX.equalToSuperview() // center заменяет centerX и centerY
            make.top.equalTo(greenView.snp.bottom).offset(22)
        }
    }
    
    //MARK: - пользовательские функции
    
    func configureView(_ view: UIView) {
        view.layer.cornerRadius = redViewHeightConstraint.constant / 2 // Оркугление (привязка IBOutlet, чтобы не менять каждый раз в коде значение constant, его делим на 2 т.к. обрезается кажый угол)
        view.layer.borderWidth = 2      // Ширина границы
        view.layer.borderColor = UIColor.black.cgColor // Цвет заливки границы
        view.backgroundColor = .clear
    }
    
    
    
    //MARK: - Actions(Действия)
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if  redView.backgroundColor == .clear && orangeView.backgroundColor == .clear && greenView.backgroundColor == .clear && blueView.backgroundColor == .clear  {
            redView.backgroundColor = .red
        } else if redView.backgroundColor == .red {
            redView.backgroundColor = .clear
            orangeView.backgroundColor = .orange
        } else if orangeView.backgroundColor == .orange {
            orangeView.backgroundColor = .clear
            greenView.backgroundColor = .green
        } else if greenView.backgroundColor == .green {
            greenView.backgroundColor = .clear
            blueView.backgroundColor = .blue
        } else if blueView.backgroundColor == .blue {
            blueView.backgroundColor = .clear
        }
        
        
        
       
    }
}



//
//  ViewController.swift
//  less9(basic refactor)
//
//  Created by Игорь Куклин on 07.09.2023.
//


import UIKit
import SnapKit

class SvetoforController: UIViewController {
    
    @IBOutlet weak var firstSectionView: SvetoforSectionView!
    @IBOutlet weak var secondSectionView: SvetoforSectionView!
    @IBOutlet weak var thirdSectionView: SvetoforSectionView!
    
    @IBOutlet weak var turnButton: UIButton!
    @IBOutlet weak var redViewHeightConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    //MARK: - пользовательские функции
    
//    func configureView(_ view: UIView) {
////        view.layer.cornerRadius = redViewHeightConstraint.constant / 2 // Оркугление (привязка IBOutlet, чтобы не менять каждый раз в коде значение constant, его делим на 2 т.к. обрезается кажый угол)
////        view.layer.borderWidth = 2      // Ширина границы
////        view.layer.borderColor = UIColor.black.cgColor // Цвет заливки границы
////        view.backgroundColor = .clear
//    }
    
    
    
    //MARK: - Actions(Действия)
    
    @IBAction func turnButtonAction(_ sender: Any) {
        if firstSectionView.backgroundColor == .clear && secondSectionView.backgroundColor == .clear && thirdSectionView.backgroundColor == .clear {
            firstSectionView.backgroundColor = .red
        } else if firstSectionView.backgroundColor == .red {
            firstSectionView.backgroundColor = .clear
            secondSectionView.backgroundColor = .orange
        } else if secondSectionView.backgroundColor == .orange {
            secondSectionView.backgroundColor = .clear
            thirdSectionView.backgroundColor = .green
        } else if thirdSectionView.backgroundColor == .green {
            thirdSectionView.backgroundColor = .clear
        }
        
        
        
       
    }
}



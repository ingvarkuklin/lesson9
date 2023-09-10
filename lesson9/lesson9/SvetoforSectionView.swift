//
//  SvetoforSectionView.swift
//  lesson9
//
//  Created by Игорь Куклин on 11.09.2023.
//

import UIKit

class SvetoforSectionView: UIView {

    override func awakeFromNib() {
        
        // момент создания из сториборда объекта
        super.awakeFromNib()
        
        // При создании объектов создаем форму секции
        // self. необъязательно писать 
        self.layer.cornerRadius = frame.size.width / 2 // Оркугление
        self.layer.borderWidth = 2 // Ширина границы
        self.layer.borderColor = UIColor.black.cgColor // Цвет границы
        self.backgroundColor = .clear // цвет заливки нет
        
    }

}

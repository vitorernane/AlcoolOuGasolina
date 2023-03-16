//
//  HomeVC.swift
//  AlcoolOuGasolina
//
//  Created by Vitor Ernane Guedes on 04/03/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var screen: HomeScreen?
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        // Do any additional setup after loading the view.
    }
    
}
    
extension HomeVC: HomeScreenDelegate {
    func tappedStartButton() {
        print(#function)
    }
    
}
    


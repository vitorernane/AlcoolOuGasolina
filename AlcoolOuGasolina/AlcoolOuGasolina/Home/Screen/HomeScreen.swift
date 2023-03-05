//
//  HomeScreen.swift
//  AlcoolOuGasolina
//
//  Created by Vitor Ernane Guedes on 04/03/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        /* isso serve para que o xcode respeite as constraints que forem setadas manualmente */
        image.translatesAutoresizingMaskIntoConstraints = false
        /* aqui ele está buscando dentro do arquivo a imagem como nome BG HOME para inserir ela no background */
        image.image = UIImage(named: "BG HOME")
        /* contentMode é a forma em que a imagem irá se enquadrar na tela, no caso foi selecionado o AspectFit */
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "LOGO")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    /* Para inicializar é só digitar o init e selecionar o que tem frame no campo de seleção */
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        /* aqui você está adicionando uma subview na viewController, avisando que agora ela existe e faz parte do projeto */
        addSubview(backgroundImageView)
        addSubview(logoAppImageView)
        configConstraints()
        
        
    }
    /* aqui o Xcode já reporta o erro com um Fix, selecione-o e já irá aparecer tudo digitado */
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    /* Configurando as constraints da tela */
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
        backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
        backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
        backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
        backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        logoAppImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
        logoAppImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        logoAppImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        
        ])
    }
    
}

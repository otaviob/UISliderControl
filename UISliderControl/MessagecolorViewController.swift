//
//  MessageColorViewController.swift
//  ExercicioMensagens
//
//  Created by Otavio Brito on 09/12/20.
//

import UIKit

class MessageColorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        lbMessage.text = message.text
        
        // Passar cor da label da classe anterior
        lbMessage.textColor = message.textColor
       
        lbMessage.backgroundColor = message.backgroundColor
    }
    
    // Sair de uma tela e indo pra outra passando informações
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Recupera viewController
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    }
    
    
    
    
}

extension MessageColorViewController: ColorpickerProtocol {
    func applyColor(color: UIColor) {
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
}

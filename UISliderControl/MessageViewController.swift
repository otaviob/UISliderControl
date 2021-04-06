//
//  MessageViewController.swift
//  ExercicioMensagens
//
//  Created by Otavio Brito on 09/12/20.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Instanciar o objeto message
        message = Message()
}
    
    // Sair de uma tela e indo pra outra passando informações
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Recupera viewController
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
       
    
    
    
   
    
}


// 
extension MessageViewController: UITextFieldDelegate {
    
    // Quando o usuario clica no butão concluido
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Significa que o texto dele vai ser o texto que eu vou recuperar do texField
        message.text = textField.text!
        // Alem disso eu vou trocar o texto do meu label para esse mesmo texto aqui
        lbMessage.text = textField.text!
        // Sair teclado
        textField.resignFirstResponder()
        
        return true
    }
}
extension MessageViewController: ColorpickerProtocol {
    
    // metodo
    func applyColor(color: UIColor) {
        
        // Pega o label message e troca o textcolor
        lbMessage.textColor = color
        
        // Pega o objeto message e passaa cor escolhida para o usuario
        message.textColor = color
    }
}

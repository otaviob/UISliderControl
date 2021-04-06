//
//  ScreenColorViewController.swift
//  ExercicioMensagens
//
//  Created by Otavio Brito on 09/12/20.
//

import UIKit

class ScreenColorViewController: BaseViewController {

    @IBOutlet weak var viBorder: UIView!
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbMessage.text = message.text
        
        // Passar cor da label da classe anterior
        lbMessage.textColor = message.textColor
        
        lbMessage.backgroundColor = message.backgroundColor
       
    }
    
    // Quando a tela voltar a aparecer, ela volta com a navigation bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    // Sair de uma tela e indo pra outra passando informações
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Recupera viewController
        let vc = segue.destination as! ResultViewController
        vc.message = message
    }
   
    @IBAction func changeBorder(_ sender: UISwitch) {
        
        //deixa a background branca da label viBorder
        viBorder.backgroundColor = sender.isOn ? .white : .clear

    }
}

extension ScreenColorViewController: ColorpickerProtocol {
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}

//
//  ResultViewController.swift
//  ExercicioMensagens
//
//  Created by Otavio Brito on 09/12/20.
//

import UIKit

class ResultViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Esconde a navigation bar
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // Qualquer lugar que vc toque na tela, vc volta para tela anterior
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }

 

}

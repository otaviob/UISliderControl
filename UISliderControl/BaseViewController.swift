//
//  BaseViewController.swift
//  ExercicioMensagens
//
//  Created by Otavio Brito on 09/12/20.
//

import UIKit

class BaseViewController: UIViewController {
  
    

    @IBOutlet weak var lbMessage: UILabel!
    
    // Todas telas tem acesso a um message
    var message: Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        if let reference = self as? ColorpickerProtocol {
            
            // cria uma constante para chamar a tela ColorPickerViewController
            let colorPicker = storyboard?.instantiateViewController(identifier: "ColorPickerViewController") as! ColorPickerViewController
            
            // deixa a tela por cima do contesto atual
            colorPicker.modalPresentationStyle = .overCurrentContext
            
            // Deixa a tela cheia
            colorPicker.modalPresentationStyle = .fullScreen
            
            colorPicker.reference = reference
            
            // Apresenta a viewController indicada, no caso col orpicker
            present(colorPicker, animated: true, completion: nil)
        }
    }

}

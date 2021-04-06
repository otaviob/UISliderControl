//
//  ColorPickerViewController.swift
//  ExercicioMensagens
//
//  Created by Otavio Brito on 10/12/20.
//

import UIKit

protocol ColorpickerProtocol: class {
    func applyColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
  
  
    
    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    // Referencia da tela colorpicker, acesso a classe
    weak var reference: ColorpickerProtocol?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // Action do botao escolher cor / dissmiss (fecha a tela)
    @IBAction func chooseColor(_ sender: Any) {
        
        // Passa a cor escolhida para a classe
        reference?.applyColor(color: viColor.backgroundColor!)
        
        // volta a tela
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func chanceColor(_ sender: Any) {
        
        // Manipula a cor do backgroung - O background da viColor recebe UiColor - Aplha valor total
        viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    
    }
    
    
    
}

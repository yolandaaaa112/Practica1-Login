//
//  ViewController.swift
//  Practica1-Login
//
//  Created by I104-21 on 14/08/18.
//  Copyright © 2018 I104-21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Caracteristicas
    
    @IBOutlet weak var txtUsuario: UITextField!
    
    @IBOutlet weak var txtContrasena: UITextField!
    
    //Acciones
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Ocultar teclado
        let tap=UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func hideKeyboard(){
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController = segue.destination as! View2
        DestViewController.nomm = txtUsuario.text!
        DestViewController.contra = txtContrasena.text!
        
    }
    

    
        @IBAction func entrar(_ sender: Any) {
        
        if((txtUsuario.text?.isEmpty)! || (txtContrasena.text?.isEmpty)!){
            let alerta=UIAlertController(title: "Error", message: "Llena los campos", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alerta, animated: true, completion: nil)
        }else if((txtUsuario.text=="Yola") && (txtContrasena.text=="Yola")){
            
            let alerta=UIAlertController(title: "Exito", message: "Informacion correcta", preferredStyle: UIAlertControllerStyle.alert)
            alerta.addAction(UIAlertAction(title: "Exito", style: .default, handler: {(action) in self.performSegue(withIdentifier: "home", sender: self)}))
            present(alerta, animated: true, completion: nil)
            
        }else{
            let alerta=UIAlertController(title: "Error", message: "Informacion incorrecta", preferredStyle: UIAlertControllerStyle.alert)
            alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alerta, animated: true, completion: nil)
        }
        
        
    }
    
    

}


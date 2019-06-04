//
//  ViewController.swift
//  YunayCheff
//
//  Created by MAC19 on 27/05/19.
//  Copyright © 2019 OscarMolleapaza. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtContraseña: UITextField!
    
    
    @IBAction func btnIngresar(_ sender: Any) {
        
        /*
        Auth.auth().signIn(withEmail: txtEmail.text!, password: txtContraseña.text!) { (user, error) in
            print("Intentando iniciar sesion")
            if error != nil {
                print("Se presento el siguente error: \(error)")
                
           
                let alerta = UIAlertController(title: "No se encontro el usuario", message: "\(error)", preferredStyle: .alert)
                let btnOk = UIAlertAction(title: "Ok", style: .default, handler: {(UIAlertAction) in
                 //   self.performSegue(withIdentifier: "crearUsuarioSegue", sender: nil)
                })
                
                
                alerta.addAction(btnOk)
                self.present(alerta, animated: true, completion: nil)
                
            }else{
                
          
                
                
                print("Inicio de sesion exitoso")
                self.performSegue(withIdentifier: "pedidosSegue", sender: nil)
            }
        }
 */
         self.performSegue(withIdentifier: "pedidosSegue", sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        
        if segue.identifier == "pedidosSegue" {
       
            let tabCtrl: UITabBarController = segue.destination as! UITabBarController
            let destinationVC = tabCtrl.viewControllers![0] as! PendientesViewController
    
            
            
        }
        
        
    }


}


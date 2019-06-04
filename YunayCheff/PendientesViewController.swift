//
//  PendientesViewController.swift
//  YunayCheff
//
//  Created by MAC19 on 3/06/19.
//  Copyright © 2019 OscarMolleapaza. All rights reserved.
//

import UIKit
import Firebase



class tblEntradas: UITableViewCell{
    
    @IBOutlet weak var imageEntrada: UIImageView!
    @IBOutlet weak var txtEntrada: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var txtCantidad: UILabel!
    
}

class tblFondos: UITableViewCell{
    
    @IBOutlet weak var imageFondo: UIImageView!
    @IBOutlet weak var txtFondo: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var txtCantidadFondo: UILabel!
    
    
}

class tblPostres: UITableViewCell{
    
    @IBOutlet weak var imagePostre: UIImageView!
    @IBOutlet weak var txtPostre: UILabel!
    @IBOutlet weak var lblCantidad: UILabel!
    @IBOutlet weak var txtCantidadPostre: UILabel!
    
    
}
class tablaEntradas: UITableView{
    
}




class PendientesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var pedidos:[Pedido] = []
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableViewFondos: UITableView!
    @IBOutlet weak var tableViewPostres: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        setEditing(true, animated: true)

        
        
        //tableViewFondos.delegate = self
        //tableViewFondos.dataSource = self
        
        //tableViewPostres.delegate = self
        //tableViewPostres.dataSource = self
   
        
        //pedidos = crearPedido()

    }
    override func setEditing(_ editing: Bool, animated: Bool) {
        
        super.setEditing(editing, animated: animated)
        if(self.isEditing){
           
        }
        else{
           
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
     
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemEntrada", for:
            indexPath) as! tblEntradas
        
        /*
        
        let cellFondos = tableView.dequeueReusableCell(withIdentifier: "itemFondo", for:
            indexPath) as! tblFondos
        
        let cellPostres = tableView.dequeueReusableCell(withIdentifier: "itemPostre", for:
            indexPath) as! tblPostres
        
        
        
    
        cellFondos.txtFondo?.text = "Lomo saltado"
        cellFondos.txtCantidadFondo?.text = "2"
        cellFondos.lblCantidad?.text  = "Cantidad: "
        
        cellPostres.txtPostre?.text = "Mazamorra morada"
        cellPostres.txtCantidadPostre?.text = "3"
        cellPostres.lblCantidad?.text = "Cantidad: "
        
        
        */
        cell.txtEntrada?.text = "Salpicon de pollo"
        cell.txtCantidad?.text = "1"
        cell.lblCantidad?.text = "Cantidad: "
 
        return cell
        
        
        
        
    }
    
    func crearPedido() -> [Pedido]{
        let pedido1 = Pedido()
        pedido1.nombre = "Lomo Saltado"
        pedido1.cantidad = "3"
        pedido1.estado = "completado"
        
        let pedido2 = Pedido()
        pedido2.nombre = "Ceviche"
        pedido2.cantidad = "3"
        pedido2.estado = "completado"
        
        let pedido3 = Pedido()
        pedido3.nombre = "Chicharron"
        pedido3.cantidad = "1"
        pedido3.estado = "servido"
        
        return [pedido1,pedido2,pedido3]
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let botonEliminar = UITableViewRowAction(style: .normal, title: "Servido"){
            (accionesFila, indiceFila) in
            print("Eliminar")
            
        }
        botonEliminar.backgroundColor = UIColor.red
        
        let botonInsertar = UITableViewRowAction(style: .normal, title: "Completado"){
            (accionesFila, indiceFila) in
            print("insertar")
        }
        botonInsertar.backgroundColor = UIColor.green
        return[botonEliminar,botonInsertar]
    }
    

  

}

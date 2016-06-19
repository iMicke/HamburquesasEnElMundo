//
//  ViewController.swift
//  HamburquesasEnElMundo
//
//  Created by Miguel Angel Trejo Escamilla on 18/06/16.
//  Copyright © 2016 Miguel Angel Trejo Escamilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hambuerguesa: UILabel!
    @IBOutlet weak var precio: UILabel!
    
    var paises = ColeccionDePaises();
    var hambuerguesas = ColeccionDeHamburguesas()
    var colores = Colores()
    var precios = PrecioPorHamburguesa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func cambiaDatos(sender: AnyObject) {
        pais.text = paises.obtenerPais()
        hambuerguesa.text = hambuerguesas.obtenHamburguesa()
        precio.text = String(precios.obtenetPrecio())
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio

    }
}


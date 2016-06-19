//
//  Datos.swift
//  HamburquesasEnElMundo
//
//  Created by Miguel Angel Trejo Escamilla on 18/06/16.
//  Copyright © 2016 Miguel Angel Trejo Escamilla. All rights reserved.
//

import Foundation
import UIKit


struct Colores {
    let colores = [
        UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
        UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
        UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)
    ]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int( arc4random() ) % colores.count
        return colores[ posicion ]
    }
}

class ColeccionDePaises
{
    let paises = [
        "México", "España", "Estados Unidos", "Alemania", "Argentina", "Venezuela", "Inglaterra", "Italia", "Francia", "Portugal",
        "Canadá","Colombia","Uruguay","Chile","Brasil","China","Japón","Corea del norte","Corea del sur","Pakistán"
    ]
    
    func obtenerPais() -> String
    {
        let posicion = Int( arc4random() ) % paises.count
        return paises[ posicion ]
    }
}

class ColeccionDeHamburguesas
{
    let hamburguesas = [
        "Hawaiana","Arrachera power","Portobello","Pollo Loco","Ranchera","Godinez","Real","Parientes simple","Parientes doble","Quesos frescos",
        "Vegana","Casera","Marisquera","Cochiloca","Jr","Veggie","Mediterranea","De Bistro","Mexicana","Orgánica y artesanal"
    ]
    
    func obtenHamburguesa() -> String
    {
        let posicion = Int( arc4random() ) % hamburguesas.count
        return hamburguesas[ posicion ]
    }
}

class PrecioPorHamburguesa
{
    let precio = [ 40.00, 55.00, 38.25, 43.80 ];
    func obtenetPrecio() -> Double {
        let posicion = Int( arc4random() ) % precio.count
        return precio[ posicion ]
    }
}
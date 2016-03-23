//
//  homeworkVelocimetroAutomovilDigital
//
//  Created by JUAN ANTONIO ROJAS HINOJOSA on 23/03/16.
//  Copyright © 2016 JUAN ANTONIO ROJAS HINOJOSA. All rights reserved.
//


//: Tarea: Un velocímetro de un automóvil digital

/*
¿El playground se encuentra en GitHub?
¿El playground está hecho en Swift?
¿Se declara la enumeración: Velocidades y sus valores de tipo Int.?
¿Dentro de la enumeración Velocidades se cuenta con los elementos de: Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50 y VelocidadAlta = 120?
¿La enumeración Velocidades, cumple con la función inicializadora:  init( velocidadInicial : Velocidades ) El inicializador se debe asignar a self el valor de velocidadInicial?
¿Se declara la clase: Auto?
¿La clase Auto cuenta con una instancia de la enumeración Velocidades, llamada: velocidad?
¿La clase Auto implementa el método: init( )?
¿La clase Auto implementa la función: func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) y sus reglas de ejecución?
¿Se realiza la prueba de la clase Auto, iterando 20 veces el método cambioDeVelocidad() y sus salidas se observan en la consola?*/

import UIKit



enum Velocidades : Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado);
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let velocidadActual = velocidad
        var velocidadEnCadena : String
        
        switch velocidad{
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return (velocidadActual.rawValue, velocidadEnCadena)
    }
    
}

var auto = Auto()

for a in 1...20{
    
    let (velocidadActual , velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(a). \(velocidadActual) , \(velocidadEnCadena)")
    
}


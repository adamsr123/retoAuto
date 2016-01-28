import UIKit

enum Velocidades : Int
{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init()
    {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String)
    {
        var cadena : String
        var actual : Int
        if velocidad.rawValue == 0
        {
            self.velocidad = .VelocidadBaja
            cadena = "Velocidad baja."
            actual = 20
        }
        else if velocidad.rawValue == 20
        {
            self.velocidad = .VelocidadMedia
            cadena = "Velocidad media."
            actual = 50
        }
        else if velocidad.rawValue == 50
        {
            self.velocidad = .VelocidadAlta
            cadena = "Velocidad alta."
            actual = 120
        }
        else
        {
            self.velocidad = .VelocidadMedia
            cadena = "Velocidad media."
            actual = 50
        }
        return (actual, cadena)
    }
    
}

var auto = Auto()
print("\(auto.velocidad.rawValue), \(auto.velocidad).")
for i in 1...20
{
    var tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual),\(tupla.velocidadEnCadena)")
}
object tom {
    var energia = 50

    method velocidad() = 5 + energia / 10

    method correr(distancia) {
        energia -= distancia / 2
    }

    method comerRaton(raton) {
        energia += 12 + raton.peso()
    }

    method puedeComerRaton(distancia) = energia >= distancia / 2

    method cazarRaton(raton, distancia) {
        if (self.puedeComerRaton(distancia)) {
            self.correr(distancia)
            self.comerRaton(raton)
        }
    }

}

object jerry {
  var edad = 2

  method peso() = edad * 20

  method cambiarEdad(nuevaEdad) {
    edad = nuevaEdad
  }
}

object nibbles {
    method peso() = 35
}

object pedrin {
    var quesoIngerido = 0

    method peso() = 25 + quesoIngerido * 0.2

    method comerQueso(cantidadDeQueso) {
        quesoIngerido = cantidadDeQueso
    }
}
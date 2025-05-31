class Bici {
  const rodado 
  const largo 
  const marca 
  const accesorios = #{}

  method agregarAccesorio(unAccesorio) {
    accesorios.add(unAccesorio)
  }

  method quitarAccesorio(unAccesorio) {
    accesorios.remove(unAccesorio)
  }

  method altura() = rodado * 2.5 + 15

  method velocidadCrucero() = if (largo > 120) rodado + 6 else rodado + 2

  method carga() = accesorios.sum({a => a.capacidadCarga()})

  method peso() = (rodado / 2) + self.pesoAccesorios()

  method pesoAccesorios() = accesorios.sum({a => a.peso()})

  method tieneLuz() = accesorios.any({a => a.esLuminoso()})

  method cantidadAccesoriosLivianos() = accesorios.count({a => a.peso() < 1})
}

class Farolito {
  method peso() = 0.5

  method capacidadCarga() = 0

  method esLuminoso() = true
}

class Canasto {
  const volumen 

  method initialize() {
    if (!volumen.between(1, 20)) {
      self.error(volumen.toString() + " no es un valor valido")
    }
  }
  
  method peso() = volumen / 10

  method capacidadCarga() = volumen * 2

  method esLuminoso() = false
}

class Morral {
  const largo
  var tieneOjoDeGato

  method ponerOjoDeGato() {
    tieneOjoDeGato = true 
  }

  method quitarOjoDeGato() {
    tieneOjoDeGato = false 
  }

  method peso() = 1.2

  method capacidadCarga() = largo / 3

  method esLuminoso() = tieneOjoDeGato
}
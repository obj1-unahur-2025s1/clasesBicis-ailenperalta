import bicis.*

class Deposito {
    const bicis = []

    method agregarBicis(listaDeBicis) {
        if (listaDeBicis.any({b => bicis.contains(b)})) {
            //self.error("No se puede agregar dos veces una bici al deposito")
            throw new Exception(message = "No se puede agregar dos veces una bici al deposito")
        }

        if (listaDeBicis.any({b => listaDeBicis.occurrencesOf(b) > 1})) {
            self.error("Hay bicis duplicadas dentro de la lista de nuevas bicis")
        }

        bicis.addAll(listaDeBicis)
    }

}
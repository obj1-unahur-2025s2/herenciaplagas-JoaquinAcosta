class Hogar {
  const nivelDeMugre
  const confort

  method esBueno() = (nivelDeMugre == confort / 2) 

}

class Huerta {
  const capacidadDeProduccion
  var nivelDeProduccion

  method esBueno() = capacidadDeProduccion > nivelDeProduccion

  method cambiarNivelDeProduccion(nuevoNivel) {
    nivelDeProduccion = nuevoNivel
  }
}

class Mascota {
  const nivelDeSalud

  method esBueno() = nivelDeSalud > 250
}


class Barrio {
  var elementos = []

  method elementos() = elementos

  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }

  method sacarElemento(unElemento) {
    elementos.remove(unElemento)
  }
}
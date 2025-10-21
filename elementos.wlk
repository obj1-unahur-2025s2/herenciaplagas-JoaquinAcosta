class Hogar {
  var nivelDeMugre
  const confort

  method esBueno() = (nivelDeMugre == confort / 2) 

  method esAtacadoPor(unaPlaga) {
    nivelDeMugre += unaPlaga.nivelDeDanio()
    unaPlaga.atacarElemento()
  }

}

class Huerta {
  var capacidadDeProduccion

  method esBueno() = capacidadDeProduccion > nivelMinimo.valor()

  method esAtacadoPor(unaPlaga) {
    capacidadDeProduccion = 0.max(capacidadDeProduccion - (unaPlaga.nivelDeDanio() * 0.1))
    capacidadDeProduccion = 0.max(capacidadDeProduccion - if (unaPlaga.transmiteEnfermedad()) 10 else 0)
    unaPlaga.atacarElemento()
  }

}

object nivelMinimo {
  var property valor = 100
}

class Mascota {
  var nivelDeSalud

  method esBueno() = nivelDeSalud > 250

  method esAtacadoPor(unaPlaga) {
    nivelDeSalud = 0.max(nivelDeSalud - if (unaPlaga.transmiteEnfermedad()) unaPlaga.nivelDeDanio() else 0 )
    unaPlaga.atacarElemento()
  }
}


class Barrio {
  const elementos = []

  method elementos() = elementos

  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }

  method sacarElemento(unElemento) {
    elementos.remove(unElemento)
  }

  method losBuenos() = elementos.filter({ e => e.esBueno() })

  method losMalos() = elementos.filter({ e => not e.esBueno() })

  method esCopado() = self.losBuenos().size() > self.losMalos().size()
}
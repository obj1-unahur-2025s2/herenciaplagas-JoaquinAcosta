class Plaga {
    const poblacion

    method transmiteEnfermedad() = poblacion >= 10
}

class PlagaDeCucarachas inherits Plaga {
    const pesoPromedio

    method nivelDeDanio() = poblacion / 2

    override method transmiteEnfermedad() = super() and (pesoPromedio >= 10)
}

class PlagaDePulgas inherits Plaga {

    method nivelDeDanio() = poblacion * 2
}

class PlagaDeGarrapatas inherits PlagaDePulgas {

}

class PlagaDeMosquitos inherits Plaga {

    method nivelDeDanio() = poblacion

    override method transmiteEnfermedad() = super() and (poblacion % 3 == 0)
}
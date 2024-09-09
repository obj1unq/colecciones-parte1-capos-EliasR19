// JUGADORES
object rolando{
    var property maxArtefactos = 2
    const inventario = #{}     //lista
    // const porque la mochila siempre es la misma,
    // solo se le agregan cosas.

    method inventario(){
        return inventario
    }

    method agarrar(artefacto){
        if(!self.estaLLeno()){
            inventario.add(artefacto)
        } else {
            return "LLeno"
        }
    }
    
    method estaLLeno(){
        return inventario.size() >= self.maxArtefactos()
    }
}

// ARTEFECTOS
object espadaDelDestino{

}

object libroDeHechizos{

}

object collarDivino{

}

object armaduraValyrio{

}
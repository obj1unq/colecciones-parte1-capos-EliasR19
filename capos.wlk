// JUGADORES
object rolando{
    var property maxArtefactos = 2
    const inventario = #{}     //lista
    // const porque la mochila siempre es la misma,
    // solo se le agregan cosas.
    var property hogar = castillo
    const historial = []

    method inventario(){
        return inventario
    }

    method encontrar(artefacto){
        if(!self.estaLleno()){
            inventario.add(artefacto)
        } else {
            return "LLeno"
        }
        historial.add(artefacto)
    }
    
    method estaLleno(){
        return inventario.size() >= self.maxArtefactos()
    }

    //PUNTO 2 Castillo de piedra
    method irAHogar(){
        castillo.almacenar(inventario)
        inventario.clear()
        //inventario.removeAll(inventario)

    }

    method inventarioOrdenado(){
        return inventario.asList()
    }

    method poseeTotal(){
        //return self.inventarioOrdenado().union(hogar.almacen())
        return inventario.union(hogar.almacen())
    }

    method posee(artefacto){
        return self.poseeTotal().contains(artefacto)
    }

    method historial(){
        return historial
    }
}

// HOGAR
object castillo{
    const almacen = #{}

    method almacen(){
        return almacen
    }

    method almacenar(artefactos){
        almacen.addAll(artefactos)
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
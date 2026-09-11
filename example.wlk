object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}
object pdpCargas {
    var vehiculos 
    
}

object verdurin {
   var cajas = 10
    var cajaPeso = 50
    var km = 700000

    method cajasAtransportar(cajasX){
        cajas = cajasX
    }
    method carga() = cajas * cajaPeso

    method veloMaxi() {
        if (self.carga()= 500 )
        return 
    }
}

object scanion {
    const veloMaxi= 140
    const carga = 5000

    method pesoCarga(liquido){
        carga = liquido
    }
}

object cerealitas {
    var nivelDeterioro = 0
    var veloMaxi 
    var carga

    method hacerViajes(){
        nivelDeterioro =+ 1
    }

    method veloMaxi(){
        if(nivelDeterioro < 10){
            return 40
        }
        else {
            return 60 - nivelDeterioro
        }
    }

    method viaje(cantCarga){
        carga = cantCarga
    }
}


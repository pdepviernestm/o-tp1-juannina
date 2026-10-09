object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}
object pdpCargas {
    var vehiculos = [verdurin,scanion,cerealitas]
  
}

object verdurin {
   var cajas = 10
    var cajaPeso = 50
   
    var km = 700000

    method cajasAtransportar(cajasX){
        cajas = cajasX
    }
    method carga() = cajas * cajaPeso
    

    method veloMaxi() = 80 - self.carga() /500

    method irPorRuta(velocidad, kmrecorrido){
        km = km + kmrecorrido
    }
}

object scanion {
    const capacidad = 5000
    var km = 0
    var densidad = 0
    method cargarCombustible(densidadX) {
        densidad = densidadX
    }
    method carga() = capacidad * densidad
    
    method veloMaxi()= 140

    method irPorRuta(velocidad,kmrecorrido){
    }
}

object cerealitas {
    var nivelDeterioro = 0
    var carga = 0
   var km = 0

    method hacerViaje(cargaX){
        nivelDeterioro = nivelDeterioro + 1
        carga = cargaX
    }

    method veloMaxi(){
        if(nivelDeterioro < 10){
            return 40
        }
        else {
            return 60 - nivelDeterioro
        }
    }

    method irPorRuta(velocidad,kmrecorrido){
        km = km + kmrecorrido
        if(velocidad > 45)
        nivelDeterioro= nivelDeterioro + (velocidad - 45)  
    }
}

object rutatlantica {
    method cobrar(camion) = 7000 + 100 * camion.carga() / 1000 
    method recorre(camion) {
        camion.irPorRuta(camion.veloMaxi(),400)
    }
    method maxima(camion) = camion.veloMaxi() < 75
    
}



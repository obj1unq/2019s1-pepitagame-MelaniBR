import pepita.*
import ciudades.*
import wollok.game.*

object roque {
   
   var property mochila = null
   var property position = game.at(5,3)
   method image() = "jugador.png"
   method move(nuevaPosicion){
   	self.position(nuevaPosicion)
   }
   method agarrarComida(comida){
   	if (mochila != null) {
			self.soltar(mochila)
		}
		game.removeVisual(comida)
		mochila = comida
	
   }
		method darComida(ave){
		if (mochila != null) {
			ave.come(mochila)
			self.soltar(mochila)
			mochila = null
		}
	}
	
		
	
	method soltar(comida) {
		game.addVisualIn(comida, self.randomPositionInGame())
		game.whenCollideDo(comida, { entrenador => entrenador.tomarComida(comida)})
	}

	method randomPositionInGame() {
		return game.at(1.randomUpTo(10).truncate(0), 1.randomUpTo(10).truncate(0))
	}

}

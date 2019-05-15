import pepita.*
import ciudades.*
import wollok.game.*
import niveles.*
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
	method encontroAlgo(alguien){
		alguien.saludar()
		self.saludar()
	}
	method saludar(){
		game.say(self,"hola tu ")
	}
		
	
	method soltar(comida) {
		game.addVisualIn(comida, self.randomPositionInGame())
	}

	method randomPositionInGame() {
		return game.at(1.randomUpTo(10).truncate(0), 1.randomUpTo(10).truncate(0))
	}
	method tirarComida(comida){
		
		game.addVisualIn(comida,self.position())
	}
}

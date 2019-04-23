import ciudades.*
import wollok.game.*
import comidas.*
object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image() = if (energia > 100) "pepita-gorda-raw.png"
	else "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad} 
				else {game.say(self,"Ya estoy e ahi")}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
	 energia-= self.energiaParaVolar(position.distance(nuevaPosicion))	
		self.position(nuevaPosicion)
}	

	method puedeVolarHacia(nuevaPosicion) =self.energiaParaVolar(position.distance(nuevaPosicion)) < energia
	
	method volaYCome(comida){
				self.position(comida.position())
				self.come(comida)
				game.removeVisual(comida)
	}	
	
}

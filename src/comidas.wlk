import wollok.game.*
object manzana {
	var property position = game.center()
	method image() = "manzana.png"
	method energia() = 80
}

object alpiste {
	var property position = game.origin()
	method image() = "alpiste.png"
	
	method energia() = 5
}

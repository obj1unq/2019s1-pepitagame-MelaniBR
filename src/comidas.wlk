import wollok.game.*




class Manzana {
	var property position = game.center()
	method image() = "manzana.png"
	method energia() = 80
	method teEncuentro(alguien){
		alguien.agarrarComida(self)
	}
	method encontroAlgo(ave){
		ave.come(self)
	}
}

class Alpiste {
	var property position = game.origin()
	method image() = "alpiste.png"
	method teEncuentro(alguien){
		alguien.agarrarComida(self)
	}
	method encontroAlgo(ave){
		ave.come(self)
	}
	method energia() = 5
}

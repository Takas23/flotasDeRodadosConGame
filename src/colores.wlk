import wollok.game.*

object rojo {
	method image() { return "autitorojo.png"}
}

object verde {
	method image() { return "autitoverde.png"}
}

object azul {
	method image() { return "autitoazul.png"}
}

class Pared {
	var property position
	const estados = [floja, medio, full]
	var property image = "pared3.png"
	var resistencia = 2
	
	method choque() {
		resistencia -= 1
		if (resistencia == -1) { game.removeVisual(self)}
			else { self.cambioPared(estados.get(resistencia.max(0)))
			}
	}
	
	method cambioPared(estado) {
		self.image(estado.image())
	}
}

object full {
	method image() { return "pared3.png" }
}
object medio {
	method image() { return "pared2.png" }
}
object floja {
	method image() { return "pared1.png" }
}


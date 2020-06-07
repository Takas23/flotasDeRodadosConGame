import wollok.game.*
import colores.*

class Corsa {
	var property color
	var position 
	var property posiciones = #{ }
	var property image = "autitorojo.png"
	var property filas = #{ }


	method capacidad() { return 4 }
	method velocidadMax() { return 150 }
	method peso() { return 1300	}	
	
//deje comentadas la solucion que tenia antes de saber que podia preguntar x()
//pasoPorFila(num) solo funcionaba si la primer posicion se daba con irA(x,y)
//y filas debia ser lista y no set
/*	
 * 	method irA(x, y) {
		self.position(game.at(x,y))
		posiciones.add(self.position())
		filas.add(x)
	}
*/
//Game
	method position() { return position}
	method position(posicion) {
		position = posicion 
		posiciones.add(posicion)
		filas.add(posicion.x())
		
	}
	method pasoPor(posicion) {
		return posiciones.contains(posicion)
	}	
	

	method pasoPorFila(num) {
		return filas.contains(num)
	}

	method recorrioFilas(lista_de_numeros) {
		return filas.intersection(lista_de_numeros.asSet()) == lista_de_numeros.asSet()	
	}

	
//movimiento
	method moveDerecha(){
		self.position(self.position().right(1))
		posiciones.add(self.position())
//		filas.add(filas.last()-1)
		filas.add(self.position().x())
	}	
	method moveIzquierda(){
		self.position(self.position().left(1))
		posiciones.add(self.position())
//		filas.add(filas.last()-1)
		filas.add(self.position().x())
	}
	method moveArriba(){
		self.position(self.position().up(1))
		posiciones.add(self.position())
		
	}	
	method moveAbajo(){
		self.position(self.position().down(1))
		posiciones.add(self.position())
		
	}
//color
	method cambioColor(un_color) {
		self.image(un_color.image())
	}
}

class Kwid {
	var property tanqueAdicional 
	
	method capacidad() { 
		return if (tanqueAdicional) {3}
			else 4
	}
	method velocidadMax() { 
		return if (tanqueAdicional) {120}
			else 110
	}
	method peso() { 
		return if (tanqueAdicional) {1200 + 150}
			else 1200
	}	
	method color() { return "azul" }
}

class Especial {
	var property capacidad
	var property velocidadMax
	var property peso
	var property color
}
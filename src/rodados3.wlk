import wollok.game.*
import colores.*

class Corsa {
	var property color
	var position 
	var property posiciones = [  ]  
	var property image = "autitorojo.png"
//	var property filas = #{ }


	method capacidad() { return 4 }
	method velocidadMax() { return 150 }
	method peso() { return 1300	}	
	
//Game
	method position() { return position}
	method position(posicion) {
		position = posicion 
//		posiciones.add(posicion)
//		filas.add(posicion.x())
		
	}
	method pasoPor(posicion) {
		return posiciones.contains(posicion)
	}	
	
	method filas() {
		return posiciones.map({ pos => pos.x()}).asSet()
//		return filas
	}
	method columnas() {
		return posiciones.map({ pos => pos.y()}).asSet()
	}

	method pasoPorFila(num) {
		return self.filas().contains(num)
	}
	method pasoPorcolumna(num) {
		return self.columnas().contains(num)
	}
	method recorrioFilas(lista_de_numeros) {
		return self.filas().intersection(lista_de_numeros.asSet()) == lista_de_numeros.asSet()	
	}
	method ultimaPosicion() {
		return posiciones.get(posiciones.size() - 1)
	}

	
//movimiento
	method irA(posicion) {
		self.position(posicion)
}
	method moveDerecha(){
		posiciones.add(self.position())
		self.position(self.position().right(1))
//		filas.add(self.position().x())
	}	
	method moveIzquierda(){
		posiciones.add(self.position())
		self.position(self.position().left(1))
//		filas.add(self.position().x())
	}
	method moveArriba(){
		posiciones.add(self.position())
		self.position(self.position().up(1))
	}	
	method moveAbajo(){
		posiciones.add(self.position())
		self.position(self.position().down(1))
	}

	
//color
	method cambioColor(un_color) {
		self.image(un_color.image())
	}
	
	method choque() {
		self.irA(self.ultimaPosicion())
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
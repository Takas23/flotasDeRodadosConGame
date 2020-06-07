object trafic {
	var property interior
	var property motor
	
	method capacidad() {
		return interior.capacidad()
	}
	method velocidadMax() {
		return motor.velocidadMax()
	}
	method peso() {
		return interior.peso() + motor.peso() + 4000
	}
	method color() { return "blanco"}
}

object interiorComodo {
	method capacidad() { return 5 }
	method peso() { return 700 }
	
}

object interiorPopular {
	method capacidad() { return 12 }
	method peso() { return 1000 }
}

object motorPulenta {
	method peso() { return 800 }
	method velocidadMax() { return 130 }
}

object motorBataton {
	method peso() { return 500 }
	method velocidadMax() { return 80 }
	
}

class Pedido {
	var property coloresInc = #{}
	var property distancia	
	var property tiempoMax
	var property pasajeros
	
	method agregarColorInc(color){
		coloresInc.add(color)
	}
	method velocidadReq() {
		return self.distancia() / self.tiempoMax()
	}
	method satisfacePedido(auto) {
		return	(auto.velocidadMax() - 10) >= self.velocidadReq() and
				auto.capacidad() >= self.pasajeros() and
				not coloresInc.contains(auto.color())
	}
	method acelerar() {
		tiempoMax -= 1
	}
	method relajar() {
		tiempoMax += 1
	}
}
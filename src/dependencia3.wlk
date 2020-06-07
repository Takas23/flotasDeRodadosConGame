import trafic3.*
import rodados3.*
import pedidos.*

class Dependencia {
	const flota = []
	const property pedidos = []
	var property empleados
	
	method agregarAFlota(rodado) {
		flota.add(rodado)
	}
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	method pesoTotalFlota() {
		return flota.sum({auto => auto.peso()})
	}
	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all({auto => auto.velocidadMax() >= 100})
	}
	method capacidadTotalEnColor(color) {
		return flota.filter({auto => auto.color() == color}).sum({auto => auto.capacidad()})
	}
	method colorDelRodadoMasRapido() {
		return flota.max({auto => auto.velocidadMax()}).color()
	}
	method capacidadFaltante() {
		return (empleados - flota.sum({auto => auto.capacidad()})).max(0)
	}
	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}
// etapa3
	method agregarPedido(pedido) {
		pedidos.add(pedido)
	}
	method quitarPedido(pedido) {
		pedidos.remove(pedido)
	}	
	method relajarPedidos() {
		pedidos.forEach({ pedi => pedi.relajar()})
	}
	method totalPasajerosEnPedidos() {
		return pedidos.sum({pedi => pedi.pasajeros()})
	}
	method pedidosNoSatis() {
		return pedidos.filter({pedi => not self.puedeSatisfacer(pedi)})
	}
	method puedeSatisfacer(pedido){
		return flota.any({ auto => pedido.satisfacePedido(auto) })
	}
	method colorIncompatible(color) {
		return pedidos.all({pedi => pedi.coloresInc().contains(color)})
	}
}



import clientes.*

object roxana {
	method precioViaje(cliente, kms) { return cliente.precioPactadoPorKm() * kms }
}

object gabriela {
	method precioViaje(cliente, kms) { return (1.2 *  cliente.precioPactadoPorKm()) * kms }
}

object mariela {
	const minimo = 50
	method precioViaje(cliente, kms) { 
		if ((cliente.precioPactadoPorKm() * kms) < minimo) { return minimo }
			else { return cliente.precioPactadoPorKm() * kms}										
	}
}

object juana { 
	method precioViaje(cliente, kms) {
		if (kms < 8) {return 100} 
		else { return 200}
	}
}

object lucia {
	var reemplazo = roxana
	method reemplazaA (persona){ reemplazo = persona}	
	method precioViaje(cliente, kms) {return reemplazo.precioViaje(cliente, kms) } 

}
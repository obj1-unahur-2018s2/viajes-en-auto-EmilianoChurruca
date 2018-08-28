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

object oficina { 
	var primerChofer = null
	var segundoChofer = null
	var aux = null
	method asignarChoferes(chofer1, chofer2) { primerChofer = chofer1  segundoChofer = chofer2  }
	method cambiarPrimerChoferPor(chofer) { primerChofer = chofer}
	method cambiarSegundoChoferPor(chofer) { segundoChofer = chofer}
	method intercambiarChoferes() {
		aux = primerChofer;
		primerChofer = segundoChofer;
		segundoChofer = aux;
	}
	method choferElegidoParaViaje(cliente, kms) {}
}

/*
 * El objeto oficina debe entender estos mensajes:

asignarChoferes(chofer1, chofer2): establece los choferes de primera y de segunda opción.
cambiarPrimerChoferPor(chofer): cambia el chofer de primera opción por el que se indica.
cambiarSegundoChoferPor(chofer): cambia el chofer de segunda opción por el que se indica.
intercambiarChoferes(): intercambia los choferes de primera y segunda opción. O sea, el que era primera pasa a segunda,
*  y viceversa.
choferElegidoParaViaje(cliente, kms): devuelve el chofer que corresponde asignar a un viaje, dados el 
* cliente y la cantidad de kilómetros. El criterio es el siguiente: si para ese viaje, el precio del 
* segundo chofer es menor al del primero con una diferencia de más de 30 pesos, entonces se elige el segundo chofer; 
* si no, se elige el primero.
 */
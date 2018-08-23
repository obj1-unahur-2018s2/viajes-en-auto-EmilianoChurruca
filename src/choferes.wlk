import clientes.*

object roxana {
	method precioViaje(cliente, kms) { return cliente.precioPactadoPorKm() * kms }
}

object gabriela{
	method precioViaje(cliente, kms) { return (1.2 *  cliente.precioPactadoPorKm()) * kms }
}

object mariela{
	const minimo = 50
	method precioViaje(cliente, kms) { 
		if ((cliente.precioPactadoPorKm() * kms) < minimo) { return 50 }
			else { return cliente.precioPactadoPorKm() * kms}										
	}
}

/*
 * Roxana le cobra a cada cliente el precio por kilómetro que pactó con la cooperativa sin variaciones.
Gabriela le aumenta un 20%, porque su auto de alta gama.
Mariela no aplica recargo, pero establece un mínimo de 50 pesos el viaje.
Juana por su parte, cobra 100 pesos hasta 8 kilómetros, y 200 pesos si son más de 8 kilómetros. A Juana 
* no le importa lo que pactó la agencia, le cobra lo mismo a todos.
 */
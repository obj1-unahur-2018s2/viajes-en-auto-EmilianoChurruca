object ludmila {
	method precioPactadoPorKm() { return 18}	
}

object anaMaria { 
	method precioPactadoPorKm() { return 30}
}

object teresa {
	method precioPactadoPorKm() { return 22}
}

object melina {
	var reemplazoDe = ludmila
	method reemplazaA (persona) { reemplazoDe = persona } 
	method precioPactadoPorKm() { return reemplazoDe.precioPactadoPorKm()-3}
}
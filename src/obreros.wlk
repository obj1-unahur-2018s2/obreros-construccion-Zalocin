import obras.*
import uocra.*

class Obrero {

	var property licencia = true
	var property jornal = 0

	method estaDeLicencia() {
		licencia = true
	}

	method noEstaDeLicencia() {
		licencia = false
	}

	method consumo(obra)

	method trabajar(obra) {
		self.consumo(obra)
		self.jornalesAdeudados()
		self.importeDeJornal()
	}

	method jornalesAdeudados() {
		return jornal -= 1
	}

	method importeDeJornal()

}

class Albanil inherits Obrero {

	override method consumo(obra) {
		obra.consumirLadrillo(100)
	}

	override method importeDeJornal() {
		return ( self.jornalesAdeudados() * uocra.jornalAlbanil() )
	}

}

class Gasista inherits Obrero {

	override method consumo(obra) {
		obra.consumirCanio(3)
		obra.consumirFosforo(20)
	}

}

class Plomero inherits Obrero {

	override method consumo(obra) {
		obra.consumirCanio(10)
		obra.consumirArandela(30)
	}

}

class Electricista inherits Obrero {

	override method consumo(obra) {
		obra.consumirCable(4)
		obra.consumirRolloDeCinta(1)
	}

}


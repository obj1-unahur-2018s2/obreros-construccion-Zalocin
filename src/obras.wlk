import obreros.*

class Obra {
	var plantilla = #{}
	var depositoObra = #{}
	//var aporteObra = #{}

	var property ladrillo = 0
	var property canio = 0
	var property fosforo = 0
	var property arandela = 0
	var property cable = 0
	var property cintaAisladora = 0
	
	var property metroCuadradoDePared = 0
	var property metroDeCanioDeGas = 0
	var property metroDeCanioDeagua = 0
	var property metroDeCable = 0


	method agregarObrero(obrero) { plantilla.add(obrero) }
	method quitarObrero(obrero) { plantilla.remove(obrero)
		if (obrero.licencia()) {
			self.error("No se puede")
		}
	}
	
	method agregarMaterial(material) { depositoObra.add(material) }
	method quitarMaterial(material) { depositoObra.remove(material) }
	method agregarMateriales(material) { depositoObra.addAll(material) }	
	
	method consumirLadrillo(cant) { ladrillo -= cant }	
	method consumirCanio(cant) { canio -= cant }	
	method consumirFosforo(cant) { fosforo -= cant }	
	method consumirArandela(cant) { arandela -= cant }	
	method consumirCable(cant) { cable -= cant }	
	method consumirCintaAisladorao(cant) { cintaAisladora -= cant }	
		
	method plantillaDisponible() {
		return plantilla.filter({obrero => !obrero.licencia()})
	}	
	method registrarJornadaLaboral() {
		if (self.plantillaDisponible().isEmpty()) {			
			self.error("No hay obreros disponibles para trabajar")
		}
		self.plantillaDisponible().forEach({obrero => obrero.trabajar(self)})
	}
	method incluyeObrero(obrero) {
		return self.plantillaDisponible().contains(obrero)
	}
	
	

		
	
}

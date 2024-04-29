/** First Wollok example */
object galvan {
	var sueldo = 150000
	var deuda = 0
	var billetera = 0
	
	method sueldo() = sueldo
	
	method cambiarSueldo(nuevoSueldo) { sueldo = nuevoSueldo}
	
	method totalCobrado(){}
	
	method totalDinero() = 0.max(billetera - deuda)
	
	method totalDeuda() = deuda
	
	method gastar(cuanto){
		deuda = (deuda + cuanto)
	}
	
	method cobrarSueldo(){
		billetera += sueldo
		
	 }

}

object baigorria {
	var sueldo = 0
	var billetera = 0
	
	method empanadasVendidas(cantidad){
		sueldo = sueldo + (cantidad*150)
	}
	
	method sueldo() = sueldo
	
	method cobrarSueldo() {billetera += sueldo }
	
	method totalCobrado() = billetera
}

object gimenez {
	var fondoParaSueldos = 3000000
	
	method pagarA(empleado) {
    fondoParaSueldos = 0.max(empleado.sueldo())
    empleado.cobrarSueldo()
}
}

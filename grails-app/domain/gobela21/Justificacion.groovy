package gobela21

class Justificacion {
    Long justificacionId
    int linea
    BigDecimal importeTotal

    //static hasMany = [facturas: Factura]
    static belongsTo = [solicitud: Solicitud]


    static constraints = {
        justificacionId(unique: true)
        importeTotal(nullable: false)
    }
}

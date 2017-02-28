package gobela21

class Justificacion {
    Long justificacionId
    int linea
    BigDecimal importeTotal

    //static hasMany = [facturas: Factura]
    static belongsTo = [subvencion: Subvencion]


    static constraints = {
        justificacionId(unique: true)
        importeTotal(nullable: false)
    }
}

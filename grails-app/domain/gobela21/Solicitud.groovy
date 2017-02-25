package gobela21

class Solicitud {
    Long solicitudId
    int linea
    BigDecimal importeSolicitado
    BigDecimal importeRecibido
    Boolean otrasSolicitudes

    static constraints = {
    }
}

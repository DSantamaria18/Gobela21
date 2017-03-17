package gobela21

class Valoracion {
    int linea
    //TODO: escoger el tipo de imput adecuado a cada campo en el formulario
    int l1costesActividad
    int l1mediosPropios
    int l1dificultadFinanciacion

    // Proyecto deportivo
    String l1proyectoDeportivoCoherencia = '0'       //TODO: dividir en sus elementos
    int l1proyectoDeportivoDiversidad
    int l1proyectoDeportivoEuskera
    int l1proyectoDeportivoParticipacionFemenina

    //  Incidencia de la actividad en la promoción del deporte entre quienes residen en Getxo
    int l1residentes

    //Contribución a la difusión y mejora de la imagen del municipio de Getxo
    int l1prensaLocal
    int l1prensaComarcal
    int l1prensaRegional
    int l1prensaEstatalInternacional

    // Participación en la política deportiva
    int l1deporteEscolar
    int l1marcaGetxo

    // Participación y colaboración con otras asociaciones o centros escolares o en progrmas y/o actividades municipales
    int l1getxoKirolak
    int l1centrosEscolares
    int l1otrosClubes

    // Continuidad y estabilidad
    int l1antiguedad
    int l1participantes

    ////////////////
    /// LINEA 2 ////
    ////////////////

    int l2costesActividadDe
    int l2mediosPropios
    int l2dificultadFinanciacion

    // Proyecto deportivo
    int l2proyectoDeportivoCoherencia
    int l2proyectoDeportivoDiversidad
    int l2proyectoDeportivoEuskera
    int l2proyectoDeportivoParticipacionFemenina

    //  Incidencia de la actividad en la promoción del deporte entre quienes residen en Getxo
    int l2residentes

    //Contribución a la difusión y mejora de la imagen del municipio de Getxo
    int l2prensaLocal
    int l2prensaComarcal
    int l2prensaRegional
    int l2prensaEstatalInternacional

    // Participación en la política deportiva
    int l2deporteEscolar
    int l2marcaGetxo

    // Participación y colaboración con otras asociaciones o centros escolares o en progrmas y/o actividades municipales
    int l2getxoKirolak
    int l2centrosEscolares
    int l2otrosClubes

    // Continuidad y estabilidad
    int l2antiguedad
    int l2participantes   //Sólo asociaciones de pesca

    // Valoración de deportistas
    int l2puestoEnTorneosInternacionales
    int l2puestoEnCircuitosInternacionales
    int l2puestoEnTorneosNacionales
    int l2puestoEnCircuitosNacionales
    int l2PrimerPuestoEnTorneosAutonomicos
    int l2campeonatosEuskadi
    int l2campeonatosEspaña
    int l2campeonatosEuropa
    int l2campeonatosMundo

    //Indice de participacion
    float l2indiceParticipacion

    // Indice de corrección
    float l2indiceCorreccion

    ////////////////
    /// LINEA 3 ////
    ////////////////

    int l3categoriaFaseFinal
    int l3resultadoObtenido

    ////////////////
    /// LINEA 4 ////
    ////////////////

    // Agentes implicados en el evento
    int l4propioClub
    int l4otrosClubes
    int l4ampas
    int l4categoriasEscolares
    int l4categoriasFederadas
    int l4veteranos

    // Adecuación del presupuesto al anterior
    int l4desviacion

    // Calidad en el diseño de la actividad
    int l4participacionEstimada
    int l4comunicacionAMedios
    int l4usoNuevasTecnologías

    // Participación femenina
    int l4participacionFemeninaEvento

    // Valoración del solicitante
    int l4experienciaSolicitante

    ///////////////////////////
    /// EXCLUSIVOS LINEA 5 ////
    ///////////////////////////

    // Impacto actividad
    int l5numeroEspectadores

    // Adecuación del presupuesto
    int l5recursosPropios

    // Calidad en el diseño de la actividad  (tb linea 5)
    int l5participacionEstimada
    int l5comunicacionAMedios
    int l5usoNuevasTecnologías

    // Participación femenina   (tb linea 5)
    int l5participacionFemenina

    // Valoración del solicitante  (tb linea 5)
    int l5experienciaSolicitante


    ////////////////
    /// LINEA 6 ////
    ////////////////

    // Repercusión mediática
    int l6prensaLocal
    int l6prensaComarcal
    int l6prensaRegional
    int l6prensaEstatal

    // Costes
    int l6costeActividad

    //Medios propios
    int l6mediosPropios

    // Dificultad para acudir a otros medios de financiación
    int l6patrcinioPrivado


    ////////////////
    /// LINEA 7 ////
    ////////////////

    // Repercusión mediática
    int l7prensaLocal
    int l7prensaComarcal
    int l7prensaRegional
    int l7prensaEstatal

    // Costes
    int l7costeActividad

    //Medios propios
    int l7mediosPropios

    // Dificultad para acudir a otros medios de financiación
    int l7patrcinioPrivado

    //////////////
    /// COMUN ////
    //////////////

    //float puntuacion = 0.0
    BigDecimal importeConcedido

    static belongsTo = [solicitud: Solicitud]

    static constraints = {
        l1proyectoDeportivoCoherencia(nullable: true, inList: ["0","2.5","5"])
        importeConcedido(nullable: true)
    }

    def suma(){
        List<String> filtro = ["importeConcedido", "solicitud", "linea", "solicitudId", "_method", "action", "format", "controller", "id"]
        float res = 0.0
        this.properties.each {prop, val ->
            //println("   :: ${prop}")
            if (!filtro.contains(prop)) {
                float valor = val as float
                res = res + valor
            }
        }
        return res
    }

}

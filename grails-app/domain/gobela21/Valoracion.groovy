package gobela21

class Valoracion {
    int L1costesActividadDe
    int L1mediosPropios
    int L1dificultadFinanciacion

    // Proyecto deportivo
    int L1proyectoDeportivoCoherencia
    int L1proyectoDeportivoDiversidad
    int L1proyectoDeportivoEuskera
    int L1proyectoDeportivoParticipacionFemenina

    //  Incidencia de la actividad en la promoción del deporte entre quienes residen en Getxo
    int L1residentes

    //Contribución a la difusión y mejora de la imagen del municipio de Getxo
    int L1prensaLocal
    int L1prensaComarcal
    int L1prensaRegional
    int L1prensaEstatalInternacional

    // Participación en la política deportiva
    int L1deporteEscolar
    int L1marcaGetxo

    // Participación y colaboración con otras asociaciones o centros escolares o en progrmas y/o actividades municipales
    int L1getxoKirolak
    int L1centrosEscolares
    int L1otrosClubes

    // Continuidad y estabilidad
    int L1antiguedad

    ////////////////
    /// LINEA 2 ////
    ////////////////

    int L2costesActividadDe
    int L2mediosPropios
    int L2dificultadFinanciacion

    // Proyecto deportivo
    int L2proyectoDeportivoCoherencia
    int L2proyectoDeportivoDiversidad
    int L2proyectoDeportivoEuskera
    int L2proyectoDeportivoParticipacionFemenina

    //  Incidencia de la actividad en la promoción del deporte entre quienes residen en Getxo
    int L2residentes

    //Contribución a la difusión y mejora de la imagen del municipio de Getxo
    int L2prensaLocal
    int L2prensaComarcal
    int L2prensaRegional
    int L2prensaEstatalInternacional

    // Participación en la política deportiva
    int L2deporteEscolar
    int L2marcaGetxo

    // Participación y colaboración con otras asociaciones o centros escolares o en progrmas y/o actividades municipales
    int L2getxoKirolak
    int L2centrosEscolares
    int L2otrosClubes

    // Continuidad y estabilidad
    int L2antiguedad

    // Valoración de deportistas
    int L2puestoEnTorneosInternacionales
    int L2puestoEnCircuitosInternacionales
    int L2puestoEnTorneosNacionales
    int L2puestoEnCircuitosNacionales
    int L2PrimerPuestoEnTorneosAutonomicos
    int L2campeonatosEuskadi
    int L2campeonatosEspaña
    int L2campeonatosEuropa
    int L2campeonatosMundo

    //Indice de participacion
    BigDecimal L2indiceParticipacion

    // Indice de corrección
    BigDecimal L2indiceCorreccion

    ////////////////
    /// LINEA 3 ////
    ////////////////

    int L3categoriaFaseFinal
    int L3resultadoObtenido

    ////////////////
    /// LINEA 4 ////
    ////////////////

    // Agentes implicados en el evento
    int L4propioClub
    int L4otrosClubes
    int L4ampas
    int L4categoriasEscolares
    int L4categoriasFederadas
    int L4veteranos

    // Adecuación del presupuesto al anterior
    int L4desviacion

    // Calidad en el diseño de la actividad
    int L4participacionEstimada
    int L4comunicacionAMedios
    int L4usoNuevasTecnologías

    // Participación femenina
    int L4participacionFemeninaEvento

    // Valoración del solicitante
    int L4experienciaSolicitante

    ///////////////////////////
    /// EXCLUSIVOS LINEA 5 ////
    ///////////////////////////

    // Impacto actividad
    int L5numeroEspectadores

    // Adecuación del presupuesto
    int L5recursosPropios

    // Calidad en el diseño de la actividad  (tb linea 5)
    int L5participacionEstimada
    int L5comunicacionAMedios
    int L5usoNuevasTecnologías

    // Participación femenina   (tb linea 5)
    int L5participacionFemenina

    // Valoración del solicitante  (tb linea 5)
    int L5experienciaSolicitante


    ////////////////
    /// LINEA 6 ////
    ////////////////

    // Repercusión mediática
    int L6prensaLocal
    int L6prensaComarcal
    int L6prensaRegional
    int L6prensaEstatal

    // Costes
    int L6costeActividad

    //Medios propios
    int L6mediosPropios

    // Dificultad para acudir a otros medios de financiación
    int L6patrcinioPrivado


    ////////////////
    /// LINEA 7 ////
    ////////////////

    // Repercusión mediática
    int L7prensaLocal
    int L7prensaComarcal
    int L7prensaRegional
    int L7prensaEstatal

    // Costes
    int L7costeActividad

    //Medios propios
    int L7mediosPropios

    // Dificultad para acudir a otros medios de financiación
    int L7patrcinioPrivado



    static belongsTo = [solicitud: Solicitud]

    static constraints = {
    }
}

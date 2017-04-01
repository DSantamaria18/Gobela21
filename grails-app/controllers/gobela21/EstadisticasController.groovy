package gobela21

import jxl.Workbook
import jxl.write.Label
import jxl.write.WritableSheet
import jxl.write.WritableWorkbook

class EstadisticasController {
    def InformesService

    def index() {
        def resultList = InformesService.subvencionesPorLinea()
        [resultList: resultList]
    }

/*    def exportar() {
        response.contentType = grailsApplication.config.grails.mime.types['excel']
        response.setHeader("Content-disposition", "attachment; filename=lineas.xls")
        exportService.export('excel', response.outputStream, params.resultList[0], [:], [:])

        redirect action: "index"
    }*/

    def jxl(){
        def resultList  = InformesService.subvencionesPorLinea()
        response.setContentType('application/vnd.ms-excel')
        response.setHeader('Content-Disposition', 'Attachment;Filename="subvenciones.xls"')
        WritableWorkbook workbook = Workbook.createWorkbook(response.outputStream)
        for (int i = 0; i < resultList.size(); i++){
            String nombreHoja = "Linea ${i+1}"
            def datosLinea = resultList[i]
            if (datosLinea.size() > 0){
                println("   :: Creando la hoja ${nombreHoja}")
                WritableSheet sheet = workbook.createSheet(nombreHoja,i)
                sheet.addCell(new Label(0,0, "SUBVENCIONES LINEA ${i+1}"))
                def cabeceras = datosLinea[0].keySet()
                for (int j = 0; j < cabeceras.size(); j++){
                    sheet.addCell(new Label(j,3, "${cabeceras[j]}"))
                }
                for (int z = 0; z < datosLinea.size(); z++){
                    def subvencion = datosLinea[z]
                    for (int x = 0; x < subvencion.size(); x++){
                        sheet.addCell(new Label(x, z+4, "${subvencion[x]}"))
                    }
                }
            }
        }
       /* WritableSheet sheet1 = workbook.createSheet("Students", 0)
        sheet1.addCell(new Label(0,0, "First Name"))
        sheet1.addCell(new Label(1,0, "Last Name"))
        sheet1.addCell(new Label(2,0, "Age"))
        sheet1.addCell(new Label(0,1, "John"))
        sheet1.addCell(new Label(1,1, "Doe"))
        sheet1.addCell(new Label(2,1, "20"))
        sheet1.addCell(new Label(0,2, "Jane"))
        sheet1.addCell(new Label(1,2, "Smith"))
        sheet1.addCell(new Label(2,2, "18"))
        WritableSheet sheet2 = workbook.createSheet("Courses", 1)
        sheet2.addCell(new Label(0,0, "Course Name"))
        sheet2.addCell(new Label(1,0, "Number of units"))
        sheet2.addCell(new Label(0,1, "Algebra"))
        sheet2.addCell(new Label(1,1, "3"))
        sheet2.addCell(new Label(0,2, "English Grammar"))
        sheet2.addCell(new Label(1,2, "5"))*/
        workbook.write()
        workbook.close()
    }
}




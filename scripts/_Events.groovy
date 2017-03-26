import java.text.SimpleDateFormat

/**
 * Created by David on 26/03/2017.
 */

eventCreateWarStart = { warName, stagingDir ->

    Map<String, Integer> mappings = ['M': 0, 'm': 1, 'p': 2]
    String versionParam = System.getProperty('version.update.position', 'm')
    def lastAppVersionNumberList = metadata.'app.version'.split('\\.')

    def formatter = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss")
    def buildDate = formatter.format(new Date(System.currentTimeMillis()))
    metadata.'app.buildDate' = buildDate
    metadata.'app.buildProfile' = grailsEnv

    println()
    println "*** Started customised version update of Grails app. Current version: ${metadata.'app.version'}"

    lastAppVersionNumberList[mappings[versionParam]] = Integer.valueOf(lastAppVersionNumberList[mappings[versionParam]]) + 1

    metadata.'app.version' = lastAppVersionNumberList.join('.')
    metadata.persist()

    println "*** Ended customised version update of Grails app. Current version: ${lastAppVersionNumberList.join('.')}"
}

eventCompileStart = { kind ->

    Map<String, Integer> mappings = ['M': 0, 'm': 1, 'p': 2]
    String versionParam = System.getProperty('version.update.position', 'p')
    def lastAppVersionNumberList = metadata.'app.version'.split('\\.')

    def formatter = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss")
    def buildDate = formatter.format(new Date(System.currentTimeMillis()))
    metadata.'app.buildDate' = buildDate
    metadata.'app.buildProfile' = grailsEnv

    println()
    println "*** Started customised version update of Grails app. Current version: ${metadata.'app.version'}"

    lastAppVersionNumberList[mappings[versionParam]] = Integer.valueOf(lastAppVersionNumberList[mappings[versionParam]]) + 1

    metadata.'app.version' = lastAppVersionNumberList.join('.')
    metadata.persist()

    println "*** Ended customised version update of Grails app. Current version: ${lastAppVersionNumberList.join('.')}"
}


// <cfscript>
// // cfinsert( datasource="myDsn", tablename="users", formFields="firstName,lastName,emailAddress" );
// // </cfscript>


// <cfquery name="news">
//     SELECT id,title,story
//     FROM news
//     WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
// </cfquery>


// <cfset news = queryNew("id,title", "integer,varchar")>
// <cfset queryAddRow(news)>
// <cfset querySetCell(news, "id", "1")>
// <cfset querySetCell(news, "title", "Dewey defeats Truman")>
// <cfset queryAddRow(news)>
// <cfset querySetCell(news, "id", "2")>
// <cfset querySetCell(news, "title", "Men walk on Moon")>
// <cfset writeDump(news)>

// <!--- run QofQ (query of query) --->
// <cfquery name="sortedNews" dbtype="query">
//     SELECT id, title FROM news
//     ORDER BY title DESC
// </cfquery>
// <cfset writeDump(sortedNews)>

queryObj = new Query(
 name="qryDemo",
 datasource="WorkCubeDSN",
 sql = "SELECT col1, col2
 FROM myTable
 WHERE id=:id"
); 
queryObj.addParam(name="id",value=arguments.id, cfsqltype="cf_sql_integer");
resultset=queryObj.execute().getResult();
<!---

<cfcomponent extends ="[ ]" output = "[ ]" style = "[ ]" namespace = "[ ]" serviceportname = "[ ]" porttypename = "[ ]" bindingname = "[ ]" wsdlfile = "[ ]" displayname = "[ ]" hint = "[ ]">
    
    <cffunction name = "add" returnType = "[ ]" roles = "[ ]" access = "[ ]" description = "[ ]" = "[ ]" displayName = "[ ]" hint = "[ ]">

    </cffunction>
</cfcomponent>





<cfscript>
    QueryExecute(
        'INSERT INTO MOVIES ( name ,  description, image , actor  , year ) VALUES ( ?,?,?,?,? )',
        [  'test item', 'test desc',  'img.png', 'test actor', 1 ],
        { datasource = 'WorkCubeDB', result="qryResult" }
    );
</cfscript>

<cfquery result="qryResult" datasource="WorkCubeDB">
    INSERT INTO MOVIES
    (
        name ,  description , actor , image , year
    )
    VALUES
    (
       
        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="Test Item">,
        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="Test Desc">,
        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="img.png">,
        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="Test actor">,
        <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="1">
    )
</cfquery>

<cfdump var="#qryResult#">


--->


cfinsert( datasource="WorkCubeDB", tablename="ACTORS", formFields="firstName,lastName,age,MOVIES,image" );
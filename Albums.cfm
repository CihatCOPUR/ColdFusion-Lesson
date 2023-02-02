<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <title>I and my first project</title>

</head>
<body> 
<!-------------------------------Header----------------------------------------------------->
<center class='head'>
    <h1>First  Project</h1>
</center>


<!-------------------------------Navbar----------------------------------------------------->
<cfdiv class='navbar'> 
    
    <h1><a href='index.cfm'  style="text-decoration: none">Home</a> </h1>
    <h1><a href='Watched_Films.cfm'  style="text-decoration: none">Watched Films</a></h1>
    <h1><a href='Actors.cfm'  style="text-decoration: none">Actors</a></h1>
    <h1><a href='Albums.cfm'  style="text-decoration: none">Albums</a></h1>
    <h1><a href='Books.cfm'  style="text-decoration: none">Books</a></h1>
 
</cfdiv>


<!-------------------------------Content----------------------------------------------------->


<cfquery name = "ALBUMS" datasource = "WorkCubeDB">
  SELECT * 
  FROM ALBUMS  
  FOR JSON PATH
</cfquery>




<cfset jsonData = '[{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/d\/db\/Anatolia_Lycian_salamander_imported_from_iNaturalist_photo_181031301_on_6_August_2022.jpg\/120px-Anatolia_Lycian_salamander_imported_from_iNaturalist_photo_181031301_on_6_August_2022.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/a\/ac\/Large_format_camera_lens.jpg\/120px-Large_format_camera_lens.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/7\/76\/Beldir.jpg\/120px-Beldir.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/f\/fa\/Pardus_2009_ekran_g%C3%B6r%C3%BCnt%C3%BCs%C3%BC.png\/120px-Pardus_2009_ekran_g%C3%B6r%C3%BCnt%C3%BCs%C3%BC.png"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/f\/fd\/Solar_eclipse_animate_%282006-Mar-29%29.gif\/120px-Solar_eclipse_animate_%282006-Mar-29%29.gif"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/0\/02\/White_Fence-Paul_Strand_1916.jpg\/120px-White_Fence-Paul_Strand_1916.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/6\/6b\/Flag_of_Berkshire.svg\/150px-Flag_of_Berkshire.svg.png"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/f\/f7\/Mersin_Urban_History_Museum_II%2C_Turkey.jpg\/120px-Mersin_Urban_History_Museum_II%2C_Turkey.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/a\/af\/Ulucamimeyavuz2008_12_26_01.JPG\/150px-Ulucamimeyavuz2008_12_26_01.JPG"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/2\/2c\/Shrine-of-Bahaullah.jpg\/150px-Shrine-of-Bahaullah.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/1\/19\/Cour_palais_grand_ma%C3%AEtre_Rhodes.jpg\/150px-Cour_palais_grand_ma%C3%AEtre_Rhodes.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/6\/6d\/US_Navy_030529-N-5362A-001_A_U.S._Marine_Corps_Humvee_vehicle_drives_down_a_road_at_the_foot_of_Saddam_Hussein%27s_former_Summer_palace_with_ruins_of_ancient_Babylon_in_the_background.jpg\/150px-thumbnail.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/a\/af\/All_Gizah_Pyramids.jpg\/150px-All_Gizah_Pyramids.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/f\/f3\/Templo-Artemisa-Efeso-2017.jpg\/120px-Templo-Artemisa-Efeso-2017.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/7\/70\/SkocjanskeJame_2013jpg.jpg\/180px-SkocjanskeJame_2013jpg.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/9\/98\/Mercati_di_Traiano_-_Roma.jpg\/150px-Mercati_di_Traiano_-_Roma.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/4\/44\/Timbuktu_Mosque_Sankore.jpg\/120px-Timbuktu_Mosque_Sankore.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/e\/e8\/Tassili_Sahara_74.jpg\/150px-Tassili_Sahara_74.jpg"},{"IMG":"https:\/\/upload.wikimedia.org\/wikipedia\/commons\/thumb\/7\/72\/Unisfera_Flushing.jpg\/150px-Unisfera_Flushing.jpg"}]'>


<cfset dataStruct = DeserializeJSON(jsonData)>

<div class='AlbumsDiv'>
  <cfloop array="#dataStruct#" index="currentItem">
    <cfoutput>
      <img class="ALBUMS_IMG" src="#currentItem.IMG#" alt="Card image cap"> 
    </cfoutput><br>
  </cfloop>
</div>




<!-------------------------------Footer----------------------------------------------------->

<cfdiv class='footer_container_3'>
        <marquee >
          <p>Cihat    © 2020 All Rights Reserved.</p>
        </marquee>
         <cfoutput>#dateFormat(now(), 'long')#</cfoutput>
           <p>  Workcube     Coder  </p>
      <p>
        <a href='https://www.linkedin.com/in/cihat-%C3%A7opur-ba13a924a/' target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16"><path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z"/></svg></a>


        <a href='https://github.com/CihatCOPUR/FirstProject-ColdFusion' target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-github" viewBox="0 0 16 16"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg></a>
      </p>
</cfdiv>


</body>
</html>
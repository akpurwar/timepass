# timepass


<!DOCTYPE html>
<html lang="en">
<head>
   <title>registration</title>
   <script src =validate.js></script>
</head>
<body>
    <table style="width:50px">
    <tr>
        <td>Name</td>
            <td><input type="text" id = "textname">   </td>
             <td> <span id = "errspanname"> </span>  </td>   
    </tr>
    <tr>
            <td>Age</td>
        <td><input type="text" id = "textage">   </td>
         <td> <span id = "errspanage"> </span>  </td>   
</tr>
<tr>
        <td>Email</td>
    <td><input type="text" id = "textemail">   </td>
     <td> <span id = "errspanemail"> </span>  </td>   
</tr>
<tr>
        <td>password</td>
    <td><input type="text" id = "textpassword">   </td>
     <td> <span id = "errpassword"> </span>  </td>   
</tr>

<tr>
        <td>confirm password</td>
    <td><input type="text" id = "textconfirmpassword">   </td>
     
</tr>
<tr>
       
    <td colspan="3"><input type="button" id = "bregister" value="Register" onclick = "validate()">   </td>
     
</tr>
 </table>
</body>
</html>







function validate()
    {
        debugger;
       var isnameempty = Validateempty("textname","errspanname","name is required");
       if(isnameempty == false)
       {
           validtextonly("textname","errspanname","Name can not be number");
       }
        var isageempty = Validateempty("textage","errspanage","age is required");
        if(isageempty == false)
        {
           var isitnumber = validnumberonly("textage","errspanage","age can not be character ");
           if(isitnumber == true)
           {
            validrangeonly("textage","errspanage","age must be in rang ",18,50)      ;
           }

        }

        Validateempty("textemail","errspanemail","email is required");

      var ispassword =  Validateempty("textpassword","errpassword","password is required");
if(ispassword == false)
{
    validpassword("textpassword","textconfirmpassword","errpassword","password must match") ;
}


    }





        function Validateempty(id,spanid,errmsg)
{
    debugger;
    isitempty = true;
   var element = document.getElementById(id);
   var errspan = document.getElementById(spanid);
    if(element.value == "")
    {
        errspan.innerText = errmsg;
     isitempty = true;
    }
    else
       {
        errspan.innerText = "";
        isitempty = false;
       }     
       return isitempty;
}
    function validtextonly(id,spanid,errmsg)
    {
        var element = document.getElementById(id);
   var errspan = document.getElementById(spanid);
   if(isNaN(element.value))
   {
    errspan.innerText = "";

   }
   else{
    errspan.innerText = errmsg;
      
   }
    }

function validnumberonly(id,spanid,errmsg)
{
isitnumber = true;
var element = document.getElementById(id);
   var errspan = document.getElementById(spanid);
   if(isNaN(element.value))
   {
    errspan.innerText =errmsg;
    isitnumber = false;

   }
   else{
    errspan.innerText = "";
    isitnumber = true;
      
   }
   return isitnumber;
}

function validrangeonly(id,spanid,errmsg,min,max)
{
    isitvalidrange =true;
    var element = document.getElementById(id);
   var errspan = document.getElementById(spanid);
   var validvalue = parseInt(element.value)
   if(validvalue<min || validvalue>max)
   {
    errspan.innerText = errmsg;
    isitvalidrange = false;   
   }
   else
   {
       errspan.innerText = "";
       isitvalidrange = true;
   }
return isitvalidrange;
}

function validpassword(id,idconfirm,spanid,errmsg)
{
    isvalidpassword = true;
    var element = document.getElementById(id);
    var elementconfirm = document.getElementById(idconfirm)
   var errspan = document.getElementById(spanid);
   if(element.value == elementconfirm.value )
   {
       errspan.innertext = ""
       isvalidpassword = true;
   }
   else
   {
       errspan.innerText = errmsg;
       isvalidpassword = false;
   }
   return isvalidpassword ;
       

}

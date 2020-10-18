<!DOCTYPE html>
<html>
    <head>
        <title>Assignment 7.1</title>
    </head>
    <body onload="welcome()">
        <form name="validation" action="Sucess.html">

        <span id="welcome" >
           
        </span>


        <div>
        <label>First Name</label>
        <input type= "text"  id="Firstname" required />
       </div>

       <div>
        <label>Last Name</label>
        <input type= "text"  id="lastname" required/>
       </div>

       <div>
        <label>First Name</label>
        <input type= "date"  id="DateofBirth"/>
       </div>


       <div>
        <label>Email</label>
        <input type= "email"  id="email"/>
       </div>
        
       <div>
        <label>Hobby</label>
       </div>
       <div>
       <label>Reading</label>
              <input type= "checkbox" name="checkbox" id="checkbox1" onclick="Favourite()"/>
       </div>
       <div>
        <label>Movies</label>
              <input type= "checkbox" name="checkbox" id="checkbox2"/>
       </div>
        <div>
        <label>Photography</label>
        <input type= "checkbox" name="checkbox" id="checkbox3"/>
        </div>

        <div id = "Fav">
            <label>Favourite Writer</label>
        
        </div>

        <div>
            <input type="submit" value="Submit" onclick="validateform()"/>
            <input type="button" value="reset"/>
        </div>
       
       

        </form>
    </body>
</html>
<script>


    function welcome(){
        var wel = document.getElementById("welcome");
        var time =new Date().toLocaleTimeString();
        setInterval(welcome,1000);

      
    if(navigator.userAgent.indexOf("Chrome") != -1 )
    {
        wel.innerHTML ="Welcome to Chrome browser" + time;
    }
    else if(navigator.userAgent.indexOf("Safari") != -1)
    {
        wel.innerHTML ="Welcome to Safari browser"
        }
    else if(navigator.userAgent.indexOf("Firefox") != -1 ) 
    {
        wel.innerHTML ="Welcome to Firefox browser"
    }
     else 
    {
        wel.innerHTML ="Unknown"    }
    }
    
    function validateform(){


     
       

      var email = document.getElementById("email");
      var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
      if(email.value.match(mailformat))
      {
          alert("valid email address");
      }
        
      else{
          alert("invalid email address");
      }
        

      var x = false;
        var check = document.getElementsByName("checkbox");
        for(var i =0; i<check.length;i++)
        {
         if(check[i].checked){
          x = true;
          break;
         }
        }
        if(x){
            
            console.log("A checkbox ticked")
        }
        else{
            alert("please click a checkbox");
        }


      


        }

        function Favourite(){
            
        var divread = document.getElementById("Fav");
        var checkReading = document.getElementById("checkbox1");
        if(checkReading.checked ){
        
           var read = document.createElement('input');
           read.type ="text";
           divread.append(read);
            }
        
        }
      


       
        
        
    

</script>

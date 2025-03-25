<%-- 
    Document   : addfaculty
    Created on : 13 Feb, 2023, 7:17:29 PM
    Author     : Nandini pavale
--%>

<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Online College event managemnet system</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
      
      function validate()
    {
     var a=document.forms[0].elements[0].value;
      if(a==null || a=="")
      {
        document.getElementById("a").innerHTML="<font color=red>Fill name";
        return false;
      }
      if(!isNaN(a))
        { 
	    document.getElementById("a").innerHTML="<font color=red>Fill character value only";
	     return false;

        } 
        
        var b=document.forms[0].elements[1].value;
      if(b==null || b=="")
      {
        document.getElementById("b").innerHTML="<font color=red>Fill ID";
        return false;
      }
      if(isNaN(b))
        { 
	    document.getElementById("b").innerHTML="<font color=red>Fill Numeric value only";
	     return false;

        } 
        
        if(b.length<6)
	        {
	        	document.getElementById("b").innerHTML="<font color=red>Fill Valid ID it must be 6 digit";
                    return false;

	        }  
                
     var c=document.forms[0].elements[2].value;
      if(c==null || c=="")
      {
        document.getElementById("c").innerHTML="<font color=red>Fill Mobile number";
        return false;
      }
      if(isNaN(c))
        { 
	    document.getElementById("c").innerHTML="<font color=red>Fill Numeric value only";
	     return false;

        } 
        
        if(c.length<10)
	        {
	        	document.getElementById("c").innerHTML="<font color=red>Fill Valid Mobile number it must be 10 digit";
                    return false;

	        }  
                
                var d=document.forms[0].elements[3].value;
	        if(d==null || d=="")
		    {
                    document.getElementById("d").innerHTML="<font color=red>Fill Email";
                    return false;
	        } 
                
                var e=document.forms[0].elements[4].value;
      if(e==null || e=="")
      {
        document.getElementById("e").innerHTML="<font color=red>Fill Aadhaar number";
        return false;
      }
      if(isNaN(e))
        { 
	    document.getElementById("e").innerHTML="<font color=red>Fill Numeric value only";
	     return false;

        } 
        
        if(e.length<12)
	        {
	        	document.getElementById("e").innerHTML="<font color=red>Fill Valid Aadhaar number it must be 12 digit";
                    return false;

	        }  
                
                var f=document.forms[0].elements[5].value;
	        if(f==null || f=="")
		    {
                    document.getElementById("f").innerHTML="<font color=red>Fill Address";
                    return false;
	        } 
                
                var g=document.forms[0].elements[6].value
      if(g==null || g=="")
      {
      	 document.getElementById("g").innerHTML="<font color=red>Fill password";
        return false;
      }
      if(g.length<8)
			{
				document.getElementById("g").innerHTML="<font color=red>Password must be have 8 character";
				return false;
             }
             var h=document.forms[0].elements[7].value;
			if(h==null || h=="")
			{
				document.getElementById("h").innerHTML="<font color=red>Fill Confirm Password";
				return false;
			}
			if(h!=g)
			{
				document.getElementById("h").innerHTML="<font color=red> Mismatch Password";
				return false;

			}
         return true;
  }
      
  </script>
  <style>
      body{
   		
   		background-image: url('bgimg17.jpg');
   		background-size: cover;
   	}
   
      </style>
    </head>
    <body>
        <form action="addfacultyinsert.jsp" method="post" onsubmit="return validate()">
	<h2><center><font color="black" ><b><u>Add Faculty</u></b></font></center></h2>
        <div class="row">
            </div>
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4"><font color="black"  size="4px">Faculty Name</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-4"><font color="black"  size="4px">Faculty ID</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-2"></div>
            </div>
         <div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-4"><input type="text" name="fname" class="form-control">
			<p id="a"></p>
		</div>
		<div class="col-lg-4"><input type="text" name="fid" class="form-control">
			<p id="b"></p></div>
			<div class="col-lg-2"></div>
		
	</div>
            
        <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4"><font color="black"  size="4px">Mobile number</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-4"><font color="black"  size="4px">Email</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-2"></div>
            </div>
        
        <div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-4"><input type="text" name="mn" class="form-control">
			<p id="c"></p>
		</div>
		<div class="col-lg-4"><input type="email" name="email" class="form-control">
			<p id="d"></p></div>
			<div class="col-lg-2"></div>
		
	</div>
        
         <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4"><font color="black"  size="4px">Aadhaar number</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-4"><font color="black"  size="4px">Address</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-2"></div>
            </div>
        
        <div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-4"><input type="text" name="an" class="form-control">
			<p id="e"></p>
		</div>
		<div class="col-lg-4"><input type="textarea" name="add" class="form-control">
			<p id="f"></p></div>
			<div class="col-lg-2"></div>
		
	</div>
        
        <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4"><font color="black"  size="4px">set password</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-4"><font color="black"  size="4px">Confirm password</font><sup><font color="red" size="5px">*</font></sup></div>
                <div class="col-lg-2"></div>
            </div>
        
        <div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-4"><input type="set password" name="spass" class="form-control">
			<p id="g"></p>
		</div>
		<div class="col-lg-4"><input type="confirm password" name="cpass" class="form-control">
			<p id="h"></p></div>
			<div class="col-lg-2"></div>
		
	</div>
        
        <div align="center">
     		<input type="Submit" value="Submit" class="btn btn-primary">
     &nbsp;&nbsp;&nbsp;&nbsp;	<a href="admindashboard.jsp" class="btn btn-primary">Dashboard</a>
     </div>
        
        
        
        
        </form>
    </body>
</html>

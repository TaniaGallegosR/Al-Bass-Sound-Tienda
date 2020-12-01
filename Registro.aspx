<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TaniaCinemasStore.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
     <title>Al Bass Sound</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Lupaparaimagenes.css" rel="stylesheet" />
       

    <link href="css/Productos_clientes.css" rel="stylesheet" />
 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
  <style>
      
    /*  */
    
     .navbar {
      margin-bottom: 50px;
      border-radius: 0;
       height:80px;
      background-color:black;
      

      
    }
    
     .jumbotron {
      margin-bottom: 0;
    }
   
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
      <style>
  .horizontal-inner > .item > img,
  .horizontal-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
          .nav, .navbar-nav{
               
            margin-top:1%;
            margin-left:5%;
          }
            
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus

{
    background-color: gray;
}
                   

 

  </style>
     <script src='https://www.google.com/recaptcha/api.js'></script>

</head>
<body style="background-color:black;">
    <nav style="height:90px;" class="navbar navbar-inverse navbar-fixed-top ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button style="margin-bottom:7%;" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Defaul.aspx"><img src="Images/logo_small.png" height="65"/></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Defaul.aspx">Inicio</a></li>
        <li><a href="Productos.aspx">Productos</a></li>
          <asp:SqlDataSource runat="server" ID="CategorySqlDataSource1" ConnectionString='<%$ ConnectionStrings:TaniaConexion %>' SelectCommand="SELECT * FROM [Categorias]"></asp:SqlDataSource>
           <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Productos<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Categorias</li>
                                    <li role="separator" class="divider"></li>
                                    
               <asp:Repeater ID="RptrCategory" runat="server" DataSourceID="CategorySqlDataSource1">
                   
                   <ItemTemplate> <li><a href="Categoria.aspx?id=<%#Eval("cat_id") %>"><%# Eval("cat_nombre") %> </a></li></ItemTemplate>
               </asp:Repeater>
          <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TaniaConexion %>' SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
               
          

                                    
                                    
                                </ul>
                            </li>
  
      
      
        <li><a href="#">Contacto</a></li>
      </ul>
     
      </ul>
    </div>
  </div>
</nav>
    
<br>

<br>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {


            $('#contact_form').bootstrapValidator({
                // USAR LOS ICONOS VALIDACIONES//
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                  
                    txt_pass: {
                        validators: {
                            stringLength: {
                                min: 8,
                            },
                            notEmpty: {
                                message: 'Ingresa una contraseña con al menos 8 caracteres'
                            }
                        }
                    },
                    confirm_password: {
                        validators: {
                            stringLength: {
                                min: 8,
                            },
                            notEmpty: {
                                message: 'Confirma tu contraseña'
                            },
                            identical: {
                                field: 'txt_pass',
                                message: 'Tu contraseña no es igual'
                            }

                        }
                    },
                  
                
                    txt_phno: {
                        validators: {
                            stringLength: {
                                min: 10,
                                max: 10,
                            },
                            notEmpty: {
                                message: 'Ingresa una contraseña con 10 caracteres'
                            }
                        }
                    },
               
                 
          
                }
            })

        });
    </script>

         

    <style>
        #success_message{ display: none;}
        .inputGroupContainer,.selectContainer {
        
            margin-left:30%;
        }


        #contact_form{
        
        background-color:black;
        
        }
    </style>

    
       <div class="container reg">

    <form runat="server" class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- FORMULARIO DE REGISTRO -->
    <legend>
        <center>
            <h2><b><font color="white">REGISTRO </font></b></h2>
        </center>
    </legend><br>


        
<div class="form-group">
 
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <asp:TextBox runat="server" ID="txt_fname" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>



<div class="form-group">
  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <asp:TextBox runat="server" ID="txt_lname" placeholder="Apellido" class="form-control"></asp:TextBox>
    </div>
  </div>
</div>

 
       <div class="form-group">
 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <asp:TextBox runat="server" ID="txt_email" placeholder="Correo" class="form-control"></asp:TextBox>
    </div>
  </div>
</div>

  

<div class="form-group">
 
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
  <asp:TextBox type="number" runat="server" ID="txt_phno" placeholder="Telefono." CssClass="form-control"></asp:TextBox>
      
    </div>
  </div>
</div>


<div class="form-group">
  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <asp:TextBox runat="server" ID="txt_addr" placeholder="Ingresa tu dirección" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
    </div>
  </div>
</div>

    <div class="form-group">
 
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <asp:TextBox runat="server" ID="txt_city" placeholder="Ciudad" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>
  

<div class="form-group">
  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <asp:TextBox runat="server" ID="txt_state" placeholder="Estado" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>

    <div class="form-group"> 
 
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <select name="country" class="form-control selectpicker">
      <option value="">Selecciona tu Pais</option>
      <option value="USA">México</option>
      <option value="UK">Estados Unidos</option>

 
    </select>
  </div>
</div>
</div>
  
<div class="form-group">
  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <asp:TextBox runat="server" ID="txt_pass" placeholder="Contraseña" class="form-control"  TextMode="Contraseña"></asp:TextBox>
    </div>
  </div>
</div>


<div class="form-group">
  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <asp:TextBox runat="server" ID="confirm_password" placeholder="Confirma contraseña" class="form-control"  TextMode="Contraseña"></asp:TextBox>
    </div>
  </div>
</div>





  
<div class="alert alert-success" role="alert" id="success_message">Exitoso yphicon glyphicon-thumbs-up"></i> Exito!.</div>

<!-- BOTOON DE REGISTAR -->
<div class="form-group">
  
  <div class="col-md-4 inputGroupContainer"><br>
  <CENTER><asp:Button runat="server" ID="btnsubmit" OnClick="btnsubmit_Click" type="submit" class="btn btn-success" Text="REGISTRAR" Height="34px" Width="140px"></asp:Button></CENTER>
     
      
     <CENTER> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></CENTER>
    <center>  <a href="Login.aspx">LOGIN</a></center>
  </div>
</div>
        
</fieldset>
</form>
</div>

    <br /><br />
  
 <div class="container"> </div><div>
<footer style="background-color:black; color:white; text-align:center;">
    























<p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2020</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
</footer>
    </div><!-- /.CONTENEDOR -->
    <script src="js/bootstrap.js"></script>
</body>
</html>
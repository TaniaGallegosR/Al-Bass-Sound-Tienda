<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMAESTRA.Master" AutoEventWireup="true" CodeBehind="Defaul.aspx.cs" Inherits="TaniaCinemasStore.Defaul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="MiDeslizador" class="carousel slide" data-ride="carousel">
  <!-- Indicadores -->
  <ol class="carousel-indicators">
    <li data-target="#mideslizador" data-slide-to="0" class="active"></li>
    <li data-target="#mideslizador" data-slide-to="1"></li>
    <li data-target="#mideslizador" data-slide-to="2"></li>
    <li data-target="#mideslizador" data-slide-to="3"></li>
  </ol>

  <!-- FOTOS PARA LA ENTRADA DE LA WEB -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="slider/fender.jpg" alt="Chania">
      
    </div>

    <div class="item">
      <img src="slider/fender.jpg"  alt="Chania">
      
    </div>

    <div class="item">
      <img src="slider/fender.jpg" alt="Flower">
    </div>

    <div class="item">
      <img src="slider/fender.jpg" alt="Flower">
    </div>


  <!-- derecha e izquierda -->
  <a class="left carousel-control" href="#MiDeslizador" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Anterior</span>
  </a>
  <a class="right carousel-control" href="#MiDeslizador" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Siguiente</span>
  </a>
</div>
        
        </div>
</asp:Content>


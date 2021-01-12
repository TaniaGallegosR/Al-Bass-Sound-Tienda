<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="Agregar_Categoria.aspx.cs" Inherits="ABS.Agregar_Categoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">

        <div class="col-xs-4">
            <label class="form-group"> Nombre</label>
            <asp:TextBox CssClass="form-control" placeholder="Nombre de la Categoria" ID="cat_nombre" runat="server" OnTextChanged="cat_nombre_TextChanged"></asp:TextBox>
        </div>
        
        </div>
        <div class="row"><br /> </div>
        <div class="row"> 
        <div class="col-xs-4">
            <label class="form-group"> Detalles</label>
            <asp:TextBox ID="cat_detalles" runat="server" CssClass="form-control" placeholder="Detalles Categorias" OnTextChanged="cat_detalles_TextChanged"></asp:TextBox><br />
        </div>

        </div>
                <asp:Button ID="Btn_Aceptar" runat="server" Text="ACEPTAR" OnClick="Aceptar_Click" CssClass="btn btn-success" Height="31px" Width="126px" />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &copy ALL BASS SOUND Copyright 2020<br />
        <br />

    </div>
</asp:Content>


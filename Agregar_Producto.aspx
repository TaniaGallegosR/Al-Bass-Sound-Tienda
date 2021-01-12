<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="Agregar_Producto.aspx.cs" Inherits="ABS.Agregar_Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container">
       <div class="row">
       <div class="col-xs-4">
           <label class="form-group">  Categoria del Producto :</label>
        
              <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="cat_nombre" 
                DataValueField="cat_nombre" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server"
               ConnectionString="<%$ ConnectionStrings:ACONEXION %>"
               SelectCommand="SELECT [cat_nombre] FROM [Categorias] ORDER BY [cat_id]"></asp:SqlDataSource>
       </div>
           </div>

       <div class="row">
       <div class="col-xs-4">
           N<label class="form-group">Nombre:</label>   
            <asp:TextBox ID="nombre" runat="server" CssClass="form-control" OnTextChanged="nombre_TextChanged"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="nombre" ErrorMessage="RequiredFieldValidator" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
       </div>
           </div>

       <div class="row">
       <div class="col-xs-4">
            Descripción<label class="form-group">:</label>   
            <asp:TextBox ID="desc" runat="server" CssClass="form-control" Height="16px" OnTextChanged="desc_TextChanged" TextMode="MultiLine" Width="111px"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="desc" ErrorMessage="RequiredFieldValidator" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
           </div>
           </div>

       <div class="row">
       <div class="col-xs-4">
       
            Imagen<label class="form-group"> :</label>   
            <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control"/>
           </div>
           </div>
       
       <div class="row">
       <div class="col-xs-4">
             <label class="form-group"> Precio :</label>   
            <asp:TextBox ID="precio" runat="server" CssClass="form-control" OnTextChanged="precio_TextChanged"></asp:TextBox>

       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="precio" ErrorMessage="RequiredFieldValidator" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
           </div>
           </div>
        
       <div class="row">
       <div class="col-xs-4">
            Marca<label class="form-group"> :</label>   
            <asp:TextBox ID="marca" runat="server" CssClass="form-control" OnTextChanged="marca_TextChanged"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="marca" ErrorMessage="RequiredFieldValidator" 
                ValidationGroup="a"></asp:RequiredFieldValidator>
           </div>
           </div>
       
        
       <div class="row">
       <div class="col-xs-4">
            <asp:Label ID="NoImagen" runat="server" CssClass="form-group" />
            <asp:Button ID="Btn_Aceptar" runat="server" Text="ACEPTAR" onclick="Aceptar_Click" 
                ValidationGroup="a" CssClass="btn btn-success" />
           </div>
           <br />
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&copy ALL BASS SOUND Copyright</div>
   </div>     
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="AdminINICIO.aspx.cs" Inherits="ABS.AdminINICIO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="orden_id" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="Usuario_ID" HeaderText="ID Usuario" SortExpression="Usuario_ID"></asp:BoundField>
            <asp:BoundField DataField="orden_id" HeaderText="ID Orden" ReadOnly="True" SortExpression="orden_id"></asp:BoundField>
           
            <asp:BoundField DataField="orden_fecha" HeaderText="Fecha de Orden" SortExpression="orden_fecha"></asp:BoundField>
            <asp:BoundField DataField="orden_famt" HeaderText="Orden famt" SortExpression="orden_famt"></asp:BoundField>

            <asp:BoundField DataField="orden_direccionEnvio" HeaderText="Direccion de Envio" SortExpression="orden_direccionEnvio"></asp:BoundField>
            <asp:BoundField DataField="orden_FechaEnvio" HeaderText="Fecha de Envio" SortExpression="orden_FechaEnvio"></asp:BoundField>
            <asp:BoundField DataField="usuario_correo" HeaderText="Correo" SortExpression="usuario_correo"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC"></FooterStyle>

        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ACONEXION %>' SelectCommand="SELECT [ORDENES].Usuario_ID, [ORDENES].orden_id, [ORDENES].orden_fecha, [ORDENES].orden_famt, [ORDENES].orden_direccionEnvio, [ORDENES].orden_FechaEnvio, Usuario.usuario_correo FROM [ORDENES] INNER JOIN Usuario ON [ORDENES].Usuario_ID = Usuario.Usuario_ID"></asp:SqlDataSource>
      <br />
      <br />
      
 
  </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="esta.aspx.cs" Inherits="TaniaCinemasStore.esta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">

        <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Usuario_ID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" Height="457px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1024px">
            <Columns>
          <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="Usuario_ID" HeaderText="Usuario_ID" ReadOnly="True" SortExpression="Usuario_ID"></asp:BoundField>
                <asp:BoundField DataField="usuario_nombre" HeaderText="usuario_nombre" SortExpression="usuario_nombre"></asp:BoundField>
                <asp:BoundField DataField="usuario_apellido" HeaderText="usuario_apellido" SortExpression="usuario_apellido"></asp:BoundField>
                <asp:BoundField DataField="usuario_correo" HeaderText="usuario_correo" SortExpression="usuario_correo"></asp:BoundField>
                <asp:BoundField DataField="usuario_telefono" HeaderText="usuario_telefono" SortExpression="usuario_telefono"></asp:BoundField>
                <asp:BoundField DataField="usuario_direccion" HeaderText="usuario_direccion" SortExpression="usuario_direccion"></asp:BoundField>
                <asp:BoundField DataField="usuario_ciudad" HeaderText="usuario_ciudad" SortExpression="usuario_ciudad"></asp:BoundField>
                <asp:BoundField DataField="usuario_estado" HeaderText="usuario_estado" SortExpression="usuario_estado"></asp:BoundField>
                <asp:BoundField DataField="ciudad" HeaderText="ciudad" SortExpression="ciudad"></asp:BoundField>
                <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña"></asp:BoundField>

            </Columns>
        </asp:GridView>


        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:TaniaConexion %>' DeleteCommand="DELETE FROM [Usuario] WHERE [Usuario_ID] = @Usuario_ID" InsertCommand="INSERT INTO [Usuario] ([Usuario_ID], [usuario_nombre], [usuario_apellido], [usuario_correo], [usuario_telefono], [usuario_direccion], [usuario_ciudad], [usuario_estado], [ciudad], [contraseña]) VALUES (@Usuario_ID, @usuario_nombre, @usuario_apellido, @usuario_correo, @usuario_telefono, @usuario_ciudad, @usuario_estado, @ciudad,@contraseña)" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [usuario_nombre] = @usuario_nombre, [usuario_apellido] = @usuario_apellido, [usuario_correo] = @usuario_correo, [usuario_telefono] = @usuario_telefono,[usuario_direccion] = @usuario_direccion, [usuario_ciudad] = @usuario_ciudad, [usuario_estado] = @usuario_estado,[ciudad] = @ciudad, [contraseña]=@contraseña WHERE [Usuario_ID] = @Usuario_ID">
            <DeleteParameters>
                <asp:Parameter Name="Usuario_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usuario_nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_apellido" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_correo" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_telefono" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_direccion" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_ciudad" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_estado" Type="String"></asp:Parameter>
                <asp:Parameter Name="ciudad" Type="String"></asp:Parameter>
                <asp:Parameter Name="contraseña" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="usuario_nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_apellido" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_correo" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_telefono" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_direccion" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_ciudad" Type="String"></asp:Parameter>
                <asp:Parameter Name="usuario_estado" Type="String"></asp:Parameter>
                <asp:Parameter Name="ciudad" Type="String"></asp:Parameter>
                <asp:Parameter Name="contraseña" Type="String"></asp:Parameter>
                <asp:Parameter Name="Usuario_ID" Type="Int32"></asp:Parameter>

            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="Editar_Categorias.aspx.cs" Inherits="ABS.Editar_Categorias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cat_id" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" Height="457px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1024px">
            <Columns>
          <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="cat_id" HeaderText="cat_id" ReadOnly="True" SortExpression="orden_id"></asp:BoundField>
                <asp:BoundField DataField="cat_nombre" HeaderText="cat_nombre" SortExpression="cat_nombre"></asp:BoundField>
                <asp:BoundField DataField="cat_detalles" HeaderText="cat_detalles" SortExpression="cat_detalles"></asp:BoundField>
                
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ACONEXION %>' DeleteCommand="DELETE FROM [Categorias] WHERE [cat_id] = @cat_id" InsertCommand="INSERT INTO [Categorias] ([cat_nombre], [cat_detalles]) VALUES (@cat_nombre, @cat_detalles)" SelectCommand="SELECT * FROM [Categorias]" UpdateCommand="UPDATE [Categorias] SET [cat_nombre] = @cat_nombre, [cat_detalles] = @cat_detalles WHERE [cat_id] = @cat_id">
            <DeleteParameters>
                <asp:Parameter Name="cat_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cat_nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="cat_detalles" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cat_nombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="cat_detalles" Type="String"></asp:Parameter>
                <asp:Parameter Name="cat_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>


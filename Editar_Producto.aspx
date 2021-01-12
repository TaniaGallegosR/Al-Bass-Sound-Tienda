<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="Editar_Producto.aspx.cs" Inherits="ABS.Editar_Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="p_id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="p_id" HeaderText="p_id" ReadOnly="True" SortExpression="p_id"></asp:BoundField>
                <asp:BoundField DataField="p_nombre" HeaderText="p_nombre" SortExpression="p_nombre"></asp:BoundField>
                <asp:BoundField DataField="p_descripcion" HeaderText="p_descripcion" SortExpression="p_descripcion"></asp:BoundField>
                <asp:BoundField DataField="p_precio" HeaderText="p_precio" SortExpression="p_precio"></asp:BoundField>
                <asp:BoundField DataField="cat_id" HeaderText="cat_id" SortExpression="cat_id"></asp:BoundField>
                <asp:BoundField DataField="p_marca" HeaderText="p_marca" SortExpression="p_marca"></asp:BoundField>
                <asp:BoundField DataField="p_imagen" HeaderText="p_imagen" SortExpression="p_imagen"></asp:BoundField>
            </Columns>
        </asp:GridView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ACONEXION %>' DeleteCommand="DELETE FROM [Producto] WHERE [p_id] = @p_id" InsertCommand="INSERT INTO [Producto] ([p_id], [p_nombre], [p_descripcion], [p_precio], [cat_id], [p_marca], [p_imagen]) VALUES (@p_id, @p_nombre, @p_descripcion, @p_precio, @cat_id, @p_marca, @p_imagen)" SelectCommand="SELECT * FROM [Producto] ORDER BY [p_id]" UpdateCommand="UPDATE [Producto] SET [p_nombre] = @p_nombre, [p_descripcion] = @p_descripcion, [p_precio] = @p_precio, [cat_id] = @cat_id, [p_marca] = @p_marca, [p_imagen] = @p_imagen WHERE [p_id] = @p_id">
        <DeleteParameters>
            <asp:Parameter Name="p_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="p_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="p_nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_precio" Type="Decimal"></asp:Parameter>
            
            <asp:Parameter Name="cat_id" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_marca" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_imagen" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="p_nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_precio" Type="Decimal"></asp:Parameter>
           
            <asp:Parameter Name="cat_id" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_marca" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_imagen" Type="String"></asp:Parameter>
            <asp:Parameter Name="p_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>



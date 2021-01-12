<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="EstatusAdmin.aspx.cs" Inherits="ABS.EstatusAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=container>
    <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TuOrden_ID" 
        DataSourceID="SqlDataSource1" OnDataBound="GridView1_DataBound" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TuOrden_ID" HeaderText="TuOrden_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="TuOrden_ID" />
            <asp:BoundField DataField="Usuario_ID" HeaderText="Usuario_ID" 
                SortExpression="Usuario_ID" />
            <asp:BoundField DataField="p_nombre" HeaderText="p_nombre" 
                SortExpression="p_nombre" />
            <asp:BoundField DataField="p_imagen" HeaderText="p_imagen" 
                SortExpression="p_imagen" />
            <asp:BoundField DataField="total" HeaderText="total" 
                SortExpression="total" />
            <asp:BoundField DataField="p_id" HeaderText="p_id" SortExpression="p_id" />
            <asp:BoundField DataField="estatus" HeaderText="estatus" 
                SortExpression="estatus" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ACONEXION %>" 
        DeleteCommand="DELETE FROM [TusOrdenes] WHERE [TuOrden_ID] = @TuOrden_ID" 
        InsertCommand="INSERT INTO [TusOrdenes] ([Usuario_ID], [p_nombre], [p_imagen], [total], [p_id], [estatus]) VALUES (@Usuario_ID, @p_nombre, @p_imagen, @total, @p_id, @estatus)" 
        SelectCommand="SELECT * FROM [TusOrdenes]" 
        UpdateCommand="UPDATE [TusOrdenes] SET [Usuario_ID] = @Usuario_ID, [p_nombre] = @p_nombre, [p_imagen] = @p_imagen, [total] = @total, [p_id] = @p_id, [estatus] = @estatus WHERE [TuOrden_ID] = @TuOrden_ID">
        <DeleteParameters>
            <asp:Parameter Name="TuOrden_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Usuario_ID" Type="Int32" />
            <asp:Parameter Name="p_nombre" Type="String" />
            <asp:Parameter Name="p_imagen" Type="String" />
            <asp:Parameter Name="total" Type="String" />
            <asp:Parameter Name="p_id" Type="String" />
            <asp:Parameter Name="estatus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Usuario_ID" Type="Int32" />
            <asp:Parameter Name="p_nombre" Type="String" />
            <asp:Parameter Name="p_imagen" Type="String" />
            <asp:Parameter Name="total" Type="String" />
            <asp:Parameter Name="p_id" Type="String" />
            <asp:Parameter Name="estatus" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>




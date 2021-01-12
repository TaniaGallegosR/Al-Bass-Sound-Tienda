<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="GESTION_DE_ORDENES.aspx.cs" Inherits="ABS.GESTION_DE_ORDENES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="orden_id" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" Height="457px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1024px">
            <Columns>
          <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="Usuario_ID" HeaderText="Usuario_ID" SortExpression="Usuario_ID"></asp:BoundField>
                <asp:BoundField DataField="orden_id" HeaderText="orden_id" ReadOnly="True" SortExpression="orden_id"></asp:BoundField>
                <asp:BoundField DataField="orden_fecha" HeaderText="orden_fecha" SortExpression="orden_fecha"></asp:BoundField>
                <asp:BoundField DataField="orden_famt" HeaderText="orden_famt" SortExpression="orden_famt"></asp:BoundField>
                <asp:BoundField DataField="orden_direccionEnvio" HeaderText="orden_direccionEnvio" SortExpression="orden_direccionEnvio"></asp:BoundField>
                <asp:BoundField DataField="orden_FechaEnvio" HeaderText="orden_FechaEnvio" SortExpression="orden_FechaEnvio"></asp:BoundField>
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ACONEXION %>' DeleteCommand="DELETE FROM [ORDENES] WHERE [orden_id] = @orden_id" InsertCommand="INSERT INTO [ORDENES] ([Usuario_ID], [orden_id], [orden_fecha], [orden_famt], [orden_direccionEnvio], [orden_FechaEnvio]) VALUES (@Usuario_ID, @orden_id, @orden_fecha, @orden_famt, @orden_direccionEnvio, @orden_FechaEnvio)" SelectCommand="SELECT * FROM [ORDENES]" UpdateCommand="UPDATE [ORDENES] SET [Usuario_ID] = @Usuario_ID, [orden_fecha] = @orden_fecha, [orden_famt] = @orden_famt, [orden_direccionEnvio] = @orden_direccionEnvio, [orden_FechaEnvio] = @orden_FechaEnvio WHERE [orden_id] = @orden_id">
            <DeleteParameters>
                <asp:Parameter Name="orden_id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Usuario_ID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="orden_id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="orden_fecha" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_famt" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_direccionEnvio" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_FechaEnvio" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Usuario_ID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="orden_fecha" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_famt" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_direccionEnvio" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_FechaEnvio" Type="String"></asp:Parameter>
                <asp:Parameter Name="orden_id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>

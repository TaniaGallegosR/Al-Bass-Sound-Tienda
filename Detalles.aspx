<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="ABS.Detalles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body style="background-color:Black">
    <form id="form1" runat="server">
    <div>
    <div class=container>
        <asp:GridView CssClass="table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="estatus" HeaderText="Estatus" 
                    SortExpression="estatus"/>
                <asp:BoundField DataField="total" HeaderText="Total" 
                    SortExpression="total"/>
             
                <asp:BoundField DataField="p_nombre" HeaderText="Producto Nombre" 
                    SortExpression="p_nombre"/>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ACONEXION %>" 
            SelectCommand="SELECT [estatus], [total], [p_imagen], [p_nombre] FROM TusOrdenes WHERE ([p_id] = @p_id) AND ([Usuario_ID] = @Usuario_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="p_id" QueryStringField="p_id" Type="String" />
                 <asp:SessionParameter SessionField="uid" Name="Usuario_ID" Type="String"></asp:SessionParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
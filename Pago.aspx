<%@ Page Title="" Language="C#" MasterPageFile="~/AdministradorMAESTRO.Master" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="ABS.Pago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
       
        <table>
        <tr>
         <td>
         <h2>
        
             HAZ TU PAGO</h2></td>
        </tr>
        <tr>
        <td>
        <h4>
            Verifica tus datos de Usuario</h4></td></tr>
        
        
            <tr>
                <td>ID de orden</td>
                <td><asp:TextBox ID="txtid" runat="server"/></td>
            </tr>
            <tr>
                <td>IID de Usuario</td>
                <td><asp:TextBox ID="txtcid" runat="server"/></td>
            </tr>
            <tr>
                <td>-Total</td>
                <td><asp:TextBox ID="txtamount" runat="server" /></td>
            </tr>
             <tr>
                <td style="height: 22px">-Dirección de envio</td>
                <td style="height: 22px"><asp:TextBox ID="txtadd" runat="server" /></td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Shipping address required" Display="Dynamic" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td>Método De Pago:</td>
                <td><asp:RadioButton GroupName="CR_Bank" ID="cc" runat="server" Text="T. de Credito" 
                        oncheckedchanged="cc_CheckedChanged" AutoPostBack="True"  />
                    <asp:RadioButton GroupName="CR_Bank" ID="dc" runat="server" Text="Debito" AutoPostBack="True" 
                        oncheckedchanged="dc_CheckedChanged" />
                    
                </td>
            </tr>

            <tr>
            <td colspan="2" align="center">
                <asp:PlaceHolder ID="creditcard" runat="server" Visible="False">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Table" RepeatDirection="Vertical" Visible="True">
                    <asp:ListItem Text="AmericanExpress" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Master" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Visa" Value="3"></asp:ListItem>
                    </asp:RadioButtonList>
      
                        
                </asp:PlaceHolder>


                <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="False">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Table" RepeatDirection="Vertical">
                    <asp:ListItem Text="Yes Bank" Value="1"></asp:ListItem>
                    <asp:ListItem Text="IDBI Bank " Value="2"></asp:ListItem>
                    <asp:ListItem Text="SBI" Value="3"></asp:ListItem>
                    </asp:RadioButtonList>
                        
                        
                </asp:PlaceHolder>
            </td>
            </tr>

            <tr>
            <td colspan="2" align="center"><asp:Button Text="Aceptar" runat="server" 
                    ID="BtnACEPTAR" onclick="Aceptar_Click"/>
                <br />
                <img alt="credit card " src="Images/credit-cards.jpg" 
                    style="width: 311px; height: 72px" /></td>
            </tr>
            </table>
                    
                </center>
    </div>

</asp:Content>


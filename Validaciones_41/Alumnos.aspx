<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="Validaciones_41.Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbNombre" runat="server" Text="Nombre:" ></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="tbNombre" runat="server" Width="340"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requiredNombre" runat="server" ControlToValidate="tbNombre" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="regularNombre" runat="server" ControlToValidate="tbNombre" ValidationExpression="^[a-zA-Z\s]*$" ErrorMessage="Solo se aceptan letras"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:Label ID="lbDomicilio" runat="server" Text="Domicilio:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbDomicilio" runat="server" Width="340"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireDomicilio" runat="server" ControlToValidate="tbDomicilio" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>                                        
                    <br />
                    <asp:RegularExpressionValidator ID="regularDomicilio" runat="server" ControlToValidate="tbDomicilio" ValidationExpression="^[#1-9a-zA-Z\s]*$" ErrorMessage="No caracteres especiales" ></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lbTelefono" runat="server" Text="Telefono:" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbTelefono" runat="server" Width="340"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireTelefono" runat="server" ControlToValidate="tbTelefono" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>
                </td>
                <td>
                     <asp:Label ID="sexo" runat="server" Text="Sexo:" ></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSExo" runat="server" Width="340">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Femenino</asp:ListItem>
                        <asp:ListItem>Masculino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireSexo" runat="server" ControlToValidate="ddlsExo" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>                                        
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lbEmail" runat="server" Text="Email:" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server" Width="340"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="compareEmail" runat="server" ControlToCompare="tbEmail" ControlToValidate="tbConfirmarEmail" ErrorMessage="ERROR! Los Email no coinciden"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="requireEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lbConfirmaEmail" runat="server" Text="Confirmar Email:" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbConfirmarEmail" runat="server" Width="340"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="requireConfirmarEmail" runat="server" ControlToValidate="tbConfirmarEmail" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>                                        
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lbEdad" runat="server" Text="Edad:" ></asp:Label>
                </td>
                <td>
                     <asp:TextBox ID="tbEdad" runat="server" Width="340"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="rangeEdad" runat="server" ControlToValidate="tbEdad" MinimumValue="18" MaximumValue="35" ErrorMessage="Edad fuera de rango permitido"></asp:RangeValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="reuqireEdad" runat="server" ControlToValidate="tbEdad" ErrorMessage="ERROR! Campo obligatorio"></asp:RequiredFieldValidator>                    
                </td>
                <td></td>
                <td>
                    <asp:Button ID="btGuardar" runat="server" Text="Guardar" />
                </td>
                <td></td>
            </tr>

        </table>
      
        
    </form>
</body>
</html>

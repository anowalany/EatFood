<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Lux.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: 50pt;
        }
        .banner {
            padding:10px;
        }
        .nazwa{
            
           align-content:center;
           font-size:29px;
           font-weight:bold;
           padding:10px;
           padding-right:20px;
           padding-left:350px;
        }
        
         .nazwad{
            
           align-content:center;
           font-size:29px;
           font-weight:bold;
           padding:10px;
           padding-right:20px;
           padding-left:200px;
        }
          .opis{
            
           align-content:center;
           font-size:20px;
           padding-left:60px;
           padding-top:12px;
        }
             .rejstracja{
            
         padding-left:20px;
         font-size:18px;
             
          
        }
        .auto-style2 {
            width: 1000px;
            justify-content:center;
        }
        .auto-style3 {
            padding: 10px;
            margin-left: 0px;
        }
        .link {
            
            text-align:center;
            vertical-align:central;
        }
        .warning{
            padding-left:50px;
            font-size:20px;
            color:red;
        }
        .tlo{
            background-color:#DDDDDD;
        }
        .auto-style4 {
            background-color: #DDDDDD;
            height: 45px;
        }
        .auto-style5 {
            width: 1000px;
            justify-content: center;
            height: 45px;
        }
        .auto-style6 {
            background-color: #DDDDDD;
            height: 102px;
        }
        .auto-style7 {
            text-align: center;
            height: 102px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table  class="w-100">
            <tr>
                <td colspan="3" class="tlo">
                   
                </td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td>
    
        <asp:Image ID="Image1" runat="server" Height="200px" Width="1200px" ImageUrl="~/Images/banner2.jpg" CssClass="auto-style3"/>
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7" >
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Rejestracja"></asp:Label>
       
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="text-center" >
                    &nbsp;</td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5" >
                    <asp:Label ID="Label2" runat="server" Text="Login: " CssClass="nazwa"></asp:Label>
                   <asp:TextBox ID="TextBoxLogin" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="Wprowadź login" CssClass="warning"></asp:RequiredFieldValidator>                  
                    </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="auto-style2" >
                    <asp:Label ID="Label3" runat="server" Text="Email: " CssClass="nazwa"></asp:Label>
                     <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Wprowadź email" CssClass="warning"></asp:RequiredFieldValidator>
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Wprowadź poprawny email" CssClass="warning" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="auto-style2" >
                <asp:Label ID="Label4" runat="server" Text="Hasło: " CssClass="nazwa"></asp:Label>
                 <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Wprowadź hasło" CssClass="warning"></asp:RequiredFieldValidator>
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="auto-style2" >
                    <asp:Label ID="Label5" runat="server" Text="Potwierdź hasło: " CssClass="nazwad"></asp:Label>
                 <asp:TextBox ID="TextBoxCPassword" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCPassword" ErrorMessage="Wprowadź ponownie  hasło" CssClass="warning"></asp:RequiredFieldValidator>
                   
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxCPassword" ErrorMessage="Hasła muszą się zgadzać" CssClass="warning"></asp:CompareValidator>
               </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="auto-style2" >
                     <asp:Label ID="Label6" runat="server" Text="Adres: " CssClass="nazwa"></asp:Label>
                   <asp:TextBox ID="TextBoxAdres" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="Wprowadź adres" CssClass="warning"></asp:RequiredFieldValidator>                  
                    </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="link">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Zarejestruj" />
                    

                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="auto-style2" >
                    &nbsp;</td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="tlo">
                   
                    &nbsp;</td>
                <td class="tlo">&nbsp;</td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>

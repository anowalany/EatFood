<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Lux.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            padding:15px;
        }
        .auto-style3 {
            font-weight: bold;
        }
        .auto-style4 {
            text-align: right;
            height: 33px;
        }
        .auto-style5 {
            height: 33px;
        }
        .auto-style7 {
            height: 35px;
        }
        .auto-style8 {
            width: 203px;
        }
        .auto-style9 {
            height: 33px;
            width: 203px;
        }
        .auto-style10 {
            height: 35px;
            width: 203px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="3" class="auto-style2"><strong class="auto-style3">LOGOWANIE</strong></td>
            </tr>
            <tr>
                <td class="text-right">Login:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxLog" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLog" ErrorMessage="Pole obowiązkowe!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Hasło:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Pole obowiązkowe!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style10">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click1" Text="Zaloguj" />
                </td>
                <td class="auto-style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EatFood/Registration.aspx">Zarejestruj sie...</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

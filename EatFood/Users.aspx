<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="EatFood_Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label_witaj" runat="server" style="font-size: xx-large" Text="Witaj..."></asp:Label>
        <br />
        <asp:Button ID="B_Logout" runat="server" OnClick="B_Logout_Click" Text="Wyloguj" />
    
    </div>
    </form>
</body>
</html>

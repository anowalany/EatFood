<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delivery.aspx.cs" Inherits="EatFood_Delivery" %>

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
          
           
        }
         .image{
            
          float:right;
           

        }
          .cena2{
            
           text-align:center;
           font-size:30px;
           color:red;
           background-color:lightgray;

        }
          .opis{
            
           align-content:center;
           font-size:20px;
           padding-left:60px;
           padding-top:12px;
        }
             .menu_btn{
            
           align-content:center;
           font-size:20px;
           float:initial;
           background-color:lightcoral;           
          
        }
        .auto-style3 {
            padding: 10px;
            margin-left: 0px;
        }
        .logo {
            width:120px;
            height:100px;
            padding-bottom:0px;
        }
        .login{
            float:right;
            padding-right:10px;
            border:none;
        }
        .tlo{
            background-color:#DDDDDD;
        }
        .link {
            
            text-align:center;
            vertical-align:central;            
            width: 1000px;
            padding-left:120px;
        }

        .back-btn {
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table  class="w-100">
            <tr>
                <td colspan="3" class="tlo">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EatFood/Login.aspx" CssClass="login">Zaloguj się</asp:HyperLink>
                    
                    <asp:Button ID="LogOut1" runat="server" Text="Wyloguj się"  CssClass="login" OnClick="LogOut1_Click1"  />
                   
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
                <td class="tlo">&nbsp;</td>
                <td class="text-center" >
                    <asp:ImageButton ID="ImageButton2" runat="server" CssClass="back-btn" ImageUrl="~/Images/back.png" OnClick="ImageButton2_Click" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Gotowe!"></asp:Label>
       
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="link">
                  
                   
                  
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/van.png" />
                    </br>
                    <asp:Label ID="Label2" runat="server" Text="Twoje zamówienie wkrótce zostanie dostarczone" CssClass="nazwa"></asp:Label>
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td>
                   
                    </td>
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

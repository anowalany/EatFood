﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Koszyk.aspx.cs" Inherits="EatFood_Koszyk" %>

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
         .kuchnia{
            
           align-content:center;
           font-size:14px;
           font-style:italic;
           padding-left:160px;
           padding-bottom:10px;

        }
          .opis{
            
           align-content:center;
           font-size:20px;
           padding-left:160px;
           padding-top:12px;
        }
             .menu_btn{
            
           align-content:center;
           font-size:20px;
           float:left ;
           background-color:greenyellow;
           padding-top:20px;
           padding-right:20px;
          
        }
        .auto-style2 {
            width: 1000px;
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

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table  class="w-100">
            <tr>
                <td colspan="3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EatFood/Login.aspx" CssClass="login">Zaloguj się</asp:HyperLink>
                    
                    <asp:Button ID="LogOut1" runat="server" Text="Wyloguj się"  CssClass="login" OnClick="LogOut1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
    
        <asp:Image ID="Image1" runat="server" Height="200px" Width="1200px" ImageUrl="~/Images/banner2.jpg" CssClass="auto-style3"/>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="text-center" >
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Zamówienia"></asp:Label>
       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Restauracje
]"></asp:SqlDataSource>
       
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2" >
                  
                   
                  
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                   
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>

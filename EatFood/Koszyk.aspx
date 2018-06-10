<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Koszyk.aspx.cs" Inherits="EatFood_Koszyk" %>

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
         .cena{
            
           align-content:center;
           font-size:25px;
           color:red;

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
            border:none;
        }
        .tlo{
            background-color:#DDDDDD;
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
                    
                    <asp:Button ID="LogOut1" runat="server" Text="Wyloguj się"  CssClass="login" OnClick="LogOut1_Click" />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/cart.png" CssClass="login" OnClick="ImageButton1_Click"/>
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
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Zamówienia"></asp:Label>
       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Zamowienia] AS e INNER JOIN [Dania] AS c ON e.Id_dania = c.Id WHERE ([Id_klienta] = @Id_klienta)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Id_klienta" SessionField="idK" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
       
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td class="auto-style2" >
                  
                   
                  
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="Id" DataSourceID="SqlDataSource1" ForeColor="#333333">
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="nazwaLabel" runat="server" Text='<%# Eval("nazwa") %>' CssClass="nazwa" />
                            <asp:Label ID="cenaLabel" runat="server" Text='<%# Eval("cena") %>' CssClass="cena"/>
                            <asp:Label ID="Label2" runat="server" Text=" zł" CssClass="cena"/>
                            <br />
                            <asp:Label ID="opisLabel" runat="server" Text='<%# Eval("opis") %>' CssClass="opis"/>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                  
                   
                  
                    
                  
                   
                  
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo">&nbsp;</td>
                <td>
                   
                    <asp:Label ID="Razem" runat="server" Text="RAZEM: 0,00 zł" CssClass="cena2"></asp:Label>
                    <asp:Button ID="OK" runat="server" Text="Zamów" CssClass="menu_btn" OnClick="OK_Click"/>
                    <asp:Button ID="Wstecz" runat="server" Text="Wróć" CssClass="menu_btn" OnClick="Wstecz_Click"/>
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

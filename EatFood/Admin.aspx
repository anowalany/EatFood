<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
          .opis{
            
           align-content:center;
           font-size:20px;
           padding-left:60px;
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
         .auto-style2 {
            width: 1000px;
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
                    <asp:Button ID="LogOut1" runat="server" Text="Wyloguj się"  CssClass="login" OnClick="LogOut1_Click" />
                    

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
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="LISTA ZAMÓWIEŃ"></asp:Label>
       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT e.Id,e.Id_dania,c.Id,c.Email,c.Adres,d.Nazwa FROM [Zamowienia] AS e INNER JOIN [UserData] AS c ON e.Id_klienta = c.Id INNER JOIN [Dania] AS d ON e.Id_dania = d.Id ">
                        
                    </asp:SqlDataSource>
       
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo"></td>
                <td class="auto-style2" >
                  
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id_daniaLabel" runat="server" Text='<%# Eval("Id_dania") %>' />
                                </td>
                                 <td>
                                    <asp:Label ID="NazwaLabel" runat="server" Text='<%# Eval("Nazwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id1Label" runat="server" Text='<%# Eval("Id1") %>' />
                                </td>
                                 <td>
                                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                               
                               
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Id_daniaTextBox" runat="server" Text='<%# Bind("Id_dania") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="NazwaTextBox" runat="server" Text='<%# Bind("Nazwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id1Label1" runat="server" Text='<%# Eval("Id1") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AdresTextBox" runat="server" Text='<%# Bind("Adres") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                
                                
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="Id_daniaTextBox" runat="server" Text='<%# Bind("Id_dania") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="NazwaTextBox" runat="server" Text='<%# Bind("Nazwa") %>' />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AdresTextBox" runat="server" Text='<%# Bind("Adres") %>' />
                                </td>
                                
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id_daniaLabel" runat="server" Text='<%# Eval("Id_dania") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NazwaLabel" runat="server" Text='<%# Eval("Nazwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id1Label" runat="server" Text='<%# Eval("Id1") %>' />
                                </td>
                                 <td>
                                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                               
                                
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server">Nr zamówienia</th>
                                                <th runat="server">Danie</th>
                                                <th runat="server">Nazwa</th>
                                                <th runat="server">Nr klienta</th>
                                                <th runat="server">Adres</th>
                                                <th runat="server">Email</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id_daniaLabel" runat="server" Text='<%# Eval("Id_dania") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NazwaLabel" runat="server" Text='<%# Eval("Nazwa") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Id1Label" runat="server" Text='<%# Eval("Id1") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AdresLabel" runat="server" Text='<%# Eval("Adres") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                
                                
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                  
                </td>
                <td class="tlo"></td>
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

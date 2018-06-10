<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="EatFood_Menu" %>

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
    <div class="text-justify">
    
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
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/back.png" CssClass="back-btn" OnClick="ImageButton2_Click" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="MENU"></asp:Label>
       
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [nazwa], [cena], [opis], [Id] FROM [Dania] WHERE ([id_restauracji] = @id_restauracji)" DeleteCommand="DELETE FROM [Dania] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Dania] ([nazwa], [cena], [opis]) VALUES (@nazwa, @cena, @opis)" UpdateCommand="UPDATE [Dania] SET [nazwa] = @nazwa, [cena] = @cena, [opis] = @opis WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="nazwa" Type="String" />
                            <asp:Parameter Name="cena" Type="Decimal" />
                            <asp:Parameter Name="opis" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="id_restauracji" SessionField="Restauracja" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nazwa" Type="String" />
                            <asp:Parameter Name="cena" Type="Decimal" />
                            <asp:Parameter Name="opis" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
       
                </td>
                <td class="tlo">&nbsp;</td>
            </tr>
            <tr>
                <td class="tlo"></td>
                <td class="auto-style2" >
                  
                  
        <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList2_OnItemCommand">
            <ItemTemplate>
                &nbsp;<asp:Label ID="nazwaLabel" runat="server" Text='<%# Eval("nazwa") %> ' CssClass="nazwa" />                
                <asp:Label ID="cenaLabel" runat="server" Text='<%# Eval("cena") %>' CssClass="cena"/>
                <asp:Label ID="Label2" runat="server" Text=" zł" CssClass="cena"/>
                 <asp:Button ID="Button1" runat="server" Text="DODAJ" CssClass="btn-success" CommandName="ButtonClickAdd"/>
                <asp:HiddenField ID="HiddenDishID"  runat="server" Value='<%# Eval("Id") %>' />
                <br />
                <asp:Label ID="opisLabel" runat="server" Text='<%# Eval("opis") %>' CssClass="opis" />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
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

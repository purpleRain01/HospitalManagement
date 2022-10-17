<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="HospitalManagement.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            margin-top: 1px;
        }
        .auto-style5 {
            height: 13px;
        }
        .auto-style6 {
            height: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td style="padding: 30px 0px 30px 0px; font-size: 30px; background-color: #E41400; color: #FFFFFF; font-weight: bold; text-align: center;">ADMIN PANEL&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="WELCOME TO ADMIN PANEL"></asp:Label>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Login.aspx">goto login</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td >&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" >
                        <asp:Label ID="Label2" runat="server" Text="Note: Click approve for each account to activate "></asp:Label>
                        <br />
                        <br />
                        Staff Register<br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="206px" Width="560px" CssClass="auto-style4">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField HeaderText="Approve">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("id") %>' OnCommand="LinkButton3_Command" Text="Approve"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="id" HeaderText="ID" />
                                <asp:BoundField DataField="name" HeaderText="Staff Name" />
                                <asp:BoundField DataField="AdminApproved" HeaderText="Approval Status" />
                                <asp:ImageField DataImageUrlField="photo" HeaderText="ID card image">
                                    <ControlStyle Height="60px" Width="60px" />
                                </asp:ImageField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td style="\;: ; text-decoration: underline;" class="auto-style5">Patient Register</td>
                </tr>
                <tr>
                    <td style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td style="\" class="auto-style6">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="310px" Width="988px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="number"></asp:BoundField>
                                <asp:BoundField DataField="name" HeaderText="patient name"></asp:BoundField>
                                <asp:ButtonField DataTextField="contact" HeaderText="contact number" Text="Button" />
                                <asp:BoundField DataField="place" HeaderText="place"></asp:BoundField>
                                <asp:BoundField DataField="age" HeaderText="age"></asp:BoundField>
                                <asp:BoundField DataField="cnsltDr" HeaderText="consulted Dr"></asp:BoundField>
                                <asp:BoundField DataField="cnsltDep" HeaderText="consluted department"></asp:BoundField>
                                <asp:BoundField DataField="cnsltDate" HeaderText="date of visit"></asp:BoundField>
                                <asp:BoundField DataField="staff_id" HeaderText="staff id"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td style="\">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

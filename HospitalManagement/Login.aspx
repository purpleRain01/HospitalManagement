<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
            text-align: center;
            width: 263px;
        }
        .auto-style4 {
            width: 522px;
            text-align: right;
        }
        .auto-style5 {
            height: 23px;
            width: 522px;
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
            width: 263px;
        }
        .auto-style7 {
            width: 522px;
            text-align: right;
            height: 26px;
        }
        .auto-style8 {
            text-align: center;
            height: 26px;
            width: 263px;
        }
                                            .textbx{
                                                text-align:center;
                                                font-size:22px;
                                            }
                                        .auto-style9 {
            width: 222px;
        }
        .auto-style10 {
            height: 23px;
            text-align: center;
            width: 222px;
        }
        .auto-style11 {
            text-align: center;
            height: 26px;
            width: 222px;
        }
        .auto-style12 {
            text-align: center;
            width: 222px;
        }
        .auto-style13 {
            width: 263px;
        }
                                        .save-btn{
            
                                            border-radius:2px;
                                            border:none;
                                            background-color:#4587d6;
                                            text-align:center;
                                            color:white;
                                        }
                                            .auto-style14 {
            text-align: left;
            width: 263px;
        }
        .auto-style15 {
            width: 522px;
            text-align: right;
            height: 103px;
        }
        .auto-style16 {
            text-align: center;
            width: 263px;
            height: 103px;
        }
        .auto-style17 {
            text-align: center;
            width: 222px;
            height: 103px;
        }
        .auto-style18 {
            height: 23px;
            text-align: left;
            width: 263px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="padding: 30px 0px 30px 0px; font-size: 30px; background-color: #007ACC; color: #FFFFFF; font-weight: bold; text-align: center;">LOGIN</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Account ID" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox1" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*RequiredField" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label2" runat="server" Text="PassWord" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <br />
                        <asp:TextBox ID="TextBox2" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*RequiredField" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="15px" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Show Password" />
                    </td>
                    <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Medium" ForeColor="#428842" PostBackUrl="~/StaffReg.aspx">NewStaff</asp:LinkButton>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Button ID="btn_confirm" runat="server" class="save-btn" Font-Bold="True" Font-Size="Medium" Height="36px" Text="Login" Width="150px" CssClass="save-btn" OnClick="btn_confirm_Click" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Font-Italic="False" Font-Size="Large" ForeColor="#E41400"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Panel ID="Panel1" runat="server" Height="99px" Visible="False" Width="222px">
                            <asp:TextBox ID="TextBox3" runat="server" Width="177px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="security key"></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" Height="24px" OnClick="Button1_Click" Text="Load" Width="75px" />
                        </asp:Panel>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

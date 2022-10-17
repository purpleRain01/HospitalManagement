<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffReg.aspx.cs" Inherits="HospitalManagement.StaffReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
            text-align: left;
        }
        .auto-style3 {
            text-align: right;
            width: 497px;
        }
        .auto-style4 {
            height: 20px;
            text-align: right;
            width: 497px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
        }
                                            .textbx{
                                                text-align:center;
                                                font-size:22px;
                                            }
                                        .auto-style7 {
            text-align: center;
            width: 307px;
        }
        .auto-style8 {
            height: 20px;
            text-align: center;
            width: 307px;
        }
                                        .save-btn{
            
                                            border-radius:2px;
                                            border:none;
                                            background-color:#4587d6;
                                            text-align:center;
                                            color:white;
                                        }
                                            .auto-style9 {
            text-align: right;
            width: 497px;
            height: 23px;
        }
        .auto-style10 {
            text-align: center;
            width: 307px;
            height: 23px;
        }
        .auto-style11 {
            text-align: center;
            height: 23px;
        }
        .auto-style12 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" style="padding: 30px 0px 30px 0px; font-size: 30px; background-color: #007ACC; color: #FFFFFF; font-weight: bold; text-align: center;">STAFF SIGN UP</td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="3" style="\"></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="\">
                        <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style7" style="\">
                        <asp:TextBox ID="TextBox1" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*RequiredField" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12" style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="\">&nbsp;</td>
                    <td class="auto-style7" style="\">&nbsp;</td>
                    <td class="auto-style12" style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="\">
                        <asp:Label ID="Label2" runat="server" Text="Id card image" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style7" style="\">
                        <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style12" style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="\">&nbsp;</td>
                    <td class="auto-style7" style="\">&nbsp;</td>
                    <td class="auto-style12" style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="\">
                        <asp:Label ID="Label3" runat="server" Text="Password" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style7" style="\">
                        <asp:TextBox ID="TextBox3" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="*Password Mismatch" ForeColor="#CC0000"></asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Password required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style12" style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="\">&nbsp;</td>
                    <td class="auto-style7" style="\">&nbsp;</td>
                    <td class="auto-style12" style="\">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox4" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True" TextMode="Password"></asp:TextBox>
                        </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Size="Medium" ForeColor="#428842" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btn_confirm" runat="server" class="save-btn" Font-Bold="True" Font-Size="Medium" Height="36px" Text="Confirm" Width="150px" CssClass="save-btn" OnClick="btn_confirm_Click" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label5" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

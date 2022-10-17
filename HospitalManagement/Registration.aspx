<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HospitalManagement.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
                                        .save-btn{
            
                                            border-radius:2px;
                                            border:none;
                                            background-color:#4587d6;
                                            text-align:center;
                                            color:white;
                                        }
                                            .save-btn:hover {
                                                border-radius: 5px;
                                                border: none;
                                                background-color: #4587d6;
                                                text-align: center;
                                                color:darkblue;
                                            }
                                            .textbx{
                                                text-align:center;
                                                font-size:22px;
                                            }
                                        .textbx:hover{
                                            border:solid;
                                            border-color:black
                                        }
                                        .textbx:focus{
                                            background-color:darkgrey;
                                            text-align:end;
                                            font-style:normal;

                                        }
        .header{
            
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 480px;
            text-align: center;
        }
        .auto-style5 {
            height: 27px;
            width: 480px;
            text-align: right;
        }
        .auto-style6 {
            width: 228px;
        }
        .auto-style7 {
            height: 27px;
            width: 228px;
        }
        .auto-style8 {
            width: 707px;
        }
        .auto-style9 {
            height: 27px;
            width: 707px;
        }
        .auto-style10 {
            width: 496px;
        }
        .auto-style12 {
            width: 480px;
            text-align: right;
        }
        .auto-style13 {
            width: 228px;
            height: 23px;
        }
        .auto-style14 {
            width: 480px;
            text-align: right;
            height: 23px;
        }
        .auto-style15 {
            width: 707px;
            height: 23px;
        }
        .auto-style16 {
            width: 496px;
            height: 23px;
        }
        .auto-style17 {
            width: 228px;
            height: 40px;
        }
        .auto-style18 {
            width: 480px;
            text-align: right;
            height: 40px;
        }
        .auto-style19 {
            width: 707px;
            height: 40px;
        }
        .auto-style20 {
            width: 496px;
            height: 41px;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            width: 228px;
            height: 26px;
        }
        .auto-style23 {
            width: 480px;
            text-align: right;
            height: 26px;
        }
        .auto-style24 {
            width: 707px;
            height: 26px;
        }
        .auto-style25 {
            width: 496px;
            height: 26px;
        }
        .auto-style26 {
            height: 27px;
        }
        .auto-style27 {
            width: 416px;
        }
        .auto-style28 {
            width: 416px;
            height: 40px;
        }
        .auto-style29 {
            width: 496px;
            height: 40px;
            text-align: right;
        }
        .auto-style30 {
            width: 496px;
            text-align: right;
        }
        .auto-style31 {
            width: 228px;
            height: 41px;
        }
        .auto-style32 {
            width: 480px;
            text-align: right;
            height: 41px;
        }
        .auto-style33 {
            width: 707px;
            height: 41px;
        }
        .auto-style34 {
            width: 228px;
            height: 24px;
        }
        .auto-style35 {
            width: 480px;
            text-align: right;
            height: 24px;
        }
        .auto-style36 {
            width: 707px;
            height: 24px;
        }
        .auto-style37 {
            width: 496px;
            height: 24px;
        }
        .auto-style38 {
            width: 416px;
            height: 24px;
        }
    </style>
    <H1 class="header" style="padding: 30px 0px 30px 0px; text-align: center; background-color: #34365B; color: #FFFFFF;">OUT PATIENT REGIASTRATION</H1>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style21" colspan="5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10" colspan="2">
                        <asp:Label ID="Label5" runat="server" Text="Date:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style32">
                        <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="TextBox1" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Patient name required" ForeColor="#CA5100"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20" colspan="2">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10" colspan="2">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" ForeColor="#CC0000" OnClick="LinkButton1_Click">Log out</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Contact" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter a valid number" Font-Bold="False" ForeColor="#CA5100" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style26" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text="Place" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox3" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Place is rquired" ForeColor="#CA5100"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style30">
                        <asp:Label ID="Label7" runat="server" Text="Department" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style27">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="285px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34"></td>
                    <td class="auto-style35"></td>
                    <td class="auto-style36"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style38"></td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18">
                        <asp:Label ID="Label3" runat="server" Text="Age" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TextBox4" class="textbx" runat="server" Height="30px" Width="200px" Font-Bold="True"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="#CA5100"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style29">
                        <asp:Label ID="Label8" runat="server" Text="Doctor" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:ListBox ID="ListBox1" runat="server" Width="188px" AutoPostBack="True"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style21" colspan="3">
                        <asp:Button ID="btn_confirm" runat="server" class="save-btn" Font-Bold="True" Font-Size="Medium" Height="36px" Text="Confirm" Width="150px" CssClass="save-btn" OnClick="btn_confirm_Click" />
                        <asp:Label ID="Label9" runat="server" ForeColor="#009900"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25" colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10" colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

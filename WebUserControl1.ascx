<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="_1_2.WebUserControl1" %>

<div style="float: left;width: 30%;height: 300px; background: #ccc;padding-top:-20px;display:block">
   <div style="width:100%;background-color:aqua" ><p style="text-align:center;font-weight:bold">your opinion matters</p></div>
    <asp:RadioButton ID="RadioButton1" runat="server"  GroupName ="productDB" AutoPostBack ="true"     /><asp:Label ID="Label1" runat="server" Text="Exellent" style="display:inline-block"></asp:Label><br />
    <asp:RadioButton ID="RadioButton2" runat="server"   GroupName ="productDB" AutoPostBack ="true"  /><asp:Label ID="Label2" runat="server" Text="Very Good"></asp:Label><br />
    <asp:RadioButton ID="RadioButton3" runat="server"   GroupName ="productDB" AutoPostBack ="true"  /><asp:Label ID="Label3" runat="server" Text="Good"></asp:Label><br />
    <asp:RadioButton ID="RadioButton4" runat="server"  GroupName ="productDB" AutoPostBack ="true"    /><asp:Label ID="Label4" runat="server" Text="Poor"></asp:Label><br />

    <asp:Button style="margin-left:40%;" ID="Button1" runat="server" Text="vote" OnClick="Button1_Click" />

    <br />
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label7" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>

</div>
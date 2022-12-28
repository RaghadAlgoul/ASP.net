<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="_28_Dec.task1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
    function check() {
            var email = document.getElementById("TextBox1").value;
            if (email == "") {
                alert("please fill the email");
            }

    }</script>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" OnClientClick="if(!check())return false;" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>

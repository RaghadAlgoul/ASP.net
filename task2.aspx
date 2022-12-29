<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="_29_Des.task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        
        
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
         <asp:ListItem Value="Red">Red</asp:ListItem>
             <asp:ListItem Value="BLACK">BLACK</asp:ListItem>
             <asp:ListItem Value="YELLOW">YELLOW</asp:ListItem>
        <asp:ListItem Value="BLUE">BLUE</asp:ListItem>
    </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />

        </p>

    </form>
</body>
</html>

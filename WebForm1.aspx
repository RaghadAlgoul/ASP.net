<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_28_Dec.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="Scripts/sweetalert.min.js"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">

             <ContentTemplate>
                 <form>
  <div class="form-group">
    <label for="formGroupExampleInput">Name :</label>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Example input"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Another label</label>
      <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Example input"></asp:TextBox>
    
  </div>
</form>
                 
                 
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             </ContentTemplate>

         </asp:UpdatePanel>
</asp:Content>

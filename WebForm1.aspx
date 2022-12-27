<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_27_Des.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script runat='server'>
//void Group1Click(Object s, EventArgs e)
//{
//    this.Validate();
//    if (Page.IsValid)
//    {

//    }
//}

////void Group2Click(Object s, EventArgs e)
////{
////	if (Page.IsValid)
////	{

////	}
////}
		</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <div style="display:grid;grid-template-columns:auto auto;justify-content:space-around">
        <div><fieldset>
            <form style="width:100%;background-color:#e3f2fd ;padding:50px 50px;" >
            

        <h2 style="text-align:center;">Sign in</h2>
  <div class="mb-3">
      <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><asp:TextBox ID="TextBox5" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox5"   
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Static" ForeColor="Red" ValidationGroup="v1"></asp:RegularExpressionValidator>  
  </div>
       <br />
  <div class="mb-3">
    <asp:Label ID="Label1" runat="server" Text="Password"  class="form-label"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
ErrorMessage="Password required" ControlToValidate="TextBox1" Display="Static" ForeColor="Red" ValidationGroup="v1"></asp:RequiredFieldValidator> 
      <br />
  </div>
       
        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Sign in" OnClick="Group1Click" ValidationGroup="v1" />

        </form>
 </fieldset>
</div>
        <div>
    <form style="width:100%;background-color:#e3f2fd;padding:50px 50px;">
         <h2 style="text-align:center;">Log in</h2>
  <div class="mb-3">
      <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><asp:TextBox ID="TextBox2" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2"   
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red" ValidationGroup="v2"></asp:RegularExpressionValidator>  
  </div>
       <br />
  <div class="mb-3">
    <asp:Label ID="Label3" runat="server" Text="Password"  class="form-label"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
ErrorMessage="Password required" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red" ValidationGroup="v2"></asp:RequiredFieldValidator> 
      <br />
  </div>
 
  <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Log in" ValidationGroup="v2" OnClick="Button2_Click" />
</form></div>
        </div>
</asp:Content>


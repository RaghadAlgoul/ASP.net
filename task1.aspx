<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="_29_Des.task1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
    <style>
        body{background-color:#BCCEF8;color:#BCCEF8}
        #ddiv{background-color:#98A8F8;border:solid 5px black}
        label{color:black;font-size:20px}
    </style>
    <script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity = "sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin = "anonymous">
    </script>
    <title></title>
</head>
<body>
    <br /><br /> <br /><br />
    <form id="form1" runat="server">
        <div class="container">
  <div class="row">
    <div class="col">
    </div>
    <div class="col" id="ddiv">
     
            <form style="padding-top:170px;">
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text="Log in" style="font-size:35px;color:black;margin-left:44%;font-weight:bold"></asp:Label><br />
                <div class="form-group">
                    <label for="formGroupExampleInput">Email :</label><br />
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder=" input your Email" Width="676px"></asp:TextBox><br />

                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Password :</label><br />
                    <asp:TextBox ID="TextBox2" type="password" runat="server" class="form-control" placeholder=" input your password" Width="670px"></asp:TextBox><br /><br />

                </div>
                 <div>
            <input id="Checkbox1" type="checkbox" runat="server" /><asp:Label ID="Label3" runat="server" Text="Remmember me" style="color:black"></asp:Label><br /><br />
                     <asp:Label ID="Label1" runat="server" Text="" style="margin-left:35%;"></asp:Label><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post comment" style="margin-left:1%;width:200px;border-radius:15px;border:solid 3px black;background-color:#BCCEF8" /><br /><br />

        </div>
                
            </form>
       
    </div>
    <div class="col">
      
    </div>
  </div>
</div>
    </form>
</body>
</html>

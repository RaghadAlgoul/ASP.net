using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29_Des
{
    public partial class task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                HttpCookie cookies =Request.Cookies["account"];
                if (cookies != null)
                {
                    TextBox1.Text = cookies["username"];
                    TextBox2.Text = cookies["pass"];
                }



            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            HttpCookie account = Request.Cookies["account"];
            if (account != null) 
            {
                account.Values["username"] = TextBox1.Text.Trim();
                account.Values["pass"] = TextBox2.Text.Trim();

            }
            else
            {
                if (Checkbox1.Checked)
                {
                    account = new HttpCookie("account");
                    account["username"] = TextBox1.Text;
                    account["pass"] = TextBox2.Text;
                    

                }
                
            }
            account.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(account);
            Label1.Text = "Your account saved";

        }
    }
}

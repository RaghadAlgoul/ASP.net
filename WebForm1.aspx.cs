using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _27_Des
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Group1Click(object sender, EventArgs e)
        {
            this.Validate();
            if (Page.IsValid)
            {

                Response.Write("<script>alert('Registered');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.Validate();
            if (!Page.IsValid)
            {
                Response.Write("<script>alert('Logged In');</script>");
            }
        }
    }
}
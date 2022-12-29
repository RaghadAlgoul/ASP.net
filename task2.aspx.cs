using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29_Des
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
        }
        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            HttpCookie color = new HttpCookie("color");
            color.Values.Add("colNum", DropDownList1.SelectedValue);
            color.Expires = DateTime.Now;
            Response.Cookies.Add(color);
            if (Request.Cookies["color"] != null)
            {
                if (Request.Cookies["color"]["colNum"] == "Red")
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else if (Request.Cookies["color"]["colNum"] == "BLACK")
                {
                    Label1.ForeColor = System.Drawing.Color.Black;
                }
                else if (Request.Cookies["color"]["colNum"] == "YELLOW")
                {
                    Label1.ForeColor = System.Drawing.Color.Yellow;
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Blue;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}
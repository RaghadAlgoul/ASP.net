using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _28_Dec
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=tasks;Integrated Security=True;");
            SqlCommand comm = new SqlCommand("insert into comment values (@Name,@comment)", connection);
            comm.Parameters.AddWithValue("@Name", TextBox1.Text);
            comm.Parameters.AddWithValue("@comment", TextBox2.Text);
            connection.Open();
            comm.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert", "alert('Member Registered Sucessfully');", true);
            
            connection.Close();
            Label1.Text = TextBox1.Text + TextBox2.Text;
        }
    }
}
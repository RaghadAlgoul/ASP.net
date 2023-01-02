using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_2
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookies = Request.Cookies["opinion"];
                if (cookies != null)
                {

                    SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=tasks;Integrated Security=True;");
                    SqlCommand command1 = new SqlCommand("select sum(exe)from vote;", connection);
                    try
                    {
                        connection.Open();

                        Label5.Text = "dd";
                        connection.Close();

                    }
                    catch (Exception ex)
                    {
                        //MessageBox.Show("Can not open connection ! ");
                    }
                }



            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            HttpCookie newCooki = Request.Cookies["opinion"];
            if (newCooki != null)
            {
                newCooki.Values["opinion"] = "vote";
                Label1.Text = newCooki["opinion"];


            }
            else
            {
                newCooki = new HttpCookie("opinion");
                newCooki.Values["opinion"] = "votet";
                //Label1.Text = newCooki["opinion"];
                using (
               SqlConnection connection = new SqlConnection("Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=tasks;Integrated Security=True;")
               )
                {
                    SqlCommand comm = new SqlCommand($"insert into vote values (@r1,@r2,@r3,@r4)", connection);
                    if (RadioButton1.Checked) { comm.Parameters.AddWithValue("@r1", 1); } else { comm.Parameters.AddWithValue("@r1", 0); }
                    if (RadioButton2.Checked) { comm.Parameters.AddWithValue("@r2", 1); } else { comm.Parameters.AddWithValue("@r2", 0); }
                    if (RadioButton3.Checked) { comm.Parameters.AddWithValue("@r3", 1); } else { comm.Parameters.AddWithValue("@r3", 0); }
                    if (RadioButton4.Checked) { comm.Parameters.AddWithValue("@r4", 1); } else { comm.Parameters.AddWithValue("@r4", 0); }


                    comm.Connection.Open();
                    comm.ExecuteNonQuery();
                }



            }
            newCooki.Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies.Add(newCooki);
           

        }


    }
}
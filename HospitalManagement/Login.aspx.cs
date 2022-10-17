using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace HospitalManagement
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass cs = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["id"]) == 5)
            {
                Label4.Visible = true;
                Label4.Text = "Log out successfull";
            }
        }

   

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            string login = "SELECT id FROM staffs WHERE name='" + TextBox1.Text + "' and pswd='" + TextBox2.Text + "'";
            SqlDataReader dr =cs.Execute_Reader(login);
            if(dr.Read())
            {
                int id = Convert.ToInt32(dr["id"]);
                string state = "SELECT AdminApproved FROM staffs WHERE id=" + id + "";
                if (id == 100)
                {
                    Panel1.Visible = true;  
                }
                else
                {
                    string s = cs.Execute_Scalar(state);
                    if (s.ToLower() == "true")
                    {
                        Session["id"] = id.ToString();
                        Response.Redirect("Registration.aspx");
                    }
                    else
                    {
                        Label3.Text = "admin aproval required";
                    }
                }
            }
            else
            {
                Label3.Text = "Incorrect credentials";
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
               

            if (CheckBox1.Checked)
            {
               
                TextBox2.TextMode = TextBoxMode.SingleLine;
            }
            else if(!CheckBox1.Checked)
            {
                TextBox2.TextMode = TextBoxMode.Password;
            }
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sekey = TextBox3.Text;
            if (sekey.ToLower() == "hospital@admin")
            {
                Response.Redirect("AdminPanel.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}
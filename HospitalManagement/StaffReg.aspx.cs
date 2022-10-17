using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagement
{
    public partial class StaffReg : System.Web.UI.Page
    {
        ConnectionClass cs = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            try
            {
                string photo = "~/IDCARD/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(photo));

                string insert = " INSERT INTO staffs VALUES ('" + TextBox1.Text + "','" + TextBox4.Text + "','" + photo + "','" + false + "') ";
                int status = cs.Execute_NonQuery(insert);
                if (status != 0)
                {
                    Label5.Text = "NOTE:Staff added successfully waiting for admin aproval";

                }
                else
                {
                    Label5.Text = "something wrong";
                }
            }
            catch (Exception)
            {
                Label6.Visible = true;
                Label6.Text = "upload your id proof before submitting";
            }
        }
    }
}
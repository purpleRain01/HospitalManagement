using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HospitalManagement
{
    public partial class Registration : System.Web.UI.Page
    {
        ConnectionClass cs = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            departmentList();
            Label10.Text = "hello staff "+Session["id"].ToString();
        }
        public void departmentList()
        {
            Label6.Text = DateTime.Now.ToString("M/d/yyyy");
            string sel = "SELECT dptid,dptname FROM dptmnts";
            DataSet ds = new DataSet();
            ds = cs.Execute_Adapter(sel);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "dptname";
            DropDownList1.DataValueField = "dptid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
        protected void btn_confirm_Click(object sender, EventArgs e)
        {

            string insert = "INSERT INTO patients VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + ListBox1.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','"+ DateTime.Now.ToString("M/d/yyyy")+"',"+Convert.ToInt32(Session["id"])+")";
            int status = cs.Execute_NonQuery(insert);
            if (status != 0)
            {
                Label9.Text = "submited";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            doctorList();
        }
        public void doctorList()
        {
            string sel = "SELECT drname,dptid FROM doctors WHERE dptid="+Convert.ToInt32(DropDownList1.SelectedItem.Value)+"";
            DataSet ds1 = new DataSet();
            ds1 = cs.Execute_Adapter(sel);
            ListBox1.DataSource = ds1;
            ListBox1.DataTextField = "drname";
            ListBox1.DataValueField = "dptid";
            ListBox1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["id"] = 5;
            Response.Redirect("Login.aspx");
        }
    }
}
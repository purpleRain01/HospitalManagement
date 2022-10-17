using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HospitalManagement
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        ConnectionClass cs = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_gridStaff();
                bind_gridPatient();
            }

        }
        public void bind_gridPatient()
        {
            string sel1 = "SELECT * FROM patients";
            DataSet ds = new DataSet();
            ds = cs.Execute_Adapter(sel1);

            GridView2.DataSource = ds;
            GridView2.DataBind();
        }
        public void bind_gridStaff()
        {
            string sel = "SELECT id,name,AdminApproved,photo FROM staffs";
            DataSet ds = new DataSet();
            ds = cs.Execute_Adapter(sel);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string edt = "UPDATE staffs SET AdminApproved='" + true + "' WHERE id=" + getid + "";
            

            int i = cs.Execute_NonQuery(edt);
            bind_gridStaff();
           
        }
    }
}
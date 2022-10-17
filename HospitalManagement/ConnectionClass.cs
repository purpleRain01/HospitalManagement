using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace HospitalManagement
{
    public class ConnectionClass
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConnectionClass()
        {
            con = new SqlConnection(@"
                                                server=DESKTOP-IBC1JNS\SQLEXPRESS01;
                                                database=hospital;
                                                Integrated security=true;
                                   ");
        }

        public int Execute_NonQuery(string sql)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            con.Close();
            return k;
        }

        public string Execute_Scalar(string sql)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            string k = cmd.ExecuteScalar().ToString();
            con.Close();
            return k;
        }
        public SqlDataReader Execute_Reader(string sql)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }

        public DataSet Execute_Adapter(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            da.Fill(ds);
            return ds;
        }
    }
}
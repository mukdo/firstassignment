using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace StudentManagement
{
    public class DatabaseHandeler
    {
        string connection = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public DataTable GetDataTable(string query) {

            SqlConnection sc = new SqlConnection(connection);
            if (sc.State == ConnectionState.Closed)
            {
                sc.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query,sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int insert(string query)
        {
            SqlConnection sc = new SqlConnection(connection);
            if (sc.State==ConnectionState.Closed)
            {
                sc.Open();
            }
            SqlCommand cmd = new SqlCommand(query, sc);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch(Exception ex)
            {
                return 0;
            }

        }
    }
}
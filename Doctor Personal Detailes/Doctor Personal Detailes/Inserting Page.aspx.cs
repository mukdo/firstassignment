using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doctor_Personal_Detailes
{
    public partial class Inserting_Page : System.Web.UI.Page
    {
        dataOparetor da = new dataOparetor();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgird();
        }
        public void loadgird()
        {
            string query = @"select *
                            from Staff";
            //GridView1.DataSource = da.GetDataTable(query);
           // GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"insert into Staff([Idno],[Name],[Department],[Doj],[Gender],[Address],[Salary],[Dtc],[Reason],[Age],[Email],[Phone],[District],[State]) 
                            values( '" + id_TextBox.Text + "','" + name_TextBox.Text + "', '" + dep_TextBox.Text + "', '" + Calendar1.SelectedDate.ToShortDateString() + "','" + DropDownList1.SelectedItem.Value + "','" + Address_TextBox.Text + "','" + salary_TextBox.Text + "','" + Calendar2.SelectedDate.ToShortDateString() + "','" + reason_TextBox.Text + "','" + age_TextBox.Text + "','" + email_TextBox.Text + "','" + mobile_TextBox.Text + "','" + district_TextBox.Text + "','" + state_TextBox.Text + "')";

            if (da.insert(query) == 1)
            {
                Response.Write("<script LANGUAGE ='JavaScript'>alert('Added Succesfully')</script>)");

                loadgird();
            }
        }
    }
}
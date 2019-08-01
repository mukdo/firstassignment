using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class student : System.Web.UI.Page
    {
        DatabaseHandeler da = new DatabaseHandeler();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgird();
        }
       public void loadgird()
        {

            string query = @"select *
                            from StudentProfile";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
        }
        public void ok_Click(object sender, EventArgs e)
        {
            string query = @"insert into StudentProfile 
                            values( '" + StuId.Text + "','" + StudentName.Text + "', '" + Stu_Address.Text + "', '" + Stu_Phn.Text + "')";
            if (da.insert(query)==1)
            {
                Response.Write("<script LANGUAGE ='JavaScript'>alert('Added Succesfully')</script>)");
                StudentName.Text = "";
                StuId.Text = "";
                Stu_Address.Text = "";
                Stu_Phn.Text = "";
                loadgird();
            }
            else { Response.Write("<script LANGUAGE = 'JavaScript'>alert('Added Faild')</script>)"); }
        }

       protected void Search_Button_student_Click(object sender, EventArgs e)
        {
            string query = @"select *
             from StudentProfile 
             where Id LIKE '%"+ Search_student_TextBox.Text +"%'";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
            Search_student_TextBox.Text = "";
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblId = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            string query = @"delete from StudentProfile
                                where Id ='"+lblId.Text+"'";
            if (da.insert(query)==1)
            {
                loadgird();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
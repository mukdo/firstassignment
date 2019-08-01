using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
namespace StudentManagement
{
    public partial class Course : System.Web.UI.Page
    {
        DatabaseHandeler dhc = new DatabaseHandeler();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }
        public void loadgrid()
        {
            string query = @"select *
                            from Course";
            CourseGridView.DataSource = dhc.GetDataTable(query);
            CourseGridView.DataBind();
        }
        protected void Course_Button_Click(object sender, EventArgs e)
        {
            string query = @"insert into Course
                values ('"+CourseCode_TextBox.Text+"', '"+CourseName_TextBox.Text+"')";
            if (dhc.insert(query)==1)
            {
                Response.Write("<script>alert ('Couse Added Successfully');</script>");
                CourseCode_TextBox.Text = "";
                CourseName_TextBox.Text = "";
                loadgrid();
            }
        }

    }
}
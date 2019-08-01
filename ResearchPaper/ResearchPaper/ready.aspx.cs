using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResearchPaper
{
    public partial class ready : System.Web.UI.Page
    {
        databaseHandelar da = new databaseHandelar();

        string calender4, calender5;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 Page lastpage = (Page)Context.Handler;
                 if(lastpage is SheetPrepair)
                 {
                     department.Text = ((SheetPrepair)lastpage).department;
                     date1.Text = ((SheetPrepair)lastpage).date;
                     quater.Text = ((SheetPrepair)lastpage).quater;
                     researchco.Text = ((SheetPrepair)lastpage).coodinator;
                    calender4 = ((SheetPrepair)lastpage).calender2;
                    calender5 = ((SheetPrepair)lastpage).calender3;
                    Label7.Text= ((SheetPrepair)lastpage).progress;
                }
            }

            //loadgrid call here
            loadgrid();
         
    } //here page_load end

        // gridview funtion here
        public void loadgrid()
        {
            string query = @"select * FROM input_paper where PubDate BETWEEN '"+calender4+"' AND '"+ calender5 +"' ";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
        }

       /* public void progress()
        {
            string query = @"select count(types) FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "' ) and Types = 'Jarnal'";
            if(da.count.)
                {
                Label7.Text = da.count(query);
            }
       }
       */
    }

}

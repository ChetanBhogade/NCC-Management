using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_view_applicationform : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        bindtable();
    }


    public void bindtable()
    {
        DataSet ds = db.ExecuteDataSet("select * from tbl_application_form");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
}
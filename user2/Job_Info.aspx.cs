using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user2_Job_Info : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_job_info();
    }

    public void bind_job_info()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_jobs");

        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();

    }
}
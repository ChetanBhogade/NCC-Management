using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user2_Default : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        // bind_weekly_pared_rally();
        // bind_event();
        // bind_camp_update();
    }

    public void bind_weekly_pared_rally()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_weekly_pared_info");

        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
         
    }


    public void bind_event()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_event_details");

        DataList2.DataSource = ds.Tables[0];
        DataList2.DataBind();

    }

    public void bind_camp_update()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_camp_update");

        DataList3.DataSource = ds.Tables[0];
        DataList3.DataBind();

    }
}
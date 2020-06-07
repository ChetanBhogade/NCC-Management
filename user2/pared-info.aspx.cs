using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user2_pared_info : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_weekly_pared_rally();
    }

    public void bind_weekly_pared_rally()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_weekly_pared_info");

        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();

    }
}
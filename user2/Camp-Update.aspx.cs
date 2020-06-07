using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user2_Camp_Update : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_camp_update();
    }

    public void bind_camp_update()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_camp_update");

        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();

    }
}
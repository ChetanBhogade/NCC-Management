using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;




   
public partial class user2_army_rallyinfo : System.Web.UI.Page
{
    DBmanager db = new DBmanager();

    protected void Page_Load(object sender, EventArgs e)
    {
        blindtable();
        bind_demo_paper();

    }
    public void blindtable()
    {


    }

    public void bind_demo_paper()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_army_rally_info");

        DataList4.DataSource = ds.Tables[0];
        DataList4.DataBind();

    }


}


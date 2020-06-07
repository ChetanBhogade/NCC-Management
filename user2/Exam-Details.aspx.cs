using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user2_Exam_Details : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_event();

    }

    public void bind_event()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_exam_details");

        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();

    }
}
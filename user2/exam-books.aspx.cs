using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user2_exam_books : System.Web.UI.Page
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
        ds = db.ExecuteDataSet("select * from tbl_army_exam_book");

        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();

    }
}
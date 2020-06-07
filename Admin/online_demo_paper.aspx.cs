using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_User_online_demo_paper : System.Web.UI.Page
{
    DBmanager db = new DBmanager();

    protected void Page_Load(object sender, EventArgs e)
    {
        blindtable();
       
    }
    public void blindtable()
    {

        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_demo_paper");
        GridView6.DataSource = ds.Tables[0];
        GridView6.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into tbl_demo_paper(paper_name, year, description, url) values('" + txtname.Text + "','" + txtyear.Text + "', '"+ TextBox1.Text + "', '" + TextBox2.Text + "')";
        int result = db.executeQuery(query);

        if (result > 0)
        {
           
            blindtable();
        }
        else
        {


        }
    }
}
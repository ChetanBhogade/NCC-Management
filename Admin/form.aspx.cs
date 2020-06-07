using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_form : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        blindtable();
    }
    public void blindtable()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_form");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into tbl_form(name,rollno,section) values('" + Txtname.Text + "','" + Txtroll.Text + "','" + Txtsection.Text + "')";
        int result = db.executeQuery(query);

        if (result > 0)
        {
            blindtable();
        }
        else
        {


        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string query = "update  tbl_form set name='" + Txtname.Text + "',rollno='" + Txtroll.Text + "',section='" + Txtsection.Text + "' where name='" + Txtname.Text +  "'";
        int result = db.executeQuery(query);

        if (result > 0)
        {
            blindtable();
        }
        else
        {


        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
     string query= "delete  from tbl_form where rollno='" + Txtroll.Text+"'";
        int result = db.executeQuery(query);

        if (result > 0)
        {
            blindtable();
        }
        else
        {


        }
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        Txtname.Text = "";
        Txtroll.Text = "";
        Txtsection.Text = "";
    }
} 
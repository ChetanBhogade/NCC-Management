using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_User_event_details : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {


      blindtable();
    }

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }


    public void blindtable()
    {

        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_event_details");
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string query = "insert into tbl_event_details(event_name,location,date,time,no_of_cdt) values('" + txtname.Text + "','" +txtlocation.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" +txtcdt.Text+ "')";
        int result = db.executeQuery(query);

        if (result > 0)
        {
            ShowMessage("Record submitted successfully", MessageType.Success);
            blindtable();
        }
        else
        {


        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        string query = "update  tbl_event_details set location='" + txtname.Text + "',event_name='" + txtlocation.Text + "',date='" + txtdate.Text + "',time='" + txttime + "',no_of_cdt='" + txtcdt.Text + "'";
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
        string query = "delete  from tbl_event_details where event_name='" + txtname.Text + "'";
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
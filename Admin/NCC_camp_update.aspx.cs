using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_User_NCC_camp_update : System.Web.UI.Page
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
        ds = db.ExecuteDataSet("select * from tbl_camp_update");
        GridView3.DataSource = ds.Tables[0];
        GridView3.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string query = "insert into tbl_camp_update(camp_name,location,vacancy,date) values('" + txtname.Text + "','" + txtlocation.Text + "','" + txtvacancy.Text + "','" + txtdate.Text + "')";
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

        string query = "update  tbl_camp_update set camp_name='" + txtname.Text + "',location='" + txtlocation.Text + "',vacancy='" + txtvacancy.Text + "',date='" + txtdate + "'";
        int result = db.executeQuery(query);

        if (result > 0)
        {

        }
        else
        {


        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string query = "delete  from tbl_camp_update where location='" + txtlocation.Text + "'";
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
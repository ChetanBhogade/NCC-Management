using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_User_army_rally_info : System.Web.UI.Page
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
        ds = db.ExecuteDataSet("select * from tbl_army_rally_info ");
        GridView1.DataSource=ds.Tables[0];
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into tbl_army_rally_info(rally_name,district,qualification,post,date) values('" + txtname.Text + "','" +txtdistrict.Text+ "','" + txtqualification.Text + "','" + txtpost.Text + "','"+txtdate.Text+"')";
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

        string query = "update  tbl_army_rally_info set rally_name='" + txtname.Text + "',district='" + txtdistrict.Text + "',qualification='" + txtqualification.Text + "',post='" + txtpost + "',date='" + txtdate .Text+ "'";
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
        string query = "delete  from tbl_army_rally_info where rally_name='" + txtname.Text + "'";
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
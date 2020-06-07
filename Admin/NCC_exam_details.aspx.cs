using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_User_NCC_exam_details : System.Web.UI.Page
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
        ds = db.ExecuteDataSet("select * from tbl_exam_details");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string query = "insert into tbl_exam_details(exam_name,location,time,date,description) values('" + txtname.Text + "','" + txtlocation.Text + "','" + txttime.Text + "','" + txtdate.Text + "','" + txtdesc.Text + "')";
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

        string query = "update  tbl_exam_details set exam_name='" + txtname.Text + "',location='" + txtlocation.Text + "',time='" + txttime.Text + "',date='" + txtdate + "',description='"+txtdesc.Text+"'";
        int result = db.executeQuery(query);

        if (result > 0)
        {

        }
        else
        {


        }

    }
}
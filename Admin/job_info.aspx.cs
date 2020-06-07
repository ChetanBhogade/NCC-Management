using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_User_job_info : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    public enum MessageType { Success, Error, Info, Warning };
    protected void Page_Load(object sender, EventArgs e)
    {
       bindtable();

    }

    protected void ShowMessage(string Message, MessageType type)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
    }

    public void bindtable()
    {
        DataSet ds = new DataSet();
        ds = db.ExecuteDataSet("select * from tbl_jobs");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "insert into tbl_jobs(Company_name,Post_name,Qualification,Description) values('"+txtname.Text+"','"+txtpostname.Text+"','"+txtqualification.Text+"','"+txtdesc.Text+"')";
        int result = db.executeQuery(query);

        if (result > 0)
        {
            ShowMessage("Record submitted successfully", MessageType.Success);
            bindtable();
        }
        else
        {
            ShowMessage("Record submitted successfully", MessageType.Success);
            
        
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string query = "update  tbl_jobs set Company_name='"+txtname.Text+"',Post_name='"+txtpostname.Text+"',Qualification='"+txtqualification.Text+"',Description='"+txtdesc+"'";
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
        string query = "delete  from tbl_jobs where Post_name='" + txtpostname.Text + "'";
        int result = db.executeQuery(query);
        if (result > 0)
        {
            bindtable();
        }
        else
        {


        }
    }
}
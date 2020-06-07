using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_User_online_army_exam_book : System.Web.UI.Page
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
        ds = db.ExecuteDataSet("select * from tbl_army_exam_book");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string query = "insert into tbl_army_exam_book(book_name,price,image,url,description) values('" + txtname.Text + "','" + txtprice.Text + "','" + txtimage.Text + "','" + txturl.Text + "','" + txtdesc.Text + "')";
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

        string query = "update  tbl_army_exam_book set book_name='" + txtname.Text + "',price='" + txtprice.Text + "',image='" + txtimage.Text + "',url='" + txturl + "',description='" + txtdesc.Text + "'";
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
        string query = "delete  from tbl_army_exam_book where book_name='" + txtname.Text + "'";
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
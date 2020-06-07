using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_checkroll : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;

    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {
        blindtable();
    }

    public void blindtable()
    {

    }
    protected void save_Click(object sender, EventArgs e)
    {
        string query = "UPDATE tbl_application_form SET status = " + DropDownList1.SelectedValue + " WHERE rollno = " + txtrol.Text + "";
        int result = db.executeQuery(query);
        if (result > 0)
        {
            blindtable();
            Label1.Text = "Data Updated Successfully.";
        }
        else
        {
            Label1.Text = "Some Error Occur!";
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["db_ncc"].ConnectionString);
        conn.Open();
        cmd = new SqlCommand("UPDATE tbl_application_form SET status=@a1 WHERE rollno=@a2", conn);
        cmd.Parameters.Add("a1", DropDownList1.SelectedValue);
        cmd.Parameters.Add("a2", txtrol.Text);
        int result = cmd.ExecuteNonQuery();
        if (result > 0)
        {
            blindtable();
            Label1.Text = "Data Updated Successfully.";
        }
        else
        {
            Label1.Text = "Some Error Occur!";
        }

        conn.Close();

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private bool AuthenticateMe(string userRollNo, string password)
    {
        // just hard code the username for this demo
        // in real scenario you should call your object and validate username and password againt the database or whichever data source you are using       
        DataSet ds = new DataSet();

        string query = "select * from tbl_application_form where rollno= '" + userRollNo + "' and password='" + password + "'";
        ds = db.ExecuteDataSet(query);

        if (ds.Tables[0].Rows.Count > 0)
        {

            Random r = new Random();
            int num = r.Next(1000);
            string id = num.ToString();

            if (TextBox1.Text.Equals(ds.Tables[0].Rows[0]["rollno"].ToString()) && TextBox2.Text.Equals(ds.Tables[0].Rows[0]["password"].ToString()))
            {
                Session["SessionId"] = id;
                Session["username"] = TextBox1.Text;

                return true;
            }
            else
            {
                Response.Write("<script>alert('Login Failed!!! Try Again.')</script>");
                return false;
            }
        }
        else
        {
            Response.Write("<script>alert('Roll Number Does Not Found!!! Try Again.')</script>");
            return false;
        }

        return false;
    }


    public bool checkStudentRollnumberStatus(string rollnumber)
    {

        string query = "select  * from tbl_application_form where rollno = '" + rollnumber.ToString() + "'";
        DataSet ds = db.ExecuteDataSet(query);

        if (ds.Tables[0].Rows[0]["status"].ToString().Equals("yes".ToString()))
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkStudentRollnumberStatus(TextBox1.Text))
        {
            bool authenticated = AuthenticateMe(TextBox1.Text, TextBox2.Text);
            if (authenticated)
            {
                Response.Write("<script>alert('Login Successfull.')</script>");
                Response.Redirect("user2/Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error While Login!!! Please Try Again.')</script>");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class Admin_login : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void MsgBoxShow(string msg)
    {
        //string msg = "Registered Successfully.\nGo to your mail box and check mail to get authenticated.";
        StringBuilder sb = new StringBuilder();
        sb.Append("alert('");
        sb.Append(msg.Replace("\n", "\\n").Replace("\r", "").Replace("'", "\\'"));
        sb.Append("');");
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "showalert", sb.ToString(), true);
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        bool authenticated = AuthenticateMe(txtusername.Text, txtpassword.Text);
        if (authenticated)
        {
            
            Response.Redirect("event_details.aspx", false);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "hiii", "callme('Please Enter Valid Email Or Passowrd')", true);
        }
    }

    private bool AuthenticateMe(string userName, string passwords)
    {
        // just hard code the username for this demo
        // in real scenario you should call your object and validate username and password againt the database or whichever data source you are using       
        DataSet ds = new DataSet();

        string query = "select * from tb_login where username= '" + userName + "' and password='" + passwords + "'";
        ds = db.ExecuteDataSet(query);

        if (ds.Tables[0].Rows.Count > 0)
        {

            Random r = new Random();
            int num = r.Next(1000);
            string id = num.ToString();

            if (txtusername.Text.Equals(ds.Tables[0].Rows[0]["username"].ToString()) && txtpassword.Text.Equals(ds.Tables[0].Rows[0]["password"].ToString()))
            {
                Session["SessionId"] = id;
                Session["username"] = txtusername.Text;


      

                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "hiii", "callme('hiiiii')", true);
                return true;
            }
            else
            {
                // Label1.Visible = true;
                // Label1.Text = "Please enter valid passowrd";
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "hiii", "callme('Please Enter Valid Email Or Passowrd')", true);
            }
        }
        else
        {
            //  Label1.Visible = true;
            // Label1.Text = "Please enter valid username and passowrd";
        }
        return false;
    }

}
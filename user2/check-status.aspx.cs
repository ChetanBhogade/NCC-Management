using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user2_check_status : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string query = "select  * from tbl_application_form where rollno = '" + txtroll.Text + "'";
        DataSet ds = db.ExecuteDataSet(query);

        if (ds.Tables[0].Rows.Count > 0)
        {
            string status = ds.Tables[0].Rows[0]["status"].ToString();

            if (status.Equals("yes"))
            {
                lblmessage.InnerText = "Your form is approved.";
            }
            else
            {
                lblmessage.InnerText = "Your form is not yet approved.";
            }
        }
        else
        {
           
        }
    }
}
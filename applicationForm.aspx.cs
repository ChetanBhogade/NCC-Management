using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;

public partial class user2_applicationForm : System.Web.UI.Page
{
    DBmanager db = new DBmanager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public bool checkStudentRollnumber(string rollnumber)
    {


        string query = "select  * from tbl_form where rollno = '" + txtroll.Text + "'";
        DataSet ds = db.ExecuteDataSet(query);

        if (ds.Tables[0].Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    public bool checkStudent(string rollnumber)
    {
        string query = "select * from tbl_application_form where rollno = '" + rollnumber + "'";
        DataSet ds = db.ExecuteDataSet(query);

        if (ds.Tables[0].Rows.Count > 0)
        {
            // student already exists
            Response.Write("<script>alert('Roll Number is alerady exists!!!')</script>");
            return false;
        }
        else
        {
            // new student is here
            return true;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
         if (checkStudent(txtroll.Text))
         {
       // 
       //      if (checkStudentRollnumber(txtroll.Text))
       //      {

                Random r = new Random();
                String formnumber = r.Next(5000, 8000).ToString();

                string query = "insert into tbl_application_form(FormNumber,rollno,full_name,father_name,mother_name,address,near_railway_stn,near_police_stn,phone_no,blood_group,sex,qualification,college_stream,dob,email,adhar_no,ifsc_code,bank_acc_no,password) values('" + formnumber + "','" + txtroll.Text + "','" + txtname.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtaddress.Text + "','" + txtnrs.Text + "','" + txtnps.Text + "','" + txtphone.Text + "','" + txtblood.Text + "','" + DropDownList1.Text + "','" + txtqualification.Text + "','" + txtcollege.Text + "','" + txtdob.Text + "','" + txtemail.Text + "','" + txtadhar.Text + "','" + txtifsc.Text + "','" + txtbankacc.Text + "', '" + txtpassword.Text + "')";
                int result = db.executeQuery(query);

                if (result > 0)
                {
                    String AplicationFormMessage = "NCC Application Form: \n" +
                                                   "----------------------------\n" +
                                                   "\n Application Form Number: " + formnumber +
                                                   " College RollNumber: " + txtroll.Text +
                                                   "\n Full Name: " + txtname.Text +
                                                   "\n Father Name: " + txtfname.Text +
                                                   "\n Mother Name: " + txtmname.Text +
                                                   "\n Address: " + txtaddress.Text +
                                                   "\n Nearest Railway Station: " + txtnrs.Text +
                                                   "\n Nearest Police Station: " + txtnps.Text +
                                                   "\n Phone No.: " + txtphone.Text +
                                                   "\n Blood Group: " + txtblood.Text +
                                                   "\n Sex: " + DropDownList1.Text +
                                                   "\n Qualification & Marks in(%): " + txtqualification.Text +
                                                   "\n Name of College and Stream: " + txtcollege.Text + 
                                                   "\n DOB: " + txtdob.Text + 
                                                   "\n Email: " + txtemail.Text + 
                                                   "\n Aadhar No.: " + txtadhar.Text +
                                                   "\n Banker's Detail/IFSC Code: " + txtifsc.Text +
                                                   "\n Bank Account No: " + txtbankacc.Text +
                                                   "\n Your Password: " + txtpassword.Text +
                                                   "\n----------------------------\n";


                    String senderMail = "hrushikeshsalunkhe179@gmail.com";
                    String password = "8983306295";


                    try
                    {
                        MailMessage mailMessage = new MailMessage();
                        mailMessage.To.Add(senderMail);
                        mailMessage.From = new MailAddress(senderMail);
                        mailMessage.Subject = "Registration Application Form";
                        mailMessage.Body = AplicationFormMessage;
                        mailMessage.IsBodyHtml = false;

                        SmtpClient smtpClient = new SmtpClient
                        {
                            Host = "smtp.gmail.com",
                            Port = 587,
                            EnableSsl = true,
                            DeliveryMethod = SmtpDeliveryMethod.Network,
                            UseDefaultCredentials = false,
                            Credentials = new NetworkCredential(senderMail, password)
                        };

                        smtpClient.Send(mailMessage);
                    Response.Write("<script>alert('Form Inserted Successfully.')</script>");

            }
            catch (Exception ex)
                    {
                        lblmessage.InnerText = "Could not send the e-mail - error: " + ex.Message;
                        Response.Write("Could not send the e-mail - error: " + ex.Message);
                    }



                    lblmessage.InnerText = "Your form is submitted successfully Your Application form Number is :" + formnumber;
                }
                else
                {
                    lblmessage.InnerText = "Please try  again something bad happen.....";

                }
           }
       //      else
       //      {
       // 
       //          lblmessage.InnerText = "Please enter valid college Roll Number OR either it does not exit";
       //      }
       //  }
       //  else
       //  {
       //      lblmessage.InnerText = "You have already submitted your form.";
       // 
       //  }
    } 
}
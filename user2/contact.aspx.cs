using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;

public partial class user2_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSubmit1_Click(object sender, EventArgs e)
    {
        String name = Name1.Value;
        String email = Email1.Value;
        String telephone = Telephone1.Value;
        String subject = Subject1.Value;
        String message = Message1.Value;

        String senderMail = "hrushikeshsalunkhe179@gmail.com";
        String password = "8983306295";
        

        try
        {
            MailMessage mailMessage = new MailMessage();
            mailMessage.To.Add(senderMail);
            mailMessage.From = new MailAddress(senderMail);
            mailMessage.Subject = subject;
            mailMessage.Body = message;
            mailMessage.IsBodyHtml = false;

            SmtpClient smtpClient = new SmtpClient {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(senderMail, password)
            };
            // only for yahoo mail server
            // ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)
            // { return true; };
            smtpClient.Send(mailMessage);
            Response.Redirect("http://localhost:56519/user2/Default.aspx");
            Response.Write("E-mail sent!");
        }
        catch (Exception ex)
        {
            Response.Write("Could not send the e-mail - error: " + ex.Message);
        }
    }
}
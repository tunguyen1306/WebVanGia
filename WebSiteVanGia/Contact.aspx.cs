using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteVanGia
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGSend_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Equals("") && txtPhone.Text.Equals("") && txtName.Text.Equals(""))
            {
                Page.RegisterStartupScript("UserMsg", "<script>alert('Email và điện thoại,địa chỉ Không được rỗng');if(alert){ window.location='contact.aspx';}</script>");

            }
            else
            {
                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add("vangia.net@gmail.com");
                mail.From = new MailAddress(txtEmail.Text, txtName.Text, System.Text.Encoding.UTF8);
                mail.Subject = txtTieuDe.Text;
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = "Mail:  " + txtEmail.Text + " <br/> " + "Họ và tên:  " + txtName.Text + "<br/>" + "Số điện thoại:  " + txtPhone.Text + "<br/>" + "Nội dung: <br/>" + txtMessage.Text + "<br/>";
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("dogonguyendiep@gmail.com", "Doilanhuthe1");
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;
                try
                {
                    client.Send(mail);
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Gửi tin nhắn thành công');if(alert){ window.location='contact.aspx';}</script>");
                    txtMessage.Text = "";
                }
                catch (Exception ex)
                {
                    Exception ex2 = ex;
                    string errorMessage = string.Empty;
                    while (ex2 != null)
                    {
                        errorMessage += ex2.ToString();
                        ex2 = ex2.InnerException;
                    }
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Gửi tin nhắn lỗi vui long gửi lại');if(alert){ window.location='contact.aspx';}</script>");
                }

            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtTieuDe.Text = "";
            txtMessage.Text = "";
            txtName.Text = "";
            txtPhone.Text = "";
        }

      
    }
}
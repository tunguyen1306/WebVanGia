using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteVanGia
{
    public partial class DeatailTuyenDung : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    ViewCha.SetActiveView(view1);
                } if (Request.QueryString["idbm"] != null)
                {
                    ViewCha.SetActiveView(view2);
                }
                if (Request.QueryString["idhd"] != null)
                {
                    ViewCha.SetActiveView(view3);
                }
                if (Request.QueryString["idn"] != null)
                {
                    ViewCha.SetActiveView(view4);
                }
                //if (Request.QueryString["idtv"] != null)
                //{
                //    ViewCha.SetActiveView(view5);
                //}
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = (sender as Button).CommandArgument;
            hdtuyenid.Value = id;
            ViewCha.SetActiveView(view6);
            DataTable dt = (dsDeTuyen.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                ltrVitrituyen.Text = dt.Rows[i]["vangia_vitri_tuyendung"].ToString();
                ltrMatuyenDung.Text = dt.Rows[i]["vangia_ma_tuyendung"].ToString();
                ltrName.Text = dt.Rows[i]["vangia_name_tuyendung"].ToString();
            }

        }



        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtMessage.Text = "";
           


        }

        protected void btnGSend_Click(object sender, EventArgs e)
        {
            DataTable dt = (dsDeTuyen.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
            for (int i = 0; i < dt.Rows.Count; i++)
            {



                if (Page.IsValid && fulCV.HasFile)
                {
                    string fileName = "cv/" + fulCV.FileName;
                    string filePath = MapPath(fileName);
                    fulCV.SaveAs(filePath);


                    MailMessage mail = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                    mail.From = new MailAddress("dogonguyendiep@gmail.com");
                    mail.To.Add("vangia.construction@gmail.com ");
                    mail.Subject = txtName.Text + "_" + dt.Rows[i]["vangia_vitri_tuyendung"].ToString();
                    mail.Body = txtMessage.Text;

                    System.Net.Mail.Attachment attachment;
                    attachment = new System.Net.Mail.Attachment(filePath);
                    mail.Attachments.Add(attachment);

                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("dogonguyendiep@gmail.com", "Doilanhuthe1");
                    SmtpServer.EnableSsl = true;

                   
                    try
                    {
                        SmtpServer.Send(mail);
                        Page.RegisterStartupScript("UserMsg", "<script>alert('Gửi tin nhắn thành công');if(alert){ window.location='contact.aspx';}</script>");
                       
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

        }





    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_addconfirm_Click(object sender, EventArgs e)
        {
            try
            {
                using(MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("erp.testmails@gmail.com");
                    mail.To.Add(txt_addusermail.Text);
                    mail.Subject = "Giving privillages to the ERP";
                    string password = txt_adduserpassword.Text;
                    mail.Body = "Your password is " + password + " & your privillages are ";
                    mail.IsBodyHtml= false;
                    

                    using(SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Credentials = new System.Net.NetworkCredential("erp.testmails@gmail.com", "klwewmotidlrtwtc");
                        smtp.EnableSsl= true;
                        //txt_deluseremail.Text = "mail@mail";
                        smtp.Send(mail);
                        //txt_adduserpassword.Text = "Mail Sent";

                    }

                }
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
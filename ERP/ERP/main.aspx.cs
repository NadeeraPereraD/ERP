using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            String quotation = "Unavailable";
            String invoicing = "Unavailable";
            String vendors = "Unavailable";
            String customers = "Unavailable";
            String inventory = "Unavailable";
            int flag = 0;

            string addCheckboxes = "";
            if (cb_addquotation.Checked == true)
            {
                addCheckboxes = " Quotations";
                quotation = "available";
            }
            if (cb_addinvoice.Checked == true)
            {
                addCheckboxes = addCheckboxes + " Invoicing";
                invoicing = "available";
            }
            if (cb_addvendors.Checked == true)
            {
                addCheckboxes = addCheckboxes + " Vendors";
                vendors = "available";
            }
            if (cb_addcustomers.Checked == true)
            {
                addCheckboxes = addCheckboxes + " Customers";
                customers = "available";
            }
            if (cb_addinventory.Checked == true)
            {
                addCheckboxes = addCheckboxes + " Inventory";
                inventory = "available";
            }

            String email = txt_addusermail.Text.ToString();
            String password = txt_adduserpassword.Text.ToString();

            String connectionString;
            SqlConnection cnn;

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();

            SqlDataReader dataReader;
            SqlCommand commandReader;

            String sqlInsert, sqlReader, output = "";

            connectionString = @"Data Source=DESKTOP-JQPIIAD;Initial Catalog=erpsystem;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            cnn.Open();

            sqlReader = "SELECT email FROM users";
            commandReader = new SqlCommand(sqlReader, cnn);
            dataReader = commandReader.ExecuteReader();

            while (dataReader.Read())
            {
                output = (String)dataReader.GetValue(0);

                if (String.Equals(output, txt_addusermail.Text))
                {
                    Response.Write("This email already use as user");
                    flag = 1;
                }
            }

            //Response.Write(output);

            dataReader.Close();

            /*while(dataReader.Read())
            {
                String output = "";
                if(dataReader.IsDBNull(0))
                {
                    Response.Write("User table is empty");
                }
                else if(dataReader.GetValue == txt_addusermail.Text)
                {

                }
            }*/
            /*while (dataReader.Read())
            {
                /*if (dataReader.GetValue(i) == email)
                {
                    flag = 1;
                }*/
                /*String option = (string)dataReader.GetValue(1);
                Response.Write(option);
            }*/

            dataReader.Close();

            if( flag == 0 )
            {
                sqlInsert = "INSERT INTO users (email, password, quotation, invoicing, vendors, customers, inventory) VALUES ('" + email + "','" + password + "','" + quotation + "','" + invoicing + "','" + vendors + "','" + customers + "','" + inventory + "')";
                command = new SqlCommand(sqlInsert, cnn);
                adapter.InsertCommand = new SqlCommand(sqlInsert, cnn);



                adapter.InsertCommand.ExecuteNonQuery();

                //command.ExecuteNonQuery();

                Response.Write("Successfully Registered");

                command.Dispose();
            }
            

            cnn.Close();

            try
            {
                using(MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("erp.testmails@gmail.com");
                    mail.To.Add(txt_addusermail.Text);
                    mail.Subject = "Giving privillages to the ERP";
                    //string password = txt_adduserpassword.Text;
                    mail.Body = "Your password is " + password + " & your privillages are" + addCheckboxes;
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

        protected void btn_delconfirm_Click(object sender, EventArgs e)
        {
            String quotation = "Unavailable";
            String invoicing = "Unavailable";
            String vendors = "Unavailable";
            String customers = "Unavailable";
            String inventory = "Unavailable";
            int flag = 0;

            string delCheckboxes = "";
            if (cb_delquotation.Checked == true)
            {
                delCheckboxes = " Quotations";
                quotation = "available";
            }
            if (cb_delinvoice.Checked == true)
            {
                delCheckboxes = delCheckboxes + " Invoicing";
                invoicing = "available";
            }
            if (cb_delvendors.Checked == true)
            {
                delCheckboxes = delCheckboxes + " Vendors";
                vendors = "available";
            }
            if (cb_delcustomers.Checked == true)
            {
                delCheckboxes = delCheckboxes + " Customers";
                customers = "available";
            }
            if (cb_delinventory.Checked == true)
            {
                delCheckboxes = delCheckboxes + " Inventory";
                inventory = "available";
            }

            String delEmail = txt_deluseremail.Text.ToString();

            String connectionString;
            SqlConnection cnn;

            //SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();

            //SqlDataReader dataReader;
            SqlCommand commandDelete;
            SqlCommand commandUpdate;

            String sqlDelete, sqlUpdate, output = "";

            connectionString = @"Data Source=DESKTOP-JQPIIAD;Initial Catalog=erpsystem;Integrated Security=True";

            cnn = new SqlConnection(connectionString);
            cnn.Open();

            if(cb_delquotation.Checked == false && cb_delinvoice.Checked == false && cb_delvendors.Checked == false && cb_delcustomers.Checked == false && cb_delinventory.Checked == false)
            {
                sqlDelete = "DELETE FROM users WHERE email = '" + delEmail + "'";
                commandDelete = new SqlCommand(sqlDelete, cnn);
                //adapter.DeleteCommand = new SqlCommand(sqlDelete, cnn);
                //adapter.DeleteCommand.ExecuteNonQuery();
                commandDelete.ExecuteNonQuery();
                txt_deluseremail.Text = "";
            }

            sqlUpdate = "Update users SET quotation = '" + quotation + "', invoicing = '" + invoicing + "', vendors = '" + vendors + "',customers = '" + customers + "', inventory = '" + inventory + "' WHERE email = '" + delEmail + "'";
            commandUpdate = new SqlCommand(sqlUpdate,cnn);
            commandUpdate.ExecuteNonQuery();

            //sqlReader = "SELECT email FROM users";
            //commandDelete = new SqlCommand(sqlDelete, cnn);
            /*dataReader = commandReader.ExecuteReader();

            while (dataReader.Read())
            {
                output = (String)dataReader.GetValue(0);

                if (String.Equals(output, txt_addusermail.Text))
                {
                    Response.Write("This email already use as user");
                    flag = 1;
                }
            }

            //Response.Write(output);

            dataReader.Close();*/

            cnn.Close();

        }
    }
}
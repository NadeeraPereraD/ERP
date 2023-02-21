using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP
{
    public partial class vendors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_vencreate_Click(object sender, EventArgs e)
        {
            string vendorName = txt_venname.Text;
            string vendorAddress = txt_venaddress.Text;
            string vendorStreetName = txt_venstreetname.Text;
            string vendorCity = txt_vencity.Text;
            string vendorPostalCode = txt_venpostalcode.Text;

            string vendorOwnersFirstName = txt_venowfirstname.Text;
            string vendorOwnersLastName = txt_venowlastname.Text;
            string vendorOwnersEmail = txt_venowemail.Text;
            string vendorOwnersTel1 = txt_venowtel1.Text;
            string vendorOwnersTel2 = txt_venowtel2.Text;

            string vendorCpFirstName = txt_vencpfirstname.Text;
            string vendorCpLastName = txt_vencplastname.Text;
            string vendorCpJobTitle = txt_vencpjobtitle.Text;
            string vendorCpEmail = txt_vencpemail.Text;
            string vendorCpTel1 = txt_vencptel1.Text;
            string vendorCpTel2 = txt_vencptel2.Text;

            ////////// For Database connection ///////////////

            String connectionString;
            SqlConnection cnn;

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();

            String sqlinsert = "";

            connectionString = @"Data Source=DESKTOP-JQPIIAD;Initial Catalog=erpsystem;Integrated Security=True";
            cnn = new SqlConnection(connectionString);

            cnn.Open();

            /////// Insert data to a Database ///////////
            ///
            sqlinsert = "INSERT INTO vendors (vendorname, vendoraddress, vendorstreetname, vendorcity, vendorpostalcode, vendorownersfirstname, vendorownerslastname, vendorownersemail, vendorownerstelephone1, vendorownerstelephone2, vendorcpfirstname, vendorcplasttname, vendorcpjobtitle, vendorcpemail, vendorcptelephone1, vendorcptelephone2) VALUES ('" + vendorName + "','" + vendorAddress + "','" + vendorStreetName + "','" + vendorCity + "','" + vendorPostalCode + "','" + vendorOwnersFirstName + "','" + vendorOwnersLastName + "','" + vendorOwnersEmail + "','" + vendorOwnersTel1 + "','" + vendorOwnersTel2 + "','" + vendorCpFirstName + "','" + vendorCpLastName + "','" + vendorCpJobTitle + "','" + vendorCpEmail + "','" + vendorCpTel1 + "',+'" + vendorCpTel2 + "')";
            command = new SqlCommand(sqlinsert, cnn);

            adapter.InsertCommand = new SqlCommand(sqlinsert, cnn);

            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            ///////// Insert finished /////////////

            cnn.Close();

        }

        protected void btn_venupdate_Click(object sender, EventArgs e)
        {
            string vendorName = txt_venname.Text;
            string vendorAddress = txt_venaddress.Text;
            string vendorStreetName = txt_venstreetname.Text;
            string vendorCity = txt_vencity.Text;
            string vendorPostalCode = txt_venpostalcode.Text;

            string vendorOwnersFirstName = txt_venowfirstname.Text;
            string vendorOwnersLastName = txt_venowlastname.Text;
            string vendorOwnersEmail = txt_venowemail.Text;
            string vendorOwnersTel1 = txt_venowtel1.Text;
            string vendorOwnersTel2 = txt_venowtel2.Text;

            string vendorCpFirstName = txt_vencpfirstname.Text;
            string vendorCpLastName = txt_vencplastname.Text;
            string vendorCpJobTitle = txt_vencpjobtitle.Text;
            string vendorCpEmail = txt_vencpemail.Text;
            string vendorCpTel1 = txt_vencptel1.Text;
            string vendorCpTel2 = txt_vencptel2.Text;

            /////////// For database connection //////////////
            ///
            String connectionString;
            SqlConnection cnn;

            SqlDataAdapter adapter = new SqlDataAdapter();

            SqlCommand commandUpdate;

            String sqlUpdate = "";

            connectionString = @"Data Source=DESKTOP-JQPIIAD;Initial Catalog=erpsystem;Integrated Security=True";

            cnn = new SqlConnection(connectionString);

            cnn.Open();

            ///////////// Update database /////////////////
            ///
            sqlUpdate = "UPDATE vendors SET vendorname = '" + vendorName + "', vendoraddress = '" + vendorAddress + "', vendorstreetname = '" + vendorStreetName + "', vendorcity = '" + vendorCity + "', vendorpostalcode = '" + vendorPostalCode + "', vendorownersfirstname = '" + vendorOwnersFirstName + "', vendorownerslastname = '" + vendorOwnersLastName + "', vendorownersemail = '" + vendorOwnersEmail + "', vendorownerstelephone1 = '" + vendorOwnersTel1 + "', vendorownerstelephone2 = '" + vendorOwnersTel2 + "', vendorcpfirstname = '" + vendorCpFirstName + "', vendorcplasttname = '" + vendorCpLastName + "', vendorcpjobtitle = '" + vendorCpJobTitle + "', vendorcpemail = '" + vendorCpEmail + "', vendorcptelephone1 = '" + vendorCpTel1 + "', vendorcptelephone2 = '" + vendorCpTel2 + "' WHERE vendorname = '" + vendorName + "'";
            commandUpdate = new SqlCommand(sqlUpdate, cnn);
            commandUpdate.ExecuteNonQuery();

            ///////////// Update finished ////////////////
            ///

            cnn.Close();
        }
    }
}
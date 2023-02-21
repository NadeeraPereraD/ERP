using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERP
{
    public partial class customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cuscreate_Click(object sender, EventArgs e)
        {
            string companyName = txt_cusname.Text;
            string customerAddress = txt_cusaddress.Text;
            string customerStreetName = txt_cusstreetname.Text;
            string customerCity = txt_cuscity.Text;
            string customerPostalCode = txt_cuspostalcode.Text;

            string customerOwnersFirstName = txt_cusowfirstname.Text;
            string customerOwnersLastName = txt_cusowlastname.Text;
            string customerOwnersEmail = txt_cusowemail.Text;
            string customerOwnersTel1 = txt_cusowtel1.Text;
            string customerOwnersTel2 = txt_cusowtel2.Text;

            string customerCpFirstName = txt_cuscpfirstname.Text;
            string customerCpLastName = txt_cuscplastname.Text;
            string customerCpJobTitle = txt_cuscpjobtitle.Text;
            string customerCpEmail = txt_cuscpemail.Text;
            string customerCpTel1 = txt_cuscptel1.Text;
            string customerCpTel2 = txt_cuscptel2.Text;

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
            sqlinsert = "INSERT INTO customers (companyname, companyaddress, streetname, city, postalcode, ownersfirstname, ownerslastname, ownersemail, ownerstelephone1, ownerstelephone2, cpfirstname, cplasttname, cpjobtitle, cpemail, cptelephone1, cptelephone2) VALUES ('"+companyName+ "','"+customerAddress+"','"+customerStreetName+"','"+customerCity+"','"+customerPostalCode+"','"+customerOwnersFirstName+"','"+customerOwnersLastName+"','"+customerOwnersEmail+"','"+customerOwnersTel1+"','"+customerOwnersTel2+"','"+customerCpFirstName+"','"+customerCpLastName+"','"+customerCpJobTitle+"','"+customerCpEmail+"','"+customerCpTel1+"',+'"+customerCpTel2+"')";
            command = new SqlCommand(sqlinsert, cnn);

            adapter.InsertCommand = new SqlCommand(sqlinsert, cnn);

            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            ///////// Insert finished /////////////

            cnn.Close();



        }

        protected void btn_cusupdate_Click(object sender, EventArgs e)
        {
            string companyName = txt_cusname.Text;
            string customerAddress = txt_cusaddress.Text;
            string customerStreetName = txt_cusstreetname.Text;
            string customerCity = txt_cuscity.Text;
            string customerPostalCode = txt_cuspostalcode.Text;

            string customerOwnersFirstName = txt_cusowfirstname.Text;
            string customerOwnersLastName = txt_cusowlastname.Text;
            string customerOwnersEmail = txt_cusowemail.Text;
            string customerOwnersTel1 = txt_cusowtel1.Text;
            string customerOwnersTel2 = txt_cusowtel2.Text;

            string customerCpFirstName = txt_cuscpfirstname.Text;
            string customerCpLastName = txt_cuscplastname.Text;
            string customerCpJobTitle = txt_cuscpjobtitle.Text;
            string customerCpEmail = txt_cuscpemail.Text;
            string customerCpTel1 = txt_cuscptel1.Text;
            string customerCpTel2 = txt_cuscptel2.Text;


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
            sqlUpdate = "UPDATE customers SET companyname = '" + companyName + "', companyaddress = '" + customerAddress + "', streetname = '" + customerStreetName + "', city = '" + customerCity + "', postalcode = '" + customerPostalCode + "', ownersfirstname = '" + customerOwnersFirstName + "', ownerslastname = '" + customerOwnersLastName + "', ownersemail = '" + customerOwnersEmail + "', ownerstelephone1 = '" + customerOwnersTel1 + "', ownerstelephone2 = '" + customerOwnersTel2 + "', cpfirstname = '" + customerCpFirstName + "', cplasttname = '" + customerCpLastName + "', cpjobtitle = '" + customerCpJobTitle + "', cpemail = '" + customerCpEmail + "', cptelephone1 = '" + customerCpTel1 + "', cptelephone2 = '" + customerCpTel2 + "' WHERE companyname = '" +companyName+"'";
            commandUpdate = new SqlCommand(sqlUpdate, cnn);
            commandUpdate.ExecuteNonQuery();

            ///////////// Update finished ////////////////
            ///

            cnn.Close();
        }
    }
}
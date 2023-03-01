using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
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
            if (!IsPostBack)
            {
                GVbind();
            }
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

            GVbind();

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

        protected void GVbind()
        {
            String connectionstring;
            SqlConnection cnn;

            SqlDataAdapter adapter = new SqlDataAdapter();

            connectionstring = @"Data Source=DESKTOP-JQPIIAD;Initial Catalog=erpsystem;Integrated Security=True";
            cnn = new SqlConnection(connectionstring);

            cnn.Open();

            SqlCommand command = new SqlCommand("SELECT * from customers", cnn);
            SqlDataReader reader = command.ExecuteReader();

            if (reader.HasRows == true)
            {
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }
        }

        protected void OnRowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";
            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;

                    ////////////////// Get data of selected row in GridView ///////////////
                    ///
                    string customerid = row.Cells[0].Text;
                    string companyName = ""; //= row.Cells[1].Text;
                    //string customerAddress = row.Cells[2].Text;
                    /*string customerStreetName = row.Cells[3].Text;
                    string customerCity = row.Cells[4].Text;
                    string customerPostalCode = row.Cells[5].Text;

                    string customerOwnersFirstName = row.Cells[6].Text;
                    string customerOwnersLastName = row.Cells[7].Text;
                    string customerOwnersEmail = row.Cells[8].Text;
                    string customerOwnersTel1 = row.Cells[9].Text;
                    string customerOwnersTel2 = row.Cells[10].Text;

                    string customerCpFirstName = row.Cells[11].Text;
                    string customerCpLastName = row.Cells[12].Text;
                    string customerCpJobTitle = row.Cells[13].Text;
                    string customerCpEmail = row.Cells[14].Text;
                    string customerCpTel1 = row.Cells[15].Text;
                    string customerCpTel2 = row.Cells[16].Text;*/

                      String connectionString;
                      SqlConnection cnn;

                      //SqlCommand command;
                      SqlDataAdapter adapter = new SqlDataAdapter();

                      SqlDataReader dataReader;
                      SqlCommand commandReader;



                      String sqlInsert, sqlReader, output = "";

                      connectionString = @"Data Source=DESKTOP-JQPIIAD;Initial Catalog=erpsystem;Integrated Security=True";

                      cnn = new SqlConnection(connectionString);
                      cnn.Open();

                      sqlReader = "SELECT * FROM customers WHERE customerid = @customerid ";
                      commandReader = new SqlCommand(sqlReader, cnn);
                    //commandReader.Parameters.Add(new SqlParameter("@customerid", System.Data.SqlDbType.VarChar));
                    //commandReader.Parameters["@customerid"].Value = customerid;
                    commandReader.Parameters.Add(new SqlParameter("@customerid", System.Data.SqlDbType.VarChar));
                    commandReader.Parameters["@customerid"].Value = customerid;
                      var dataReader = commandReader.ExecuteReader();

                    //Console.Write(customerid);

                    while (dataReader.Read())
                    {
                        var value = (string)dataReader.GetValue(0);
                        Console.Write(value);
                        //txt_cusaddress.Text = (string)dataReader.GetValue(0);
                    }

                        


                    //lbl_cusid.Text = customerid;
                    //txt_cusname.Text = companyName;

                    //dataReader.Close();

                    //cnn.Close();
                    //txt_cusaddress.Text = customerAddress;
                    /* txt_cusstreetname.Text = customerStreetName;
                     txt_cuscity.Text = customerCity;    
                     txt_cuspostalcode.Text = customerPostalCode;

                     txt_cusowfirstname.Text = customerOwnersFirstName;
                     txt_cusowlastname.Text = customerOwnersLastName;
                     txt_cusowemail.Text = customerOwnersEmail;
                     txt_cusowtel1.Text = customerOwnersTel1;
                     txt_cusowtel2.Text = customerOwnersTel2;

                     txt_cuscpfirstname.Text = customerCpFirstName;
                     txt_cuscplastname.Text = customerCpLastName;
                     txt_cuscpjobtitle.Text = customerCpJobTitle;
                     txt_cuscpemail.Text = customerCpEmail;
                     txt_cuscptel1.Text = customerCpTel1;
                     txt_cuscptel2.Text = customerCpTel2;*/

                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
        }

    }
}
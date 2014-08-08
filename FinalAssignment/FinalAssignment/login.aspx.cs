using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Redirects user to the login if they are not authenticated
            //Server.Transfer("login.aspx", true);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Using the EF to insert the data from the form into the database
            //Step 1 - reference the entity model
            using (KilometrageEntities objEnt = new KilometrageEntities())
            {
                //Creating a new User object from the EF
                MILEAGE_USER objU;

                //Fills objects with tables from database
                objU = new MILEAGE_USER();

                //var userDetails = "";

                //var userDetails = from m in objEnt.MILEAGE_USER
                //                  where m.USERNAME == txtUsername.Text
                //                  select m.PASSWORD ;

                //string ud = userDetails.ToString();

                //if (ud == txtPassword.Text)
                //{
                    //Saves Username of the newly created user to a session variable and in a round about way authenticates you
                    Session["username"] = txtUsername.Text;
                    //redirects you to the congraulations page
                    Server.Transfer("overview.aspx", true);
                //}
                //else
                //{
                //    Server.Transfer("registration.aspx", true);
                //}
            }
        }
    }
}
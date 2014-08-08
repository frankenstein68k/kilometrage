using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class addnewmileage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                //Redirects user to the login if they are not authenticated
                //Server.Transfer("login.aspx", true);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Using the EF to inser the data from the form into the database
            //Step 1 - reference the entity model
            using (KilometrageEntities objEnt = new KilometrageEntities())
            {
                //Creating a new fill_up object from the EF
                FILL_UP objFU;

                objFU = new FILL_UP();
                objEnt.FILL_UP.Add(objFU);

                //takes the data from the form and assigns it to the object
                //Fill up related information
                objFU.CAR_ID = int.Parse(txtCarID.Text);
                objFU.LITRES_IN = decimal.Parse(txtLitresIn.Text);
                objFU.GAS_STATION_BRAND = txtGasStationBrand.Text;
 
                //invokes the save
                objEnt.SaveChanges();

                //redirects you to the congraulations page
                //Server.Transfer("congraulations.aspx", true);
            }
        }
    }
}
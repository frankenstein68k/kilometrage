using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if ((!IsPostBack) && (!String.IsNullOrWhiteSpace(Request.QueryString[Username])))
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Using the EF to inser the data from the form into the database
            //Step 1 - reference the entity model
            using (KilometrageEntities objEnt = new KilometrageEntities())
            {
                //Creating a new User object from the EF
                MILEAGE_USER objU;
                //Creating a new Car object from the EF
                CAR objC;
                
                objU = new MILEAGE_USER();
                objEnt.MILEAGE_USER.Add(objU);
                objC = new CAR();
                objEnt.CARs.Add(objC);

                //takes the data from the form and assigns it to the object
                //Human related information
                objU.USERNAME = txtUsername.Text;
                objU.FNAME = txtFirstname.Text;
                objU.LNAME = txtLastname.Text;
                objU.OUTPUT_PREF = int.Parse(rdbOutputPref.SelectedItem.Value);
                //Car related information
                objC.USERNAME = txtUsername.Text;
                objC.CAR_MAKE = txtCarMake.Text;
                objC.CAR_MODEL = txtCarModel.Text;
                objC.CAR_YEAR = int.Parse(txtCarYear.Text);
                
                //invokes the save
                objEnt.SaveChanges();
                
                //redirects you to the congraulations page
                //Server.Transfer("congraulations.aspx", true);
            }
        }

    }

}
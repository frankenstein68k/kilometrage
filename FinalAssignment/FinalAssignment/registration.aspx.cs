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
            using (KilometrageEntities1 objEnt = new KilometrageEntities1())
            {
                //Creating a new supplier object from the EF
                MILEAGE_USER objU;

                //This will be used for creating New users and Updating users
                //The if checks for Username, if it's not blank it retrieves the data
                //The else for creating new users
                //if (crazyiness)
                //{
                //}
                //else
                //{
                objU = new MILEAGE_USER();
                objEnt.MILEAGE_USER.Add(objU);
                //}

                //takes the data from the form and assigns it to the object
                objU.USERNAME = txtUsername.Text;
                objU.FNAME = txtFirstname.Text;
                objU.LNAME = txtLastname.Text;
                //can't think of a better way right now
                string rbutton = rdbOutputPref.SelectedItem.Value;
                objU.OUTPUT_PREF = int.Parse(rbutton);

                //invokes the save
                objEnt.SaveChanges();
            }
        }

    }

}
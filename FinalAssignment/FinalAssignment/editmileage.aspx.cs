using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalAssignment
{
    public partial class editmileage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Redirects user to the login if they are not authenticated
                //Server.Transfer("login.aspx", true);
                getFillUps();
            }
        }

        protected void getFillUps()
        {
            //Use EF to fill the grid
            using (KilometrageEntities objEnt = new KilometrageEntities())
            {
                var data = from FILL_UP in objEnt.FILL_UP
                           select FILL_UP;

                //bind the data to the grid
                grdFillUp.DataSource = data.ToList();
                grdFillUp.DataBind();
            }
        }

        protected void grdFill_up_RowDeleting(object sender, EventArgs e)
        {
            ////get the id of the selected record
            //int FILL_UP_ID = int.Parse(grdFillUp.DataKeys[e.RowIndex].Values["FILL_UP_ID"].ToString());

            //using (KilometrageEntities objEnt = new KilometrageEntities())
            //{

            //}
        }
    }
}
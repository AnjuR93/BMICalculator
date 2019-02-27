using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project2
{
    public partial class BMICalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Image2.Visible = false;
     
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                    /* this method finds Body Mass Index from height and weight */

                    /* Checking if any field contains null value */
                    int weightlbs = Convert.ToInt32(txtWeight.Text);
                    int heightfeet = Convert.ToInt32(txtHeightFeet.Text);
                    int heightinches = Convert.ToInt32(textHeightInches.Text);

                    double weightkg = weightlbs * 0.45; //to find weight in kilograms
                    double height = (heightfeet * 12) + heightinches; //to find height in inches only
                    double heightmeters = height * 0.025; //to find height in meters
                    double ResultBMI = weightkg / (heightmeters * heightmeters); //Body Mass Index calculation
                    lblBMI.Text = "Hi " + txtName.Text + ", your BMI is " + String.Format("{0:f}", ResultBMI); //Display BMI in textbox
                    lblBMI.Visible = true;
                    Image2.Visible = true;

            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtWeight.Text = "";
            txtHeightFeet.Text = "";
            textHeightInches.Text = "";
            txtName.Text = "";
            lblBMI.Visible = false;
        }

    }
}
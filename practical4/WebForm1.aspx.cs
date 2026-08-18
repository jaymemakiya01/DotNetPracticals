using System;

namespace practical4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ErrorName.Text = "";
            ErrorEmail.Text = "";
            ErrorContact.Text = "";
            ErrorCollege.Text = "";
            ErrorDepartment.Text = "";
            ErrorGender.Text = "";
            ErrorAddress.Text = "";
            ErrorTerms.Text = "";

            bool valid = true;

            if (string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                ErrorName.Text = "Full Name is required.";
                valid = false;
            }

            if (string.IsNullOrWhiteSpace(TextBox3.Text))
            {
                ErrorEmail.Text = "Email is required.";
                valid = false;
            }

            if (string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                ErrorContact.Text = "Contact No. is required.";
                valid = false;
            }

            if (string.IsNullOrWhiteSpace(TextBox5.Text))
            {
                ErrorCollege.Text = "College is required.";
                valid = false;
            }

            string department = "";

            if (RadioButton1.Checked)
                department = "Computer";
            else if (RadioButton2.Checked)
                department = "Mechanical";
            else if (RadioButton3.Checked)
                department = "Chemical";
            else if (RadioButton4.Checked)
                department = "Civil";
            else
            {
                ErrorDepartment.Text = "Please select a department.";
                valid = false;
            }

            string gender = "";

            if (RadioButton5.Checked)
                gender = "Male";
            else if (RadioButton6.Checked)
                gender = "Female";
            else
            {
                ErrorGender.Text = "Please select gender.";
                valid = false;
            }

            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                ErrorAddress.Text = "Address is required.";
                valid = false;
            }

            if (!CheckBox4.Checked)
            {
                ErrorTerms.Text = "Please accept Terms & Conditions.";
                valid = false;
            }

            if (!valid)
            {
                ResultPanel.Visible = false;
                return;
            }

            string skills = "";

            if (CheckBox1.Checked)
                skills += "C#, ";

            if (CheckBox2.Checked)
                skills += "Python, ";

            if (CheckBox3.Checked)
                skills += "AI, ";

            if (skills == "")
                skills = "No skills selected";
            else
                skills = skills.TrimEnd(',', ' ');

            ResultName.Text = TextBox2.Text;
            ResultEmail.Text = TextBox3.Text;
            ResultContact.Text = TextBox4.Text;
            ResultCollege.Text = TextBox5.Text;
            ResultDepartment.Text = department;
            ResultEvent.Text = DropDownList1.SelectedValue;
            ResultGender.Text = gender;
            ResultSkills.Text = skills;
            ResultAddress.Text = TextBox1.Text;

            ResultPanel.Visible = true;
        }
    }
}
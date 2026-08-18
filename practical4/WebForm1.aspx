<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="practical4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Event Registration</title>

    <style type="text/css">

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f2f2f2;
        }

        .container {
            width: 700px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px #cccccc;
        }

        .title {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #333;
            margin-bottom: 25px;
        }

        .form-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 12px;
        }

        .label-column {
            width: 35%;
            font-weight: bold;
            color: #333;
            vertical-align: top;
            padding-top: 8px;
        }

        .input-column {
            width: 65%;
        }

        .textbox {
            width: 100%;
            height: 35px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .address-box {
            width: 100%;
            height: 80px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: none;
        }

        .dropdown {
            width: 100%;
            height: 35px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .error {
            color: red;
            font-size: 13px;
            display: block;
            margin-top: 5px;
        }

        .submit-button {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px 30px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .submit-button:hover {
            background: #0056b3;
        }

        .result-panel {
            margin-top: 30px;
            padding: 20px;
            background: #f8f9fa;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .result-panel h2 {
            margin-top: 0;
            color: #007bff;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }

        .result-panel p {
            margin: 10px 0;
        }

    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="container">

        <div class="title">
            Student Event Registration
        </div>

        <table class="form-table">

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                </td>

                <td class="input-column">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>

                    <asp:Label ID="ErrorName" runat="server" CssClass="error"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label2" runat="server" Text="Email ID"></asp:Label>
                </td>

                <td class="input-column">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>

                    <asp:Label ID="ErrorEmail" runat="server" CssClass="error"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label3" runat="server" Text="Contact No."></asp:Label>
                </td>

                <td class="input-column">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>

                    <asp:Label ID="ErrorContact" runat="server" CssClass="error"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label4" runat="server" Text="College"></asp:Label>
                </td>

                <td class="input-column">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox"></asp:TextBox>

                    <asp:Label ID="ErrorCollege" runat="server" CssClass="error"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
                </td>

                <td class="input-column">

                    <asp:RadioButton ID="RadioButton1"
                        runat="server"
                        Text="Computer"
                        GroupName="Department" />

                    <br />

                    <asp:RadioButton ID="RadioButton2"
                        runat="server"
                        Text="Mechanical"
                        GroupName="Department" />

                    <br />

                    <asp:RadioButton ID="RadioButton3"
                        runat="server"
                        Text="Chemical"
                        GroupName="Department" />

                    <br />

                    <asp:RadioButton ID="RadioButton4"
                        runat="server"
                        Text="Civil"
                        GroupName="Department" />

                    <asp:Label ID="ErrorDepartment"
                        runat="server"
                        CssClass="error">
                    </asp:Label>

                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label6" runat="server" Text="Event"></asp:Label>
                </td>

                <td class="input-column">

                    <asp:DropDownList ID="DropDownList1"
                        runat="server"
                        CssClass="dropdown">

                        <asp:ListItem>Coding</asp:ListItem>
                        <asp:ListItem>Writing</asp:ListItem>
                        <asp:ListItem>Hackathon</asp:ListItem>

                    </asp:DropDownList>

                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                </td>

                <td class="input-column">

                    <asp:RadioButton ID="RadioButton5"
                        runat="server"
                        Text="Male"
                        GroupName="Gender" />

                    &nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:RadioButton ID="RadioButton6"
                        runat="server"
                        Text="Female"
                        GroupName="Gender" />

                    <asp:Label ID="ErrorGender"
                        runat="server"
                        CssClass="error">
                    </asp:Label>

                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label8" runat="server" Text="Skills"></asp:Label>
                </td>

                <td class="input-column">

                    <asp:CheckBox ID="CheckBox1"
                        runat="server"
                        Text="C#" />

                    &nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:CheckBox ID="CheckBox2"
                        runat="server"
                        Text="Python" />

                    &nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:CheckBox ID="CheckBox3"
                        runat="server"
                        Text="AI" />

                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                </td>

                <td class="input-column">

                    <asp:TextBox ID="TextBox1"
                        runat="server"
                        CssClass="address-box"
                        TextMode="MultiLine">
                    </asp:TextBox>

                    <asp:Label ID="ErrorAddress"
                        runat="server"
                        CssClass="error">
                    </asp:Label>

                </td>
            </tr>

            <tr>
                <td class="label-column">
                    <asp:Label ID="Label10" runat="server" Text="Terms"></asp:Label>
                </td>

                <td class="input-column">

                    <asp:CheckBox ID="CheckBox4"
                        runat="server"
                        Text="Terms &amp; Conditions" />

                    <asp:Label ID="ErrorTerms"
                        runat="server"
                        CssClass="error">
                    </asp:Label>

                </td>
            </tr>

            <tr>
                <td></td>

                <td>
                    <asp:Button ID="Button1"
                        runat="server"
                        Text="Submit"
                        CssClass="submit-button"
                        OnClick="Button1_Click" />
                </td>
            </tr>

        </table>

        <asp:Panel ID="ResultPanel"
            runat="server"
            Visible="false"
            CssClass="result-panel">

            <h2>Submitted Information</h2>

            <p>
                <b>Full Name:</b>
                <asp:Label ID="ResultName" runat="server"></asp:Label>
            </p>

            <p>
                <b>Email:</b>
                <asp:Label ID="ResultEmail" runat="server"></asp:Label>
            </p>

            <p>
                <b>Contact No.:</b>
                <asp:Label ID="ResultContact" runat="server"></asp:Label>
            </p>

            <p>
                <b>College:</b>
                <asp:Label ID="ResultCollege" runat="server"></asp:Label>
            </p>

            <p>
                <b>Department:</b>
                <asp:Label ID="ResultDepartment" runat="server"></asp:Label>
            </p>

            <p>
                <b>Event:</b>
                <asp:Label ID="ResultEvent" runat="server"></asp:Label>
            </p>

            <p>
                <b>Gender:</b>
                <asp:Label ID="ResultGender" runat="server"></asp:Label>
            </p>

            <p>
                <b>Skills:</b>
                <asp:Label ID="ResultSkills" runat="server"></asp:Label>
            </p>

            <p>
                <b>Address:</b>
                <asp:Label ID="ResultAddress" runat="server"></asp:Label>
            </p>

        </asp:Panel>

    </div>

</form>

</body>
</html>
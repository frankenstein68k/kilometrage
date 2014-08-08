<%@ Page Title="Kilometrage: Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="FinalAssignment.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="genCenBox">
        <h3>Tell me about yourself</h3>
        <div>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a username with no spaces"
                ControlToValidate="txtUsername" Display="Dynamic">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="NoSpacesValidator" runat="server" ErrorMessage="Please do not add spaces to your username"
                ControlToValidate="txtUsername" Display="Dynamic" ValidationExpression="[^\s]+" />
        </div>
        <div>
            <label for="txtFirstname">First Name:</label>
            <asp:TextBox ID="txtFirstname" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please senter your first name"
                ControlToValidate="txtFirstname" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="txtLastname">Last Name:</label>
            <asp:TextBox ID="txtLastname" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your first name"
                ControlToValidate="txtLastname" Display="Dynamic"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter a password"
                ControlToValidate="txtPassword" Display="Dynamic">
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a password greater than 4 characters but less than 20 and that has 1 uppercase and 1 lowercase letter plus a number"
                ControlToValidate="txtPassword" Display="Dynamic" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,20}$" />
        </div>
        <div>
            <label for="rdbOutputPref">Output Preference:</label>
            <asp:RadioButtonList ID="rdbOutputPref" runat="server">
                <asp:ListItem Text="Both - Metric AND Imperial (recomended)" Value="1" Selected="True" />
                <asp:ListItem Text="Metric ONLY - Kilometres and Litres" Value="2" />
                <asp:ListItem Text="Imperial ONLY - Miles and Gallons" Value="3" />
            </asp:RadioButtonList>
        </div>

        <h3>Now about your car</h3>
        <div>
            <label for="txtCarMake">Car Make - Honda? Ford? Volkswagen? Chevrolet</label>
            <asp:TextBox ID="txtCarMake" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ErrorMessage="Please enter the maker of your car" ControlToValidate="txtCarMake" Display="Dynamic">
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="txtCarModel">Car Model - Civic? Explorer? Passat? Impala</label>
            <asp:TextBox ID="txtCarModel" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                ErrorMessage="Please enter the model of your car" ControlToValidate="txtCarModel" Display="Dynamic">

            </asp:RequiredFieldValidator>
        </div>
        <div>
            <label for="txtCarYear">Model Year - 2014? 2002? 1964?</label>
            <asp:TextBox ID="txtCarYear" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                ErrorMessage="Please enter the model year of your car" ControlToValidate="txtCarYear" Display="Dynamic">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ErrorMessage="Please enter a model year between 1904 and 2020" MinimumValue="1904" MaximumValue="2020"
                ControlToValidate="txtCarYear" Display="Dynamic"></asp:RangeValidator>
        </div>
        <h3>Please click the save button to save and continue the registration.</h3>
        <div id="genCenButton">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </div>
    </div>
</asp:Content>

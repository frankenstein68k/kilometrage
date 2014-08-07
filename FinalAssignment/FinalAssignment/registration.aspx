<%@ Page Title="Kilometrage: Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="FinalAssignment.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3>Tell me about yourself</h3>
    <div>
        <label for="txtUsername">Username:</label>
        <asp:TextBox ID="txtUsername" runat="server" required="true" />
    </div>
    <div>
        <label for="txtFirstname">First Name:</label>
        <asp:TextBox ID="txtFirstname" runat="server" required="true" />
    </div>
    <div>
        <label for="txtLastname">Last Name:</label>
        <asp:TextBox ID="txtLastname" runat="server" required="true" />
    </div>
    <div>
        <label for="rdbOutputPref">Output Preference:</label>
        <asp:RadioButtonList ID="rdbOutputPref" runat="server">
            <asp:ListItem Text="Both - Metric AND Imperial (recomended)" Value="1" selected="True" />
            <asp:ListItem Text="Metric ONLY - Kilometres and Litres" Value="2" />
            <asp:ListItem Text="Imperial ONLY - Miles and Gallons" Value="3" />
        </asp:RadioButtonList>
    </div>

    <h3>Now about your car</h3>
    <div>
        <label for="txtCarMake">Car Make - Honda? Ford? Volkswagen? Chevrolet</label>
        <asp:TextBox ID="txtCarMake" runat="server" required="true"/>
    </div>
    <div>
        <label for="txtCarModel">Car Model - Civic? Explorer? Passat? Impala</label>
        <asp:TextBox ID="txtCarModel" runat="server" required="true" />
    </div>
    <div>
        <label for="txtCarYear">Model Year - 2014? 2002? 1964?</label>
        <asp:TextBox ID="txtCarYear" runat="server" required="true"/>
        <!--<asp:RegularExpressionValidator ID="txtCarYearChecker" ControlToValidate="txtCarYear" runat="server" ErrorMessage="Only numbers please!" ValidationExpression="\d+"></asp:RegularExpressionValidator>-->

    </div>
    Please click the save button to save and continue the registration.
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"/>
</asp:Content>

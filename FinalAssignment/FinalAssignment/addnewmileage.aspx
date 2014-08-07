<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addnewmileage.aspx.cs" Inherits="FinalAssignment.addnewmileage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Add your new mileage to your mileage history</h3>
    <div>
        <label for="txtCarID">Car ID: TESTING ONLY!!!</label>
        <asp:TextBox ID="txtCarID" runat="server" />
    </div>
    <div>
        <label for="txtLitresIn">Litres in</label>
        <asp:TextBox ID="txtLitresIn" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You need enter an amount of fuel in litres"
            ControlToValidate="txtLitresIn" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter an amount of fuel between 1 and 200 litres"
            MinimumValue="1" MaximumValue="200" ControlToValidate="txtLitresIn" Display="Dynamic" Type="Double">
        </asp:RangeValidator>
    </div>
    <div>
        <label for="txtGasStationBrand">Gas Station Brand</label>
        <asp:TextBox ID="txtGasStationBrand" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the name of the gas station you visited"
            ControlToValidate="txtGasStationBrand" Display="Dynamic">
        </asp:RequiredFieldValidator>
    </div>
    <div>
        <h3>Please click the save button to save your fuel information.</h3>
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    </div>
</asp:Content>

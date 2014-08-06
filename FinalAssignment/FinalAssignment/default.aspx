<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FinalAssignment.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome to Kilometrage - the mileage and fuel tracking website</h2>

    <h3>What do I need to do?</h3>
    <ol>
        <li>Find the capacity of your car fuel tank</li>
        <li>Always fill the tank up always to full</li>
        <li>Pay for the fuel</li>
        <li>Collect the receipt</li>
        <li>Write your current odometer reading on your fuel receipt</li>
        <li>Create an account on Kilometrage</li>
        <li>Input ever fill up with your odometer reading and units of fuel added</li>
        <li>Get your mileage after two fill-ups</li>
        <li>Continue to collect readings to see trends in fuel consumption</li>
    </ol>
    <h3>How does it work?</h3>
    <p>By figuring out what your fuel tank capacity you are setting an limit on the amount of fuel your car can take. 
        This fixed amount will only decrease as you drive. When you have two receipts you can tell how far you have travelled
        by subtracting the two odometer readings. Also since you started with a full tank and know how much fuel you put in
        you can figure subtract fuel added from the tank capacity to get the amount of fuel used.</p>
    <p>Now that you know the distance travelled and the fuel consumed you can calculat your mileage, or we like to say your KILOMETRAGE!</p>

    <h4>Join the site</h4>

    <h4>Already a member?</h4>

    <image src="http://backtothewild.com/BTTWImages/Made_With_a_Mac.gif" alt="Old School Son!"></image>
</asp:Content>

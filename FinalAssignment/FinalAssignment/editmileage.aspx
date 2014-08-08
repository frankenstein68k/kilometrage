<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editmileage.aspx.cs" Inherits="FinalAssignment.editmileage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdFillUp" runat="server" AutoGenerateColumns="false" DataKeyNames="FILL_UP_ID" OnRowDeleting="grdFill_up_RowDeleting">
        <Columns>
            <asp:BoundField DataField="LITRES_IN" HeaderText="Fuel Added" />
            <asp:BoundField DataField="GAS_STATION_BRAND" HeaderText="Gas Station" />
        </Columns>
    </asp:GridView>
</asp:Content>

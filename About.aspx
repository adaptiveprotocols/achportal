<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AdaptivaClientPortal.About" %>

<%@ Register src="./CustomControls/ACHTimeSelector.ascx" tagname="ACHTimeSelector" tagprefix="uc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.<asp:Calendar ID="Calendar1" runat="server" Height="71px" Width="152px">
        <DayHeaderStyle Font-Size="X-Small" />
        <DayStyle Font-Size="X-Small" />
        <NextPrevStyle Font-Size="X-Small" />
        <OtherMonthDayStyle Font-Size="X-Small" />
        <SelectedDayStyle Font-Size="X-Small" />
        <SelectorStyle Font-Size="X-Small" />
        <TitleStyle Font-Size="X-Small" />
        <WeekendDayStyle Font-Size="X-Small" />
        </asp:Calendar>
        <uc1:ACHTimeSelector ID="ACHTimeSelector1" runat="server" />
    </h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>

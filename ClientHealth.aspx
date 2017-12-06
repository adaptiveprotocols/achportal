<%@ Page Title="Adaptiva Portal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientHealth.aspx.cs" Inherits="AdaptivaClientPortal._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register TagPrefix="MD" TagName="ACHTile" Src="CustomControls/ACHTile.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="j-row vertical-center-row align-bottom search">
        <div class="j-col j-col-10 search-bar">
            <asp:TextBox ID="tbxSearch" runat="server" CssClass="search-bar--input"></asp:TextBox>
        </div>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="j-col j-col-2 button search--button" />
    </div>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:Button ID="btnPageRefresh" runat="server" Text="Button" OnClick="btnPageRefresh_Click" Style="display: none;" />
            <asp:UpdateProgress runat="server">
                <ProgressTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/progress.gif" CssClass="health-check--loading" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div class="j-row">
                <asp:Table ID="tblDashboard" CssClass="checks-table" runat="server">
                </asp:Table>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnPageRefresh" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

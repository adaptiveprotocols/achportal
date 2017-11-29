<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdaptivaClientPortal._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<%@ Register TagPrefix="MD" TagName="ACHTile" Src="ACHTile.ascx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div class="j-row vertical-center-row align-bottom search">
    <div class="j-col j-col-10 search-bar">
      <asp:TextBox ID="tbxSearch" runat="server" cssClass="search-bar--input"></asp:TextBox>
	  </div>
    <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" cssClass="j-col j-col-2 button search--button" />
  </div>
  <asp:UpdatePanel runat="server">
    <ContentTemplate>
      <asp:Button ID="btnPageRefresh" runat="server" Text="Button" OnClick="btnPageRefresh_Click" style="display:none;" />
      <asp:UpdateProgress runat="server">
        <ProgressTemplate>
          <asp:Image ID="Image1" runat="server" ImageUrl="~/progress.gif" />
        </ProgressTemplate>
      </asp:UpdateProgress>
      <div class="j-row">
        <asp:Table ID="tblDashboard" cssClass="checks-table" runat="server">
        </asp:Table>
      </div>
    </ContentTemplate>
    <Triggers>
      <asp:AsyncPostBackTrigger ControlID="btnPageRefresh" EventName="Click" />
    </Triggers>
  </asp:UpdatePanel>
</asp:Content>

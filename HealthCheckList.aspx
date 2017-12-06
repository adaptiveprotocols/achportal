<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HealthCheckList.aspx.cs" Inherits="AdaptivaClientPortal.HealthCheckList" %>

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
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/progress.gif" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div class="j-row">
                <div class="j-row j-col j-col-12">
                    <h3><%=Title%></h3>
                </div>
            </div>
            <div class="j-row">
                <asp:Table ID="tblDashboard" runat="server" CssClass="health-checks-table">
                </asp:Table>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnPageRefresh" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

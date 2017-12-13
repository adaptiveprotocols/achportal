<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HealthCheckList.aspx.cs" Inherits="AdaptivaClientPortal.HealthCheckList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:Button ID="btnPageRefresh" runat="server" Text="Button" OnClick="btnPageRefresh_Click" Style="display: none;" />
            <asp:UpdateProgress runat="server">
                <ProgressTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/progress.gif" />
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div class="j-row" style="margin: 2.618rem 0;">
                <div class="j-row j-col j-col-6">
                    <h3><%=Title%></h3>
                </div>
                <div class="j-col j-col-6 vertical-center-row align-bottom">
                    <div class="j-col j-col-9 search-bar">
                        <asp:TextBox ID="tbxSearch" runat="server" CssClass="search-bar--input"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="j-col j-col-3 button search--button" />
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

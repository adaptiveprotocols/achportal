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

                <h1 style="font-size: 2.618rem; font-weight: bolder; margin: 2.618rem 0; display: block;">
                    <asp:ImageButton ID="btnBack" CssClass="back-button" OnClientClick="window.location='ClientHealth.aspx';return false;" runat="server" ImageUrl="~/Images/Back.png" Height="30px" />
                    <asp:Label ID="lblHeading" runat="server" Text=""></asp:Label>
                </h1>

                <div class="j-row j-col j-col-6">
                    <h3>
                        <asp:Label ID="lblSubHeading" runat="server" Text=""></asp:Label>
                    </h3>
                </div>
                <asp:Panel ID="panSearch" DefaultButton="btnSearch" runat="server">
                    <div class="j-col j-col-6 vertical-center-row align-bottom">
                        <div class="j-col j-col-9 search-bar">
                            <asp:TextBox ID="tbxSearch" runat="server" placeholder="Filter health checks" CssClass="search-bar--input"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSearch" runat="server" Text="Filter" OnClick="btnSearch_Click" CssClass="j-col j-col-3 button search--button" />
                    </div>
                </asp:Panel>
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

<%@ Page Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="HealthCheckList.aspx.cs" Inherits="AdaptivaClientPortal.HealthCheckList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>        
        <asp:TextBox ID="tbxSearch" runat="server" OnInit="tbxSearch_OnInit" ></asp:TextBox>        
        <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />    
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
                <div class="j-row j-col j-col-12">
                    <h3><%=Title%></h3>
                </div>
            </div>
            <div class="j-row">
                    <asp:Table ID="tblDashboard" runat="server" cssClass="health-checks-table">
                    </asp:Table>
            </div>
        </ContentTemplate>
        <Triggers>
           <asp:AsyncPostBackTrigger ControlID="btnPageRefresh" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>




</asp:Content>

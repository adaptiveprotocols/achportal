<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ACHTile.ascx.cs" Inherits="AdaptivaClientPortal.ACHTile" %>
<a class="health-check" id="aRef" href="<%=PageLoadURL%>?id=<%=ID%>">
    <asp:Panel ID="Panel1" runat="server" BackColor="White">
        <asp:Table ID="Table1" runat="server" CssClass="health-check--icon">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Image ID="imgHealthLogo" runat="server" ImageUrl="../Images/Health_Check.png" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div class="health-check--title" style="text-overflow: ellipsis; overflow: hidden;">
            <asp:Label runat="server" Text="Title goes here!" ID="lblTitle"></asp:Label>
            <div class="health-check--counter">
                <asp:Label ID="lblNoOfChecks" runat="server" Text="0" Font-Overline="False"></asp:Label>
            </div>
        </div>
    </asp:Panel>
</a>
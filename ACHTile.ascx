<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ACHTile.ascx.cs" Inherits="AdaptivaClientPortal.ACHTile" %>
<a id="aRef" href="<%=PageLoadURL%>?id=<%=ID%>">
    <asp:Panel ID="Panel1" runat="server" BackColor="White">
	<asp:Table ID="Table1" runat="server" Width="100%" cssClass="checks--icon" HorizontalAlign="Center">
                <asp:TableRow>
                    <asp:TableCell Width="100px">
                        <asp:Image ID="imgHealthLogo" runat="server" ImageUrl="~/Health_Check.png" Height="100" Width="100" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
	<div class="checks--title" style="text-overflow: ellipsis; overflow: hidden;">
            <asp:Label runat="server" Text="Title goes here!" ID="lblTitle" ></asp:Label>
		<div class="checks--counter">
	    		<asp:Label ID="lblNoOfChecks" runat="server" Text="0" Font-Overline="False"></asp:Label>
		</div>
        </div>
            
    </asp:Panel>
</a>

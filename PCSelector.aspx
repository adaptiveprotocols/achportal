<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="PCSelector.aspx.cs" Inherits="AdaptivaClientPortal.PCSelector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select a Device</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;width:100%;height:100%;">
        
        <asp:Label ID="lblSearch" runat="server" Text="Search: "></asp:Label>
        <asp:TextBox ID="tbxSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <br />
        <asp:Table ID="tblPCSelector" runat="server" HorizontalAlign="Center">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Hostname</asp:TableHeaderCell>
                <asp:TableHeaderCell>IP Address</asp:TableHeaderCell>
                <asp:TableHeaderCell>Last User</asp:TableHeaderCell>
                <asp:TableHeaderCell>Office</asp:TableHeaderCell>
                <asp:TableHeaderCell>Office Type</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </div>
    </form>
</body>

    <script type="text/javascript">
        var selectedPC;
        function SetName(pcname)
        {

            if (window.opener != null && !window.opener.closed)
            {
                var txtbox = window.opener.document.getElementById('<%= Request["t"] %>').value = pcname;
            }
            window.close();
        }</script>

</html>

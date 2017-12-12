<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="PCSelector.aspx.cs" Inherits="AdaptivaClientPortal.PCSelector" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Select a Device</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body style="padding:0">
    <form id="form1" runat="server">
    <div style="text-align: center;width:100%;height:100%;">
      <div class="pc-search">
        <asp:TextBox ID="tbxSearch" CssClass="pc-search--box" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" CssClass="pc-search--btn button" runat="server" Text="Search" OnClick="btnSearch_Click" />
      </div>
      <asp:Table ID="tblPCSelector" CssClass="pc-list" runat="server" HorizontalAlign="Center">
        <asp:TableHeaderRow CssClass="pc-list--head">
          <asp:TableHeaderCell>Hostname</asp:TableHeaderCell>
          <asp:TableHeaderCell>IP Address</asp:TableHeaderCell>
          <asp:TableHeaderCell>Last User</asp:TableHeaderCell>
          <asp:TableHeaderCell>Office</asp:TableHeaderCell>
          <asp:TableHeaderCell>Office Type</asp:TableHeaderCell>
        </asp:TableHeaderRow>
      </asp:Table>
    </div>
    </form>
    <script type="text/javascript">
        var selectedPC;
        function SetName(pcname) {
          if (window.opener != null && !window.opener.closed) {
                var txtbox = window.opener.document.getElementById('<%= Request["t"] %>').value = pcname;
            }
            window.close();
        }
      </script>
</body>
</html>
<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AdaptivaClientPortal.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>
   
    
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>

    <asp:Button ID="Button1" OnClientClick="SelectName();" runat="server" Text="Button" />
    
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <script type="text/javascript">
        var popup;
        function SelectName()
        {
            var textboxvalue = '<%= TextBox1.ClientID %>';
            popup = window.open("PCSelector.aspx?t=" + textboxvalue, "newwindow", "width=800,height=600,scrollbars=1,resizable=1");
            popup.focus();
        }
    </script>


</asp:Content>

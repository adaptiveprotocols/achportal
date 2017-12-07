<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebWakeup.aspx.cs" Inherits="AdaptivaClientPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="position: relative; width: 100%; height: 300px;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <div id="PCOn" style="position: absolute; left: 0px; top: 0px;">
                    <asp:Image ID="imgPCOn" runat="server" ImageUrl="~/Images/Computer_On.jpg" />
                </div>

                <div id="PCOff" style="position: absolute; left: 800px; top: 0px;">
                    <asp:Image ID="imgPCOff" runat="server" ImageUrl="~/Images/Computer_Off.jpg" />
                    <asp:Label ID="lblName" runat="server" Text="Host Name:" Style="position: absolute; left: 108px; top: 148px; color: white; font-size: 10px"></asp:Label>
                    <asp:Label ID="lblStatus" runat="server" Text="Unknown" Style="position: absolute; left: 150px; top: 70px; font-size: 15px"></asp:Label>
                </div>

                <div id="Callout" style="position: absolute; text-align: center; left: 430px; top: 24px; height: 200px; width: 300px; background-size: 100%; background-image: url('Images/Callout.png'); background-repeat: no-repeat; padding: 10px 10px 10px 10px">
                    Please enter a valid Host Name or IP address bellow for the device you wish to check status or Wakeup.
                    <br />
                    <br />
                    <asp:TextBox ID="tbxHostName" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnStatus" runat="server" Width="120px" Text="Check Status" OnClientClick="HideDiv('Callout');SetHostName();" OnClick="btnStatus_Click" />
                    <asp:Button ID="btnWakeup" runat="server" Width="120px" Text="Wakeup" OnClientClick="HideDiv('Callout');SetHostName();" OnClick="btnWakeup_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblFailureReason" runat="server"></asp:Label>
                </div>

            </ContentTemplate>
            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="btnWakeup" EventName="Click" />

            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>

                <div style="position: absolute; left: 294px; top: 10px; width: 568px;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/net_traffic.gif" Height="88px" Width="567px" />
                </div>

            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>

    <script type="text/javascript">

        function HideDiv(pId) {
            document.getElementById(pId).style.visibility = "Hidden";
        }

        function SetHostName() {
            document.getElementById('<%=lblName.ClientID %>').innerHTML = "Host Name: " + document.getElementById('<%=tbxHostName.ClientID %>').value;
        }
    </script>
</asp:Content>

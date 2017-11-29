<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PerformHealthCheck.aspx.cs" Inherits="AdaptivaClientPortal.PerformHealthCheck" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:Button ID="btnPageRefresh" runat="server" Text="Button" OnClick="btnPageRefresh_Click" Style="display: none;" />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnPageRefresh" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <div class="j-row">
        <h3 style="font-size: 36px; font-weight: bolder;"><%=Title%></h3>
    </div>

    <asp:UpdateProgress runat="server" AssociatedUpdatePanelID="UpdatePanel2">
        <ProgressTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/progress.gif" />
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div class="j-row">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Table ID="Table2" Width="100%" runat="server">
                    <asp:TableRow CssClass="j-row">
                        <asp:TableCell CssClass="j-col j-col-8 health-check--form">
                            <asp:Panel ID="PnlForm" runat="server" Style="padding: 10px 10px 10px 10px" GroupingText="Data Form" Visible="false">
                                <asp:Table ID="tblDataForm" CssClass="checks-data-forms" runat="server"></asp:Table>
                                <asp:PlaceHolder ID="plhForm" runat="server"></asp:PlaceHolder>
                                <br />
                            </asp:Panel>
                        </asp:TableCell>
                        <asp:TableCell CssClass="j-col j-col-3 push-1 health-check--results">
                            <div class="j-row">
                                <asp:Panel ID="pnlResults" runat="server" Style="padding: 10px 10px 10px 10px" GroupingText="Results" Visible="false">
                                    <asp:Table ID="tblHealthCheckResults" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell>Health Check:</asp:TableCell>
                                            <asp:TableCell>
                                                <asp:UpdateProgress runat="server" ID="PageUpdateProgress" AssociatedUpdatePanelID="UpdatePanel1">
                                                    <ProgressTemplate>
                                                        <div style="position: absolute">
                                                            <asp:Image ID="progress1" runat="server" ImageUrl="~/progress.gif" Width="40" Height="40" Visible="true" />
                                                        </div>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                                <asp:Image ID="ImgHealthCheck" runat="server" ImageUrl="~/Information.png" Width="40" Height="40" Visible="true" />
                                            </asp:TableCell>
                                            <asp:TableCell></asp:TableCell>
                                            <asp:TableCell RowSpan="3">
                                                <asp:Image ID="imgStatus" runat="server" ImageUrl="~/Success.png" Width="80" Height="80" CssClass="hidden" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>Remediation:</asp:TableCell>
                                            <asp:TableCell>
                                                <asp:UpdateProgress runat="server" ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel1">
                                                    <ProgressTemplate>
                                                        <div style="position: absolute">
                                                            <asp:Image ID="progress2" runat="server" ImageUrl="~/progress.gif" Width="40" Height="40" Visible="true" />
                                                        </div>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                                <asp:Image ID="ImgRemediation" runat="server" ImageUrl="~/Information.png" Width="40" Height="40" Visible="true" />
                                            </asp:TableCell>
                                            <asp:TableCell></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>Post Remediation:</asp:TableCell>
                                            <asp:TableCell>
                                                <asp:UpdateProgress runat="server" ID="UpdateProgress3" AssociatedUpdatePanelID="UpdatePanel1">
                                                    <ProgressTemplate>
                                                        <div style="position: absolute">
                                                            <asp:Image ID="progress3" runat="server" ImageUrl="~/progress.gif" Width="40" Height="40" Visible="true" />
                                                        </div>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                                <asp:Image ID="ImgPostremediation" runat="server" ImageUrl="~/Information.png" Width="40" Height="40" Visible="true" />
                                            </asp:TableCell>
                                            <asp:TableCell></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:Label ID="lblRunOn" runat="server" Text="Run On:"></asp:Label></asp:TableCell>
                                            <asp:TableCell>
                                                <asp:TextBox ID="tbxHost" runat="server" OnInit="tbxHost_Init"></asp:TextBox></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:Label ID="lblAutoRemediate" runat="server" Text="Auto Remediate:"></asp:Label></asp:TableCell>
                                            <asp:TableCell>
                                                <asp:CheckBox ID="CbxAutoRemediate" runat="server" Checked="True" /></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:Button ID="btnRunHealthCheck" runat="server" Text="Run" OnClientClick="hideImage();" OnClick="btnRunHealthCheck_Click" CssClass="run-check-btn" /></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </asp:Panel>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnRunHealthCheck" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>


    <script type="text/javascript">
        function hideImage() {
            document.getElementById("<%=imgStatus.ClientID%>").style.display = 'none';
        }
    </script>

</asp:Content>

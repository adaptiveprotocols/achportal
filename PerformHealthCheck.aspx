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
        <h1 style="font-size: 2.618rem; font-weight: bolder; margin: 2.618rem 0; display: block;">
            <asp:ImageButton ID="btnBack" CssClass="back-button" OnClientClick="JavaScript:window.history.back(1);return false;" runat="server" ImageUrl="~/Images/Back.png" Height="30px"/><%=Title%>
            </h1>
    </div>

    <asp:UpdateProgress runat="server" AssociatedUpdatePanelID="UpdatePanel2">
        <ProgressTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/progress.gif" CssClass="health-check--loading" />
        </ProgressTemplate>
    </asp:UpdateProgress>

    <div class="j-row">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Table ID="Table2" Width="100%" runat="server">
                    <asp:TableRow CssClass="j-row">
                        <asp:TableCell CssClass="j-col j-col-8 health-check--form">
                            <asp:Panel ID="PnlForm" runat="server" GroupingText="Data Form" Visible="false">
                                <asp:Table ID="tblDataForm" CssClass="checks-data-forms" runat="server"></asp:Table>
                                <asp:PlaceHolder ID="plhForm" runat="server"></asp:PlaceHolder>
                                <br />
                            </asp:Panel>
                        </asp:TableCell>
                        <asp:TableCell CssClass="j-col j-col-4 health-check--results">
                            <div class="j-row">
                                <asp:Panel ID="pnlResults" runat="server" GroupingText="Results" Visible="false">
                                    <asp:Table ID="tblHealthCheckResults" runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell>Health Check:</asp:TableCell>
                                            <asp:TableCell>
                                                <asp:UpdateProgress runat="server" ID="PageUpdateProgress" AssociatedUpdatePanelID="UpdatePanel1">
                                                    <ProgressTemplate>
                                                        <div style="position: absolute; right: 0;">
                                                            <asp:Image ID="progress1" runat="server" ImageUrl="~/Images/progress.gif" Width="26" Height="26" Visible="true" />
                                                        </div>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                                <asp:Image ID="ImgHealthCheck" runat="server" ImageUrl="~/Images/information.svg" Width="26" Height="26" Visible="true" />
                                            </asp:TableCell>
                                            <asp:TableCell CssClass="health-check--msg"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>Remediation:</asp:TableCell>
                                            <asp:TableCell>
                                                <asp:UpdateProgress runat="server" ID="UpdateProgress2" AssociatedUpdatePanelID="UpdatePanel1">
                                                    <ProgressTemplate>
                                                        <div style="position: absolute; right: 0;">
                                                            <asp:Image ID="progress2" runat="server" ImageUrl="~/Images/progress.gif" Width="26" Height="26" Visible="true" />
                                                        </div>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                                <asp:Image ID="ImgRemediation" runat="server" ImageUrl="~/Images/information.svg" Width="26" Height="26" Visible="true" />
                                            </asp:TableCell>
                                            <asp:TableCell CssClass="health-check--msg"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>Post Remediation:</asp:TableCell>
                                            <asp:TableCell>
                                                <asp:UpdateProgress runat="server" ID="UpdateProgress3" AssociatedUpdatePanelID="UpdatePanel1">
                                                    <ProgressTemplate>
                                                        <div style="position: absolute; right: 0;">
                                                            <asp:Image ID="progress3" runat="server" ImageUrl="~/Images/progress.gif" Width="26" Height="26" Visible="true" />
                                                        </div>
                                                    </ProgressTemplate>
                                                </asp:UpdateProgress>
                                                <asp:Image ID="ImgPostremediation" runat="server" ImageUrl="~/Images/information.svg" Width="26" Height="26" Visible="true" />
                                            </asp:TableCell>
                                            <asp:TableCell CssClass="health-check--msg"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow CssClass="run-on">
                                            <asp:TableCell>
                                                <asp:Label ID="lblRunOn" runat="server" Text="Run On:"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell CssClass="run-on--input j-col j-col-8 wrap">
                                                <asp:TextBox ID="tbxHost" runat="server" OnInit="tbxHost_Init"></asp:TextBox>
                                            </asp:TableCell>
                                            <asp:TableCell CssClass="run-on--lookup j-col j-col-3 push-1 wrap">
                                                <asp:ImageButton ID="imgBtnPCLookup" Width="32" Height="32" runat="server" OnClientClick="SelectName();" ImageUrl="~/Images/pclookup_blue.png" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:Label ID="lblAutoRemediate" runat="server" Text="Auto Remediate:"></asp:Label>
                                            </asp:TableCell>
                                            <asp:TableCell>
                                                <asp:CheckBox ID="CbxAutoRemediate" runat="server" Checked="True" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow CssClass="run-check">
                                            <asp:TableCell>
                                                <asp:Button ID="btnRunHealthCheck" runat="server" Text="Run" OnClick="btnRunHealthCheck_Click" CssClass="run-check-btn" />
                                            </asp:TableCell>
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
        (function() {

            var added = function(event) {
                if (event.animationName == 'nodeInserted') {
                  
                    var rows = $('#MainContent_Composite1_tblForm').find('tr'),
                        timePicker = $('[id*="TimePicker"]'),
                        numContainer = $('.ajax__numericupdown_container');
                        
                    rows.each(function () {
                        var cells = $(this).children('td'),
                            allCells = $(this).closest('.Adaptiva_Group').find('td');
                        if (cells.length > 2) { // if grid layout
                            allCells.addClass('j-col j-col-3 wrap');
                        } else if (cells.length < 2) {
                            cells.addClass('j-col j-col-12 wrap');
                        } else if (cells.length > 6){
                            cells.addClass('j-col j-col-2 wrap');
                        } else {
                            $(this).find('td:first-child')
                              .addClass('j-col j-col-4 wrap')
                              .next()
                              .addClass('j-col j-col-8');
                        }
                        if (cells.children('input[type="radio"]')) {
                            $(this).find('input[type="radio"]')
                              .parent('td')
                              .removeClass('j-col-3 j-col-9')
                              .addClass('j-col j-col-6 wrap has-radio');
                        }
                        if ($(this).closest('table').is('.ajax__numericupdown_container')) {
                            cells.removeClass('j-col j-col-2 j-col-3 j-col-4 j-col-8 j-col-9 j-col-12 wrap');
                        }
                    });
                    // Strip style attribute from certain elements
                    if (numContainer.length > 0) {
                      numContainer.each(function(){
                        $(this).removeAttr('style').parent('div').removeAttr('style');
                        $(this).find('td, input').removeAttr('style');
                      });
                    }
                    if (timePicker.length > 0) {
                      timePicker.find('*').removeAttr('style');
                    }
                    
                }
            };
            
            document.addEventListener('animationstart', added, false);
            document.addEventListener('MSAnimationStart', added, false);
            document.addEventListener('webkitAnimationStart', added, false);

        })();

        var popup;
        function SelectName() {
            var textboxvalue = '<%= tbxHost.ClientID %>';
            popup = window.open("PCSelector.aspx?t=" + textboxvalue, "PCSelector", "width=800,height=600,scrollbars=1,resizable=1");
            popup.focus();
        }
    </script>

</asp:Content>

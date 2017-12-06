<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ACHTimeSelector.ascx.cs" Inherits="AdaptivaClientPortal.ACHTimeSelector" %>

<asp:Panel ID="TimePicker" runat="server">
    <asp:TextBox ID="tbxUpDownHour" runat="server" Text="0" OnTextChanged="Textbox_TextChanged" Width="20px"></asp:TextBox>
    <asp:TextBox ID="tbxUpDownMinute" runat="server" Text="0" OnTextChanged="Textbox_TextChanged" Width="20px"></asp:TextBox>
    <asp:TextBox ID="tbxUpDownSecond" runat="server" Text="0" OnTextChanged="Textbox_TextChanged" Width="20px"></asp:TextBox>
    <asp:DropDownList ID="ddlAMPM" runat="server">
        <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
        <asp:ListItem Text="PM" Value="PM"></asp:ListItem>
    </asp:DropDownList>
</asp:Panel>
<ajaxToolkit:NumericUpDownExtender ID="nudHour" runat="server" TargetControlID="tbxUpDownHour" Maximum="12" Minimum="1" />
<ajaxToolkit:NumericUpDownExtender ID="nudMin" runat="server" TargetControlID="tbxUpDownMinute" Minimum="0" Maximum="59" />
<ajaxToolkit:NumericUpDownExtender ID="nudSec" runat="server" TargetControlID="tbxUpDownSecond" Minimum="0" Maximum="59" />

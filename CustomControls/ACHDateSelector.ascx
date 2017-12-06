<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ACHDateSelector.ascx.cs" Inherits="AdaptivaClientPortal.ACHDateSelector" %>

<asp:TextBox ID="tbxDate" runat="server" CssClass="DRTextBox" ReadOnly="True" OnTextChanged="tbxDate_TextChanged"></asp:TextBox>
<ajaxToolkit:CalendarExtender ID="CAL" runat="server" TargetControlID="tbxDate" CssClass="DRCalendar" Format="yyyy-MM-dd" TodaysDateFormat="yyyy-MM-dd" />


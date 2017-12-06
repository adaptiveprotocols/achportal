<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ACHUpDownControl.ascx.cs" Inherits="AdaptivaClientPortal.ACHUpDownControl" %>


<asp:TextBox ID="tbxUpDown" runat="server" Text="0" OnTextChanged="tbxUpDown_TextChanged"></asp:TextBox>
<ajaxToolkit:NumericUpDownExtender ID="nud" runat="server" TargetControlID="tbxUpDown" />



<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ACHSlider.ascx.cs" Inherits="AdaptivaClientPortal.ACHSlider" %>
<asp:Label ID="lblSlider" Text="0" runat="server" ></asp:Label>
<asp:TextBox ID="tbxSliderValue" runat="server" AutoPostBack="True"></asp:TextBox>
<ajaxToolkit:SliderExtender ID="SliderExt" runat="server" TargetControlID="tbxSliderValue" BoundControlID="lblSlider" />
    
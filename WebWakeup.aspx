﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebWakeup.aspx.cs" Inherits="AdaptivaClientPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
      <h1>Web Wakeup</h1>
      <p>Check for status and wake machines from the web</p>
    </div>
    <div class="j-row" style="position: relative;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div id="PCOn" class="j-col j-col-3 adaptiva-server">
                    <svg height="216" width="180" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 780.41 936.37">
                        <defs>
                            <style>
                                .ada_srv--1{fill: #9cbfe3;}.ada_srv--2{fill: #6ba0d4;}.ada_srv--3 {fill: #cedff1;}.ada_srv--4{fill: #fff;}.ada_srv--5{fill: #06488a;}.ada_srv--6{fill: #ed4e39;}.ada_srv--7{fill: #3980c6;}.ada_srv--8{fill: #0860b8;}
                            </style>
                        </defs><title>adaptiva_server</title><g id="Layer_2" data-name="Layer 2"><g id="Blue"><rect class="ada_srv--1" x="31.49" y="13.27" width="717.43" height="868.23" /><path class="ada_srv--2" d="M29.11,754.73,25.35,884H748.47l3.75-868h-6C696.55,393,404.75,694.76,29.11,754.73Z" /><rect class="ada_srv--3" x="305.76" y="36.36" width="426.85" height="136.56" rx="5.33" ry="5.33" /><path class="ada_srv--1" d="M731.81,167.6v-76c-6,27.63-12.91,55.42-21.68,82.42h17.15C730.22,174,731.81,170.54,731.81,167.6Z" /><polygon class="ada_srv--4" points="285.88 119.36 51.22 119.36 51.22 119.36 285.88 119.36 285.88 119.36" /><path class="ada_srv--5" d="M56.5,36.36h224a5.33,5.33,0,0,1,5.33,5.33v77.76a0,0,0,0,1,0,0H51.17a0,0,0,0,1,0,0V41.69a5.33,5.33,0,0,1,5.33-5.33Z" /><path class="ada_srv--3" d="M51.22,119.36H285.88a0,0,0,0,1,0,0V167.6a5.33,5.33,0,0,1-5.33,5.33h-224a5.33,5.33,0,0,1-5.33-5.33V119.36A0,0,0,0,1,51.22,119.36Z" /><circle class="ada_srv--5" cx="672.54" cy="104.64" r="36.14" /><circle class="ada_srv--6" cx="672.54" cy="104.64" r="25.56" /><rect class="ada_srv--2" x="479.29" y="89.93" width="125.13" height="29.43" rx="5.63" ry="5.63" /><rect class="ada_srv--1" x="335.21" y="89.93" width="125.48" height="29.43" rx="5.63" ry="5.63" /><path class="ada_srv--7" d="M65.53,70.33S82,49,103.31,70.3s34.23,8.38,42.63,0,27.6-32.2,59.79,0,67.08-2.44,67.08-2.44V104h-207Z" /><circle class="ada_srv--2" cx="69.58" cy="146.14" r="6.69" /><circle class="ada_srv--2" cx="168.55" cy="146.14" r="6.69" /><circle class="ada_srv--2" cx="267.52" cy="146.14" r="6.69" /><rect class="ada_srv--3" x="305.76" y="190.61" width="426.85" height="136.56" rx="5.33" ry="5.33" /><path class="ada_srv--1" d="M727.28,327c2.94,0,4.53-2.22,4.53-5.16V195.94c0-2.95-1.59-5.94-4.53-5.94h-23.2c-16.83,48-37.7,93-62.2,137Z" /><polygon class="ada_srv--4" points="285.88 273.6 51.22 273.6 51.22 273.6 285.88 273.6 285.88 273.6" /><path class="ada_srv--5" d="M56.5,190.61h224a5.33,5.33,0,0,1,5.33,5.33v77.76a0,0,0,0,1,0,0H51.17a0,0,0,0,1,0,0V195.94a5.33,5.33,0,0,1,5.33-5.33Z" /><path class="ada_srv--3" d="M51.22,273.6H285.88a0,0,0,0,1,0,0v48.24a5.33,5.33,0,0,1-5.33,5.33h-224a5.33,5.33,0,0,1-5.33-5.33V273.6A0,0,0,0,1,51.22,273.6Z" /><circle class="ada_srv--5" cx="672.54" cy="258.89" r="36.14" /><circle class="ada_srv--6" cx="672.54" cy="258.89" r="25.56" /><rect class="ada_srv--2" x="479.29" y="244.17" width="125.13" height="29.43" rx="5.63" ry="5.63" /><rect class="ada_srv--1" x="335.21" y="244.17" width="125.48" height="29.43" rx="5.63" ry="5.63" /><path class="ada_srv--7" d="M65.53,225.13S82,203.72,103.31,225s34.23,8.33,42.63-.07,27.6-32.23,59.79,0,67.08-2.47,67.08-2.47V259h-207Z" /><circle class="ada_srv--2" cx="69.58" cy="300.38" r="6.69" /><circle class="ada_srv--2" cx="168.55" cy="300.38" r="6.69" /><circle class="ada_srv--2" cx="267.52" cy="300.38" r="6.69" /><rect class="ada_srv--3" x="305.76" y="344.85" width="426.85" height="136.56" rx="5.33" ry="5.33" /><rect class="ada_srv--3" x="305.76" y="344.85" width="426.85" height="136.56" rx="5.33" ry="5.33" /><path class="ada_srv--1" d="M727.28,481c2.94,0,4.53-2,4.53-4.92V350.18c0-2.95-1.59-4.18-4.53-4.18H631.6A1007.76,1007.76,0,0,1,530.7,481Z" /><polygon class="ada_srv--4" points="285.88 427.84 51.22 427.84 51.22 427.84 285.88 427.84 285.88 427.84" /><path class="ada_srv--5" d="M56.5,344.85h224a5.33,5.33,0,0,1,5.33,5.33v77.76a0,0,0,0,1,0,0H51.17a0,0,0,0,1,0,0V350.18A5.33,5.33,0,0,1,56.5,344.85Z" /><path class="ada_srv--3" d="M51.22,427.84H285.88a0,0,0,0,1,0,0v48.24a5.33,5.33,0,0,1-5.33,5.33h-224a5.33,5.33,0,0,1-5.33-5.33V427.84A0,0,0,0,1,51.22,427.84Z" /><circle class="ada_srv--5" cx="672.54" cy="413.13" r="36.14" /><circle class="ada_srv--6" cx="672.54" cy="413.13" r="25.56" /><rect class="ada_srv--2" x="479.29" y="398.42" width="125.13" height="29.43" rx="5.63" ry="5.63" /><rect class="ada_srv--1" x="335.21" y="398.42" width="125.48" height="29.43" rx="5.63" ry="5.63" /><path class="ada_srv--7" d="M65.53,379.58s16.51-21.7,37.78-.42,34.23,8.19,42.63-.2,27.6-32.3,59.79-.11,67.08-2.54,67.08-2.54V414h-207Z" /><circle class="ada_srv--2" cx="69.58" cy="454.63" r="6.69" /><circle class="ada_srv--2" cx="168.55" cy="454.63" r="6.69" /><circle class="ada_srv--2" cx="267.52" cy="454.63" r="6.69" /><rect class="ada_srv--3" x="305.76" y="499.09" width="426.85" height="136.56" rx="5.33" ry="5.33" /><path class="ada_srv--1" d="M727.28,635c2.94,0,4.53-1.73,4.53-4.68V504.42c0-2.94-1.59-5.42-4.53-5.42h-213c-49.84,53-106.19,98-167.78,136Z" /><polygon class="ada_srv--4" points="285.88 582.09 51.22 582.09 51.22 582.09 285.88 582.09 285.88 582.09" /><path class="ada_srv--5" d="M56.5,499.09h224a5.33,5.33,0,0,1,5.33,5.33v77.76a0,0,0,0,1,0,0H51.17a0,0,0,0,1,0,0V504.42A5.33,5.33,0,0,1,56.5,499.09Z" /><path class="ada_srv--3" d="M51.22,582.09H285.88a0,0,0,0,1,0,0v48.24a5.33,5.33,0,0,1-5.33,5.33h-224a5.33,5.33,0,0,1-5.33-5.33V582.09A0,0,0,0,1,51.22,582.09Z" /><circle class="ada_srv--5" cx="672.54" cy="567.37" r="36.14" /><circle class="ada_srv--2" cx="672.54" cy="567.37" r="25.56" /><circle class="ada_srv--2" cx="672.54" cy="104.64" r="25.56" /><circle class="ada_srv--3" cx="664.01" cy="93.98" r="5.11" /><circle class="ada_srv--2" cx="672.54" cy="258.89" r="25.56" /><circle class="ada_srv--3" cx="664.01" cy="248.23" r="5.11" /><circle class="ada_srv--2" cx="672.54" cy="413.13" r="25.56" /><circle class="ada_srv--3" cx="664.01" cy="402.47" r="5.11" /><circle class="ada_srv--3" cx="664.01" cy="556.71" r="5.11" /><rect class="ada_srv--2" x="479.29" y="552.66" width="125.48" height="29.43" rx="5.63" ry="5.63" /><rect class="ada_srv--1" x="335.21" y="552.66" width="125.48" height="29.43" rx="5.63" ry="5.63" /><path class="ada_srv--7" d="M65.53,534.2s16.51-21.88,37.78-.61,34.23,8.1,42.63-.3,27.6-32.34,59.79-.15,67.08-2.59,67.08-2.59V569h-207Z" /><circle class="ada_srv--2" cx="69.58" cy="608.87" r="6.69" /><circle class="ada_srv--2" cx="168.55" cy="608.87" r="6.69" /><circle class="ada_srv--2" cx="267.52" cy="608.87" r="6.69" /><rect class="ada_srv--3" x="51.17" y="656.05" width="681.44" height="202.29" rx="5.33" ry="5.33" /><path class="ada_srv--1" d="M56.5,858H727.28c2.94,0,4.53-2,4.53-5V661.39c0-2.95-1.59-5.39-4.53-5.39H312A854.13,854.13,0,0,1,51.81,750.54V853C51.81,856,53.56,858,56.5,858Z" /><rect class="ada_srv--5" x="76.89" y="673.51" width="481.18" height="172.38" rx="3.99" ry="3.99" /><circle class="ada_srv--5" cx="672.54" cy="709.65" r="36.14" /><circle class="ada_srv--2" cx="672.54" cy="709.65" r="25.56" /><path class="ada_srv--8" d="M687.43,546.61a25.54,25.54,0,0,1-35.65,35.65,25.55,25.55,0,1,0,35.65-35.65Z" /><path class="ada_srv--8" d="M687.43,83.88a25.55,25.55,0,0,1-35.65,35.66,25.55,25.55,0,1,0,35.65-35.66Z" /><path class="ada_srv--8" d="M687.43,238.12a25.55,25.55,0,0,1-35.65,35.66,25.55,25.55,0,1,0,35.65-35.66Z" /><path class="ada_srv--8" d="M687.43,392.37A25.55,25.55,0,0,1,651.78,428a25.55,25.55,0,1,0,35.65-35.65Z" /><path class="ada_srv--8" d="M687.43,688.88a25.55,25.55,0,0,1-35.65,35.66,25.55,25.55,0,1,0,35.65-35.66Z" /><circle class="ada_srv--3" cx="664.01" cy="698.99" r="5.11" /><rect class="ada_srv--2" x="580.74" y="673.51" width="7.98" height="172.38" rx="3.99" ry="3.99" /><rect class="ada_srv--2" x="609.24" y="673.51" width="7.98" height="172.38" rx="3.99" ry="3.99" /><circle class="ada_srv--8" cx="584.73" cy="709.65" r="9.94" /><circle class="ada_srv--8" cx="613.23" cy="803.26" r="9.94" /><circle class="ada_srv--2" cx="672.54" cy="839.19" r="6.69" /><circle class="ada_srv--2" cx="672.54" cy="803.26" r="6.69" /><circle class="ada_srv--2" cx="672.54" cy="767.33" r="6.69" /><rect class="ada_srv--2" width="31.49" height="936.37" rx="5.33" ry="5.33" /><rect class="ada_srv--3" y="36.36" width="31.49" height="136.56" /><rect class="ada_srv--3" y="190.61" width="31.49" height="136.56" /><rect class="ada_srv--3" y="344.85" width="31.49" height="136.56" /><rect class="ada_srv--3" y="499.09" width="31.49" height="136.56" /><rect class="ada_srv--3" y="663.05" width="31.49" height="202.29" /><rect class="ada_srv--8" x="748.92" width="31.49" height="936.37" rx="5.33" ry="5.33" /><rect class="ada_srv--1" x="748.92" y="36.36" width="31.49" height="136.56" /><rect class="ada_srv--1" x="748.92" y="190.61" width="31.49" height="136.56" /><rect class="ada_srv--1" x="748.92" y="344.85" width="31.49" height="136.56" /><rect class="ada_srv--1" x="748.92" y="499.09" width="31.49" height="136.56" /><rect class="ada_srv--1" x="748.92" y="663.05" width="31.49" height="202.29" /><path class="ada_srv--7" d="M225,835.67a19.91,19.91,0,0,1-14.13-5.86l-44.14-44.23a14.5,14.5,0,0,0-10.36-4.31h0A14.6,14.6,0,0,0,146,785.6L125.73,806a20.1,20.1,0,0,1-14.17,5.9H77.18v-5.33h34.38A14.74,14.74,0,0,0,122,802.23l20.24-20.39a19.89,19.89,0,0,1,14.15-5.9h0a19.87,19.87,0,0,1,14.14,5.87l44.13,44.24a14.66,14.66,0,0,0,20.69,0l15.93-15.85a19.84,19.84,0,0,1,14.08-5.81h61.61a14.74,14.74,0,0,0,10.38-4.31l38.49-38.68a20,20,0,0,1,28.24-.07,14.66,14.66,0,0,0,20.66,0l7.91-7.9a20,20,0,0,1,28.24,0l46.62,46.67a14.51,14.51,0,0,0,10.35,4.29H558v5.33H517.83a19.8,19.8,0,0,1-14.12-5.86l-46.62-46.66a14.66,14.66,0,0,0-20.7,0l-7.91,7.89a20,20,0,0,1-28.19,0,14.66,14.66,0,0,0-20.7.05L341.1,803.87a20.1,20.1,0,0,1-14.16,5.88H265.33A14.53,14.53,0,0,0,255,814l-15.93,15.85A19.92,19.92,0,0,1,225,835.67Z" /><g id="Adaptiva_Flat_Logo" data-name="Adaptiva Flat Logo"><path class="ada_srv--4" d="M166.81,736a21.89,21.89,0,0,1-.27-3h.23c-1.5,2.59-3.69,3.82-7.11,3.82s-7.16-1.71-7.16-6c0-6.2,7.24-6.81,11.24-6.81h3.07v-1.51s-2.88-5.12-6.26-5.12a9.55,9.55,0,0,0-6.45,2.37l-1.6-1.87a12.33,12.33,0,0,1,8.05-3c5.12,0,8.41,2.28,8.26,7.63v5.17a68.1,68.1,0,0,0,.57,8.3Zm0-10h-3c-4.57,0-9.14,1.14-9.14,4.76,0,2.6,2.51,3.93,4.8,3.93,5.85,0,7.36-3.75,7.36-7.27V726Zm24,11v-4h-.09c-1.73,3-5.41,4.34-8.63,4.34a11.34,11.34,0,1,1,0-22.68c3.22,0,6.9,1.35,8.63,4.34h.09V702h3v35Zm-8-19.63c-5.17,0-8.37,3.88-8.37,8.64s3.2,8.64,8.37,8.64a8.64,8.64,0,1,0,0-17.28ZM211.63,736a21.89,21.89,0,0,1-.27-3h.41c-1.5,2.59-3.69,3.82-7.12,3.82s-7.15-1.71-7.15-6c0-6.2,7.24-6.81,11.24-6.81h3.07v-1.51s-3.06-5.12-6.44-5.12a9.53,9.53,0,0,0-6.45,2.37l-1.6-1.87a12.31,12.31,0,0,1,8.05-3c5.12,0,8.41,2.28,8.44,7.63v5.17a48.74,48.74,0,0,0,.38,8.3Zm.18-10h-3c-4.57,0-9.14,1.14-9.14,4.76,0,2.6,2.51,3.93,4.8,3.93,5.85,0,7.36-3.75,7.36-7.27V726Zm16.73,11.34c-3.22,0-6.91-1.35-8.64-4.34h-.09v14h-3V715h3v4h.09c1.73-3,5.42-4.34,8.64-4.34a11.34,11.34,0,0,1,0,22.68Zm-.17-20a8.64,8.64,0,1,0,0,17.28c5.17,0,8.37-3.88,8.37-8.64s-3.2-8.64-8.37-8.64ZM250,734.74a9.63,9.63,0,0,0,3.4-.73l.25,2.47a14.52,14.52,0,0,1-3.9.73c-4.3,0-5.95-2.43-5.95-5.44V718h-5v-2h5v-7h3v7h6v2h-6v13.77c0,1.87,1.2,3,3.2,3Zm5.8-25.61a2.06,2.06,0,1,1,2.06-2,2,2,0,0,1-2.06,2Zm1,27.87h-3V716h3v21ZM270,737H267.2l-8.59-21h3.09l7,18,6.82-18h2.77L270,737Zm23.51-1a21.89,21.89,0,0,1-.27-3h.51c-1.49,2.59-3.69,3.82-7.11,3.82s-7.16-1.71-7.16-6c0-6.2,7.24-6.81,11.24-6.81h3.07v-1.51s-3.16-5.12-6.54-5.12a9.55,9.55,0,0,0-6.45,2.37l-1.6-1.87a12.33,12.33,0,0,1,8-3c5.12,0,8.41,2.28,8.54,7.63v5.17a41.77,41.77,0,0,0,.29,8.3Zm-.72-10h-3c-4.57,0-9.14,1.14-9.14,4.76,0,2.6,2.51,3.93,4.8,3.93,5.85,0,7.36-3.75,7.36-7.27V726Z" /><path class="ada_srv--4" d="M295.81,715v2h1v-2h-1v1h1v-1h-1Zm3,2v-1H299l-.63,1h-.07l-.64-1h.2v1h-1v-2h.87l.61,1.74.6-1.74h-.08v2h0Z" /><polygon class="ada_srv--4" points="140.81 702.85 140.81 713 130.46 713 140.81 702.85" /><polygon class="ada_srv--4" points="119.39 724 140.81 724 140.81 716 127.51 716 119.39 724" /><polygon class="ada_srv--4" points="107.8 737 140.81 737 140.81 727 117.89 727 107.8 737" /></g>
                        </g>
                        </g></svg>
                </div>
                <div id="Callout" class="pc-callout j-col j-col-4 push-1">
                    <div id="callout--content">
                        <p>Please enter a valid Host Name or IP address below for the device you wish to check status or wake up</p>
                        <asp:TextBox ID="tbxHostName" runat="server"></asp:TextBox>
                        <asp:Button ID="PCLookup" CssClass="pc-callout--lookup" Text="Look up Device" runat="server" OnClientClick="SelectName();" />
                        <div class="pc-callout--lookup-icon" onclick="SelectName();">
                            <svg width="26" height="26" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 237.46 237.46">
                                <defs>
                                    <style>.lookup-1{fill: #9cbfe3;}.lookup-2{fill: #073971;}.lookup-3{fill: #0860b8;}
                                    </style>
                                </defs><title>lookup</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><path class="lookup-1" d="M27.45,27.45a63,63,0,1,0,89.1,0A63,63,0,0,0,27.45,27.45Z" /><rect class="lookup-2" x="129.82" y="107.32" width="18" height="63" transform="translate(-57.5 138.82) rotate(-45)" /><rect class="lookup-3" x="171.73" y="140.23" width="36" height="99" transform="translate(-78.59 189.73) rotate(-45)" /><path class="lookup-3" d="M21.09,21.09a72,72,0,1,0,101.82,0A72,72,0,0,0,21.09,21.09Zm89.09,89.09a54,54,0,1,1,0-76.36A54,54,0,0,1,110.18,110.18Z" /></g>
                                </g></svg>
                        </div>
                        <br />
                        <br />
                        <asp:Button ID="btnStatus" runat="server" CssClass="pc-check-status" Text="Check Status" OnClientClick="HideDiv('#callout--content');SetHostName();" OnClick="btnStatus_Click" />
                        <asp:Button ID="btnWakeup" runat="server" CssClass="pc-wake-up" Text="Wakeup" OnClientClick="HideDiv('#callout--content');SetHostName();StartTimer();SetImage();" OnClick="btnWakeup_Click" />
                        <br />
                        <br />
                        <asp:Label ID="lblFailureReason" runat="server"></asp:Label>
                    </div>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                        <ProgressTemplate>
                            <div class="pc-update--progress">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/pc-loading.gif" />
                            </div>
                            <div class="pc-update--timer" id="timer"></div>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </div>
                <div id="PCOff" class="j-col j-col-3 push-1 pc-off">
                    <%--<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 612 495">
                        <defs>
                            <style>
                                .comp_off--1 {
                                    fill: #b3b3b3;
                                }

                                .comp_off--2 {
                                    fill: #8c8c8d;
                                }

                                .comp_off--3 {
                                    fill: #202021;
                                }

                                .comp_off--4 {
                                    fill: #303031;
                                }

                                .comp_off--5 {
                                    fill: #404041;
                                }
                            </style>
                        </defs><title>computer_off</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><rect class="comp_off--1" x="378" y="351" width="18" height="108" /><rect class="comp_off--2" x="378" y="351" width="18" height="36" /><rect class="comp_off--1" x="216" y="351" width="18" height="108" /><rect class="comp_off--2" x="216" y="351" width="18" height="36" /><rect class="comp_off--1" width="612" height="369" /><rect class="comp_off--3" x="18" y="18" width="576" height="333" /><polygon class="comp_off--4" points="18 351 18 18 594 18 18 351" /><polygon class="comp_off--2" points="432 486 180 486 216 450 396 450 432 486" /><polygon class="comp_off--1" points="459 477 153 477 135 495 477 495 459 477" /><rect class="comp_off--5" x="135" y="486" width="342" height="9" /></g>
                        </g></svg>--%>
                    <asp:Image ID="imgPCOff"  runat="server" ImageUrl="~/Images/computer_off.svg" />
                    <div class="pc-meta">
                        <asp:Label ID="lblName" CssClass="pc-meta--host" runat="server" Text="Host Name:"></asp:Label>
                        <asp:Label ID="lblStatus" CssClass="pc-meta--status" runat="server" Text="Unknown"></asp:Label>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="btnWakeup" EventName="Click" />

            </Triggers>
        </asp:UpdatePanel>
    </div>

    <script type="text/javascript">

        function HideDiv(pId) {
            $(pId).fadeOut(300, function () {
                $(this).next().fadeIn(300);
            });
        }

        function SetHostName() {
            document.getElementById('<%=lblName.ClientID %>').innerHTML = "Host Name: " + document.getElementById('<%=tbxHostName.ClientID %>').value;
        }

        var popup;
        function SelectName() {
            var textboxvalue = '<%= tbxHostName.ClientID %>';
            popup = window.open("PCSelector.aspx?t=" + textboxvalue, "PCSelector", "width=800,height=600,scrollbars=1,resizable=1");
            popup.focus();
        }

        function StartTimer() {
            var counter = 300000;
            clearInterval(x);

            var x = setInterval(function () {
                var distance = counter -= 1000;
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                document.getElementById("timer").innerHTML = minutes + "m " + seconds + "s ";
                if (distance <= 0) {
                    clearInterval(x);
                }
            }, 1000);
        }

        function SetImage() {
            document.getElementById('MainContent_imgPCOff').setAttribute('src', 'Images/computer_off.svg');
        }

    </script>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Calculator - Muhammad Baiquni</title>
	<asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
		<asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see http://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

		<div class="text-center">
			<h3>Calculator Muhammad Baiquni</h3>
		</div>

		<br />

		<div class="container body-content" style="margin-left: calc((100% - 300px)/2);">
			<asp:UpdatePanel ID="UpdateResult" runat="server" >
				<ContentTemplate>
					<table width="300" cellpadding="5" cellspacing="5" style="border: 1px solid #000;">
						<tr>
							<td colspan="4">
								<asp:TextBox ID="TextBoxResult" runat="server" CssClass="form-control text-right" ReadOnly></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td width="50">
								<asp:Button ID="Button7" runat="server" Text="7" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td width="50">
								<asp:Button ID="Button8" runat="server" Text="8" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td width="50">
								<asp:Button ID="Button9" runat="server" Text="9" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td width="50">
								<asp:Button ID="ButtonDevide" runat="server" Text=":" CssClass="btn btn-primary btn-block" OnClick="ButtonAction_Click" />
							</td>
						</tr>
						<tr>
							<td>
								<asp:Button ID="Button4" runat="server" Text="4" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="Button5" runat="server" Text="5" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="Button6" runat="server" Text="6" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="ButtonTimes" runat="server" Text="&times;" CssClass="btn btn-primary btn-block" OnClick="ButtonAction_Click" />
							</td>
						</tr>
						<tr>
							<td>
								<asp:Button ID="Button1" runat="server" Text="1" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="Button2" runat="server" Text="2" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="Button3" runat="server" Text="3" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="ButtonMinus" runat="server" Text="-" CssClass="btn btn-primary btn-block" OnClick="ButtonAction_Click" />
							</td>
						</tr>
						<tr>
							<td>
								<asp:Button ID="Button0" runat="server" Text="0" CssClass="btn btn-primary btn-block" OnClick="Button_Click" />
							</td>
							<td>
								<asp:Button ID="ButtonOpen" runat="server" Text="(" CssClass="btn btn-primary btn-block" OnClick="ButtonOpen_Click" />
							</td>
							<td>
								<asp:Button ID="ButtonClose" runat="server" Text=")" CssClass="btn btn-primary btn-block" OnClick="ButtonClose_Click" />
							</td>
							<td>
								<asp:Button ID="ButtonPlus" runat="server" Text="+" CssClass="btn btn-primary btn-block" OnClick="ButtonAction_Click" />
							</td>
						</tr>
						<tr>
							<td>
								<asp:Button ID="ButtonClear" runat="server" Text="C" CssClass="btn btn-primary btn-block" OnClick="ButtonClear_Click" />
							</td>
							<td>
								<asp:Button ID="ButtonClearMemory" runat="server" Text="CE" CssClass="btn btn-primary btn-block" OnClick="ButtonClearMemory_Click" />
							</td>
							<td colspan="2">
								<asp:Button ID="ButtonResult" runat="server" Text="Enter" CssClass="btn btn-primary btn-block" OnClick="ButtonResult_Click" />
							</td>
						</tr>
					</table>
				</ContentTemplate>
			</asp:UpdatePanel>
		</div>
    </form>
</body>
</html>

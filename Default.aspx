<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tips._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <form runat="server">
        <br />
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem Value="0">BulletedList</asp:ListItem>
            <asp:ListItem Value="1">File Upload</asp:ListItem>
        </asp:RadioButtonList>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink">
                    <asp:ListItem Value="http://www.microsoft.com">Microsoft</asp:ListItem>
                </asp:BulletedList>
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/hyperlinks.xml"></asp:XmlDataSource>
                <hr />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
            </asp:View>
        </asp:MultiView>
        <hr />

    </form>


    
    


</asp:Content>

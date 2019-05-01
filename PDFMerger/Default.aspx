<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PDFMerger._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>PDF Merge</h1>
        <p class="lead">Merge PDF documents online for free...</p>
          <asp:FileUpload ID="FileUpload1" runat="server"  AllowMultiple="false"  Width="250px" TabIndex="1" ToolTip="select pdf file to merge" /><br />
            <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
           <asp:FileUpload ID="FileUpload2" runat="server"  AllowMultiple="false"  Width="250px" TabIndex="1" ToolTip="select pdf file to merge" /><br />
            <asp:Label ID="Label2" runat="server" Font-Bold="true"></asp:Label>
         <asp:FileUpload ID="FileUpload3" runat="server"  AllowMultiple="false"  Width="250px" TabIndex="1" ToolTip="select pdf file to merge" /><br />
            <asp:Label ID="Label3" runat="server" Font-Bold="true"></asp:Label>
         <asp:FileUpload ID="FileUpload4" runat="server"  AllowMultiple="false"  Width="250px" TabIndex="1" ToolTip="select pdf file to merge" /><br />
            <asp:Label ID="Label4" runat="server" Font-Bold="true"></asp:Label>
        <asp:Button ID="btnMerge" runat="server" class="btn btn-primary" Text="Merge Files" OnClick="btnMerge_Click" />
            
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>

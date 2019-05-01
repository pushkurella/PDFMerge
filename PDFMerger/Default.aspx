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
        <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-sm" Text="add file" /><br /><br />

        <asp:Button ID="btnMerge" runat="server" class="btn btn-primary btn-lg" Text="Merge Files" OnClick="btnMerge_Click" />
        <asp:Button ID="btnReset" runat="server" class="btn btn-secondary btn-lg" Text="Reset" OnClick="btnReset_Click" />
        
    </div>

     <div class="row">
        <div class="col-md-4">
            <h2>Step 1</h2>
            <p>
                Choose files that needs to be merged.
            </p>
            <p>
                Only PDF fomrat is supported
            </p>
        </div>
        <div class="col-md-4">
            <h2>Step 2</h2>
            <p>
                Click add to add more files
            </p>
            <p>
                No need if you have less than four PDF's
            </p>
        </div>
        <div class="col-md-4">
            <h2>Step 3</h2>
            <p>
                Click on Merge files 
            </p>
            <p>
                Choose location it needs to be saved
            </p>

        </div>
    </div>

</asp:Content>

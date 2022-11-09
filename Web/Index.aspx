<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md">
                <div class="md-form">
                    <i class="fa fa-envelope prefix grey-text"></i>
                    <asp:TextBox ID="textTeste" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Label ID="lblTeste" for="textTeste" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-md">
            </div>
        </div>
    </div>

    
</asp:Content>

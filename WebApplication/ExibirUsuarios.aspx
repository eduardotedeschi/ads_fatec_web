﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExibirUsuarios.aspx.cs" Inherits="WebApplication.ExibirUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <div class="row">
        <div class="col-8">
            <div class="box padding-14">
                <h2 class="text-align-center">Usuários Cadastrados</h2>
                <asp:GridView AutoGenerateSelectButton="true" OnSelectedIndexChanged="Usuarios_SelectedIndexChanged" ID="Usuarios" Width="100%" ForeColor="black" BorderColor="#c0c0c0" CellPadding="8" runat="server">
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

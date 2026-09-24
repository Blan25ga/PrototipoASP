<%@ Page Title="Formulario de Dirección" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioDireccion.aspx.cs" Inherits="PrototipoASP.FormularioDireccion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Espacio para agregar CSS o scripts específicos si hace falta -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Agregar Nueva Dirección</h2>

    <div class="mb-3">
        <label for="txtCalle" class="form-label">Calle:</label>
        <asp:TextBox ID="txtCalle" runat="server" CssClass="form-control" />
    </div>

    <div class="mb-3">
        <label for="txtAltura" class="form-label">Altura:</label>
        <asp:TextBox ID="txtAltura" runat="server" CssClass="form-control" />
    </div>

    <asp:Button ID="btnAceptar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" />
    <a href="Default.aspx" class="btn btn-secondary">Cancelar</a>
</asp:Content>
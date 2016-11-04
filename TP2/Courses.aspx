<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Courses" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="TP2.Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Lista de Cursos</h2>
        <br />
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-bottom: 15px;">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2" style="margin-top: 10px; width: 50px;">Tipos: </div>
                <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                    <asp:DropDownList 
                        CssClass="form-control" ID="ddl_grau" runat="server" AutoPostBack="true" 
                        DataTextField="Grau" DataValueField="Grau" AppendDataBoundItems="true" 
                        DataSourceID="XMLdbGrau" OnSelectedIndexChanged="ddl_grau_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2" style="margin-top: 10px; width: 50px;">Locais: </div>
                    <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
                        <asp:DropDownList 
                            CssClass="form-control" ID="dll_local" runat="server" AutoPostBack="true" 
                            DataTextField="Local" DataValueField="Local" AppendDataBoundItems="true" 
                            DataSourceID="XMLdbLocal" OnSelectedIndexChanged="dll_local_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" CssClass="table table-condensed" runat="server" 
        AutoGenerateColumns="False" DataSourceID="XMLdb" BorderStyle="None" 
        HeaderStyle-BackColor="#0099FF" AllowPaging="True" GridLines="None" 
        OnDataBound="GridView1_DataBound">
            
            <Columns>
                <asp:HyperLinkField HeaderText="GUID" DataTextField="GUID" DataNavigateUrlFields="GUID" SortExpression="GUID" DataNavigateUrlFormatString="~/Coursesdetail?ID={0}" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Grau" HeaderText="Grau" SortExpression="Grau" />
                <asp:BoundField DataField="Local" HeaderText="Local" SortExpression="Local" />
            </Columns>
            <EmptyDataTemplate>
                <div class="panel panel-warning">
                  <div class="panel-heading">
                    <h3 class="panel-title">ATENÇÃO!</h3>
                  </div>
                  <div class="panel-body">
                    Não existe cursos desse tipo nessa instituição.
                  </div>
                </div>
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#999999" HorizontalAlign="Center" ForeColor="White"></HeaderStyle>
            <PagerStyle HorizontalAlign="Center" CssClass="pagination-lg" />
        </asp:GridView>

    <!-- DB -->
    <asp:XmlDataSource ID="XMLdb" runat="server" DataFile="~/App_Data/cursos/cursos.xml" TransformFile="~/App_Data/cursos/cursosList.xsl"> 
    </asp:XmlDataSource>

    <asp:XmlDataSource ID="XMLdbGrau" runat="server" EnableCaching="false"
        DataFile="~/App_Data/cursos/cursos.xml" 
        TransformFile="~/App_Data/cursos/cursosList.xsl"
        XPath="/cursos/curso[not(@Grau=preceding::curso/@Grau)]" >
    </asp:XmlDataSource>

    <asp:XmlDataSource ID="XMLdbLocal" runat="server" EnableCaching="false"
        DataFile="~/App_Data/cursos/cursos.xml"
        TransformFile="~/App_Data/cursos/cursosList.xsl"
        XPath="/cursos/curso[not(@Local=preceding::curso/@Local)]" >
    </asp:XmlDataSource>

</asp:Content>

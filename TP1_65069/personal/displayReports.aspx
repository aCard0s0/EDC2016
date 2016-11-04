<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displayReports.aspx.cs" Inherits="TP1_65069.personal.displayReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>As minhas vendas</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="table table-condensed" DataSourceID="SqlDataSource1" 
        EmptyDataText="--" 
        AllowSorting="True" 
        GridLines="None" CellPadding="4" HorizontalAlign="Center" 
        Font-Size="Small" PageSize="15" ForeColor="#333333">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" ReadOnly="True" />
            <asp:BoundField DataField="Ord Num" HeaderText="Ord Num" SortExpression="Ord Num" ReadOnly="True" />
            <asp:BoundField DataField="Stor ID" HeaderText="Stor ID" SortExpression="Stor ID" ReadOnly="True" />
            <asp:BoundField DataField="Ord Date" HeaderText="Ord Date" SortExpression="Ord Date" ReadOnly="True" />
            <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" ReadOnly="True" />
            <asp:BoundField DataField="Payterms" HeaderText="Payterms" SortExpression="Payterms" ReadOnly="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Font-Size="Small" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" CssClass="pagination pagination-lg"/>
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" 
        SelectCommand="GetMySales" SelectCommandType="StoredProcedure" >
    </asp:SqlDataSource>--%>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" 
    DeleteCommand="DELETE FROM [titles] WHERE [title_id] = @title_id" 
    InsertCommand="INSERT INTO [titles] ([title_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytd_sales], [notes], [pubdate]) VALUES (@title_id, @title, @type, @pub_id, @price, @advance, @royalty, @ytd_sales, @notes, @pubdate)" 
    SelectCommand="GetMySales" SelectCommandType="StoredProcedure" 
    UpdateCommand="UPDATE [titles] SET [title] = @title, [type] = @type, [pub_id] = @pub_id, [price] = @price, [advance] = @advance, [royalty] = @royalty, [ytd_sales] = @ytd_sales, [notes] = @notes, [pubdate] = @pubdate WHERE [title_id] = @title_id">
        <DeleteParameters>
            <asp:Parameter Name="title_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title_id" Type="String" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="pub_id" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="advance" Type="Decimal" />
            <asp:Parameter Name="royalty" Type="Int32" />
            <asp:Parameter Name="ytd_sales" Type="Int32" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="pubdate" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="UserName" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="pub_id" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="advance" Type="Decimal" />
            <asp:Parameter Name="royalty" Type="Int32" />
            <asp:Parameter Name="ytd_sales" Type="Int32" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="pubdate" Type="DateTime" />
            <asp:Parameter Name="title_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

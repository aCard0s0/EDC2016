<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Titles.aspx.cs" Inherits="TP1_65069.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3>Publication Type</h3>
    <br />
    <asp:DropDownList CssClass="form-control" ID="ddlTypes" runat="server" AutoPostBack="true" DataSourceID="DropDownDataSource"
        DataTextField="type" DataValueField="type" AppendDataBoundItems="true">
    </asp:DropDownList>

    <asp:SqlDataSource ID="DropDownDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>"
        SelectCommand="SELECT DISTINCT type FROM [titles]"></asp:SqlDataSource>

    <h4>Titles</h4>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" 
        CssClass="table table-condensed" 
        DataKeyNames="title_id" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." GridLines="None" 
        AllowSorting="True" SelectedRowStyle-BackColor="#99FFCC" >
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="title_id" HeaderText="Title ID" ReadOnly="True" SortExpression="title_id" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="pub_id" HeaderText="Pub ID" SortExpression="pub_id" />
            <asp:TemplateField HeaderText="Comandos">
                <ItemTemplate>
                    <asp:ImageButton ID="LinkButton1" runat="server"  CausesValidation="False" CommandName="Select"  OnClick="LinkButton1_Click" ImageUrl="~/images/select.png" ImageAlign="Middle" Height="20px" Width="20px"/>
                </ItemTemplate>
            </asp:TemplateField>
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

    <br />

    <asp:Label runat="server" CssClass="h4" ID="title_details" Visible="false">Title details</asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource2" AutoGenerateRows="False" 
        CssClass="table table-condensed table-hover" GridLines="None" OnItemUpdated="DetailsView1_ItemUpdated">
        <Fields>
            <asp:BoundField DataField="title_id" HeaderText="title_id" ReadOnly="True" SortExpression="title_id" /> 
            <asp:TemplateField HeaderText="title" SortExpression="title">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" CssClass="form-control input-sm" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>    
            <asp:TemplateField HeaderText="type" SortExpression="type">
                <EditItemTemplate>
                    <asp:DropDownList CssClass="form-control input-sm" ID="DropDownList1" runat="server" DataSourceID="DropDownDataSource"
                        DataTextField="type" DataValueField="type" AppendDataBoundItems="true" SelectedValue='<%# Bind("type") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1_Type" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pub_id" SortExpression="pub_id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" CssClass="form-control input-sm" runat="server" Text='<%# Bind("pub_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pub_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" CssClass="form-control input-sm" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="advance" SortExpression="advance">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" CssClass="form-control input-sm" runat="server" Text='<%# Bind("advance") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("advance") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="royalty" SortExpression="royalty">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" CssClass="form-control input-sm" runat="server" Text='<%# Bind("royalty") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("royalty") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:TemplateField HeaderText="ytd_sales" SortExpression="ytd_sales">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" CssClass="form-control input-sm" runat="server" Text='<%# Bind("ytd_sales") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("ytd_sales") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="notes" SortExpression="notes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" Rows="5" CssClass="form-control input-sm" runat="server" Text='<%# Bind("notes") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("notes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pubdate" SortExpression="pubdate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" CssClass="form-control input-sm" runat="server" Text='<%# Bind("pubdate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("pubdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:ImageButton ID="imgBttUpdate" runat="server" CausesValidation="True" CommandName="Update" ImageUrl="~/images/update.png" ImageAlign="Middle" Height="20px" Width="20px" OnClick="imgBttUpdate_Click"/>
                &nbsp;<asp:ImageButton ID="imgBttCancel" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/images/cancel.png" ImageAlign="Middle" Height="20px" Width="20px"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgBttEdit" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/images/edit.ico" ImageAlign="Middle" Height="20px" Width="20px"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>"
       ProviderName="<%$ ConnectionStrings:pubsConnectionString1.ProviderName %>"
        SelectCommand="SELECT [title_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytd_sales], [notes], [pubdate] FROM [titles]"
        FilterExpression="type = '{0}'">
        <FilterParameters>
            <asp:ControlParameter Name="type" ControlID="ddlTypes" PropertyName="SelectedValue" />
        </FilterParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>"
        ProviderName="<%$ ConnectionStrings:pubsConnectionString1.ProviderName %>"
        SelectCommand="SELECT [title_id], [title], [type], [pub_id], [price], [advance], [royalty], [ytd_sales], [notes], [pubdate] FROM [titles] WHERE [title_id] = @title_id"
        UpdateCommand="UPDATE [titles] SET [title] = @title, [type] = @type, [pub_id] = @pub_id, [price] = @price, [advance] = @advance, [royalty] = @royalty, [ytd_sales] = @ytd_sales, [notes] = @notes, [pubdate] = @pubdate WHERE [title_id] = @title_id">
        <SelectParameters>
            <asp:ControlParameter Name="title_id" Type="String" ControlID="GridView2"/>
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
            <asp:Parameter Name="pubdate" Type="DateTime"  />
            <asp:Parameter Name="title_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

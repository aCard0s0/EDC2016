<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Authors.aspx.cs" Inherits="TP1_65069.authors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="au_id" 
        DataSourceID="SqlDataSource1" EmptyDataText="--" 
        AllowPaging="True" AllowSorting="True" 
        CellPadding="4" HorizontalAlign="Center" 
        Font-Size="Small" PageSize="15" ForeColor="#333333" 
        CssClass="table table-condensed"
        GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:ImageButton ID="imgBttUpdate" runat="server" CausesValidation="True" CommandName="Update" ImageUrl="~/images/update.png" ImageAlign="Middle" Height="20px" Width="20px"/>
                &nbsp;<asp:ImageButton ID="imgBttCancel" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/images/cancel.png" ImageAlign="Middle" Height="20px" Width="20px"/>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:ImageButton ID="imgBttSelect" runat="server" CausesValidation="False" CommandName="Select" ImageUrl="~/images/select.png" ImageAlign="Middle" Height="20px" Width="20px"/>
                &nbsp;<asp:ImageButton ID="imgBttEdit" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/images/edit.ico" ImageAlign="Middle" Height="20px" Width="20px"/>
                &nbsp;<asp:ImageButton ID="imgBttDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/delete.ico" ImageAlign="Middle" Height="20px" Width="20px"/>
            </ItemTemplate>
            <HeaderStyle BorderColor="#FFCC66" />
            <ItemStyle Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:TemplateField>
        <asp:BoundField DataField="au_id" HeaderText="ID" ReadOnly="True" SortExpression="au_id" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" >
        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="au_fname" HeaderText="Frist Name" SortExpression="au_fname" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:BoundField>
        <asp:CheckBoxField DataField="contract" HeaderText="Contract" SortExpression="contract" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:CheckBoxField>
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Font-Size="Small" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" CssClass="pagination pagination-lg" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pubsConnectionString1 %>" 
    DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" 
    InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" 
    ProviderName="<%$ ConnectionStrings:pubsConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract] FROM [authors]"
    UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @au_id">
    <DeleteParameters>
        <asp:Parameter Name="au_id" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="au_id" Type="String" />
        <asp:Parameter Name="au_lname" Type="String" />
        <asp:Parameter Name="au_fname" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="zip" Type="String" />
        <asp:Parameter Name="contract" Type="Boolean" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="au_lname" Type="String" />
        <asp:Parameter Name="au_fname" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="city" Type="String" />
        <asp:Parameter Name="state" Type="String" />
        <asp:Parameter Name="zip" Type="String" />
        <asp:Parameter Name="contract" Type="Boolean" />
        <asp:Parameter Name="au_id" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

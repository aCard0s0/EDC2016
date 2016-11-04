<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="TP1_65069.Admin.UserManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h2>User Manager</h2>
    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" 
        EmptyDataText="--" CssClass="table table-condensed" 
        Font-Size="Small" PageSize="15" ForeColor="#333333" 
        GridLines="None">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:ImageButton ID="imgBttUpdate" runat="server" CausesValidation="True" CommandName="Update" ImageUrl="~/images/update.png" ImageAlign="Middle" Height="20px" Width="20px"/>
                    &nbsp;<asp:ImageButton ID="imgBttCancel" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/images/cancel.png" ImageAlign="Middle" Height="20px" Width="20px"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:ImageButton ID="imgBttEdit" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/images/edit.ico" ImageAlign="Middle" Height="20px" Width="20px"/>
                    &nbsp;<asp:ImageButton ID="imgBttDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/delete.ico" ImageAlign="Middle" Height="20px" Width="20px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:CheckBoxField DataField="TwoFactorEnabled" HeaderText="TwoFactorEnabled" SortExpression="TwoFactorEnabled" />
            <asp:BoundField DataField="LockoutEndDateUtc" HeaderText="LockoutEndDateUtc" SortExpression="LockoutEndDateUtc" />
            <asp:CheckBoxField DataField="LockoutEnabled" HeaderText="LockoutEnabled" SortExpression="LockoutEnabled" />
            <asp:BoundField DataField="AccessFailedCount" HeaderText="AccessFailedCount" SortExpression="AccessFailedCount" />
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        DeleteCommand="DELETE FROM [AspNetUsers] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [BirthDate], [FullName]) VALUES (@Id, @Email, @EmailConfirmed, @PasswordHash, @SecurityStamp, @PhoneNumber, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEndDateUtc, @LockoutEnabled, @AccessFailedCount, @UserName, @BirthDate, @FullName)" 
        ProviderName="<%$ ConnectionStrings:DefaultConnection.ProviderName %>" 
        SelectCommand="SELECT [Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [BirthDate], [FullName] FROM [AspNetUsers]" 
        UpdateCommand="UPDATE [AspNetUsers] SET [Email] = @UserName, [TwoFactorEnabled] = @TwoFactorEnabled, [LockoutEndDateUtc] = @LockoutEndDateUtc, [LockoutEnabled] = @LockoutEnabled, [AccessFailedCount] = @AccessFailedCount, [UserName] = @UserName, [BirthDate] = @BirthDate, [FullName] = @FullName WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="TwoFactorEnabled" Type="Boolean" />
            <asp:Parameter Name="LockoutEndDateUtc" Type="DateTime" />
            <asp:Parameter Name="LockoutEnabled" Type="Boolean" />
            <asp:Parameter Name="AccessFailedCount" Type="Int32" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="BirthDate" Type="DateTime" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

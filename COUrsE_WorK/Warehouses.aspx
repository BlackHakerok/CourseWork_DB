<%@ Page Title="Warehouses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Warehouses.aspx.cs" Inherits="COUrsE_WorK.Warehouses" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDСклада" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDСклада" HeaderText="IDСклада" ReadOnly="True" SortExpression="IDСклада" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDСклада" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDСклада" HeaderText="IDСклада" InsertVisible="False" ReadOnly="True" SortExpression="IDСклада" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Склады] WHERE [IDСклада] = @IDСклада" InsertCommand="INSERT INTO [Склады] ([Адрес], [Телефон]) VALUES (@Адрес, @Телефон)" SelectCommand="SELECT * FROM [Склады] WHERE ([IDСклада] = @IDСклада)" UpdateCommand="UPDATE [Склады] SET [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [IDСклада] = @IDСклада">
        <DeleteParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDСклада" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
            <asp:Parameter Name="IDСклада" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Склады] WHERE [IDСклада] = @IDСклада" InsertCommand="INSERT INTO [Склады] ([Адрес], [Телефон]) VALUES (@Адрес, @Телефон)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDСклада], [Адрес], [Телефон] FROM [Склады]" UpdateCommand="UPDATE [Склады] SET [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [IDСклада] = @IDСклада">
        <DeleteParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
            <asp:Parameter Name="IDСклада" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



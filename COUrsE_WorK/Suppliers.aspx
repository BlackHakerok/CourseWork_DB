<%@ Page Title="Suppliers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="COUrsE_WorK.Suppliers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDПоставщика" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDПоставщика" HeaderText="IDПоставщика" ReadOnly="True" SortExpression="IDПоставщика" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDПоставщика" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDПоставщика" HeaderText="IDПоставщика" InsertVisible="False" ReadOnly="True" SortExpression="IDПоставщика" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Поставщики] WHERE [IDПоставщика] = @IDПоставщика" InsertCommand="INSERT INTO [Поставщики] ([Адрес], [Телефон]) VALUES (@Адрес, @Телефон)" SelectCommand="SELECT * FROM [Поставщики] WHERE ([IDПоставщика] = @IDПоставщика)" UpdateCommand="UPDATE [Поставщики] SET [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [IDПоставщика] = @IDПоставщика">
        <DeleteParameters>
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDПоставщика" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Поставщики] WHERE [IDПоставщика] = @IDПоставщика" InsertCommand="INSERT INTO [Поставщики] ([Адрес], [Телефон]) VALUES (@Адрес, @Телефон)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDПоставщика], [Адрес], [Телефон] FROM [Поставщики]" UpdateCommand="UPDATE [Поставщики] SET [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [IDПоставщика] = @IDПоставщика">
        <DeleteParameters>
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



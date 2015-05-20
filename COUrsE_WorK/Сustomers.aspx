<%@ Page Title="Сustomers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Сustomers.aspx.cs" Inherits="COUrsE_WorK.Сustomers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDЗаказчика" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDЗаказчика" HeaderText="IDЗаказчика" ReadOnly="True" SortExpression="IDЗаказчика" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDЗаказчика" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDЗаказчика" HeaderText="IDЗаказчика" InsertVisible="False" ReadOnly="True" SortExpression="IDЗаказчика" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Заказчики] WHERE [IDЗаказчика] = @IDЗаказчика" InsertCommand="INSERT INTO [Заказчики] ([Адрес], [Телефон]) VALUES (@Адрес, @Телефон)" SelectCommand="SELECT * FROM [Заказчики] WHERE ([IDЗаказчика] = @IDЗаказчика)" UpdateCommand="UPDATE [Заказчики] SET [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [IDЗаказчика] = @IDЗаказчика">
        <DeleteParameters>
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDЗаказчика" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Заказчики] WHERE [IDЗаказчика] = @IDЗаказчика" InsertCommand="INSERT INTO [Заказчики] ([Адрес], [Телефон]) VALUES (@Адрес, @Телефон)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDЗаказчика], [Адрес], [Телефон] FROM [Заказчики]" UpdateCommand="UPDATE [Заказчики] SET [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [IDЗаказчика] = @IDЗаказчика">
        <DeleteParameters>
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Адрес" Type="String" />
            <asp:Parameter Name="Телефон" Type="String" />
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



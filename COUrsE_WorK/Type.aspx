<%@ Page Title="Type" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Type.aspx.cs" Inherits="COUrsE_WorK.Type" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDТипа" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDТипа" HeaderText="IDТипа" ReadOnly="True" SortExpression="IDТипа" />
            <asp:BoundField DataField="Описание" HeaderText="Описание" SortExpression="Описание" />
            <asp:BoundField DataField="Особенности" HeaderText="Особенности" SortExpression="Особенности" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDТипа" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDТипа" HeaderText="IDТипа" InsertVisible="False" ReadOnly="True" SortExpression="IDТипа" />
            <asp:BoundField DataField="Описание" HeaderText="Описание" SortExpression="Описание" />
            <asp:BoundField DataField="Особенности" HeaderText="Особенности" SortExpression="Особенности" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Тип] WHERE [IDТипа] = @IDТипа" InsertCommand="INSERT INTO [Тип] ([Описание], [Особенности]) VALUES (@Описание, @Особенности)" SelectCommand="SELECT * FROM [Тип] WHERE ([IDТипа] = @IDТипа)" UpdateCommand="UPDATE [Тип] SET [Описание] = @Описание, [Особенности] = @Особенности WHERE [IDТипа] = @IDТипа">
        <DeleteParameters>
            <asp:Parameter Name="IDТипа" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Особенности" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDТипа" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Особенности" Type="String" />
            <asp:Parameter Name="IDТипа" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Тип] WHERE [IDТипа] = @IDТипа" InsertCommand="INSERT INTO [Тип] ([Описание], [Особенности]) VALUES (@Описание, @Особенности)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDТипа], [Описание], [Особенности] FROM [Тип]" UpdateCommand="UPDATE [Тип] SET [Описание] = @Описание, [Особенности] = @Особенности WHERE [IDТипа] = @IDТипа">
        <DeleteParameters>
            <asp:Parameter Name="IDТипа" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Особенности" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Особенности" Type="String" />
            <asp:Parameter Name="IDТипа" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



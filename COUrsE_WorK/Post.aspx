<%@ Page Title="Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="COUrsE_WorK.Post" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDДолжности" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDДолжности" HeaderText="IDДолжности" ReadOnly="True" SortExpression="IDДолжности" />
            <asp:BoundField DataField="Описание" HeaderText="Описание" SortExpression="Описание" />
            <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDДолжности" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDДолжности" HeaderText="IDДолжности" InsertVisible="False" ReadOnly="True" SortExpression="IDДолжности" />
            <asp:BoundField DataField="Описание" HeaderText="Описание" SortExpression="Описание" />
            <asp:BoundField DataField="Название" HeaderText="Название" SortExpression="Название" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Должность] WHERE [IDДолжности] = @IDДолжности" InsertCommand="INSERT INTO [Должность] ([Описание], [Название]) VALUES (@Описание, @Название)" SelectCommand="SELECT * FROM [Должность] WHERE ([IDДолжности] = @IDДолжности)" UpdateCommand="UPDATE [Должность] SET [Описание] = @Описание, [Название] = @Название WHERE [IDДолжности] = @IDДолжности">
        <DeleteParameters>
            <asp:Parameter Name="IDДолжности" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Название" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDДолжности" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Название" Type="String" />
            <asp:Parameter Name="IDДолжности" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Должность] WHERE [IDДолжности] = @IDДолжности" InsertCommand="INSERT INTO [Должность] ([Описание], [Название]) VALUES (@Описание, @Название)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDДолжности], [Описание], [Название] FROM [Должность]" UpdateCommand="UPDATE [Должность] SET [Описание] = @Описание, [Название] = @Название WHERE [IDДолжности] = @IDДолжности">
        <DeleteParameters>
            <asp:Parameter Name="IDДолжности" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Название" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Описание" Type="String" />
            <asp:Parameter Name="Название" Type="String" />
            <asp:Parameter Name="IDДолжности" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>


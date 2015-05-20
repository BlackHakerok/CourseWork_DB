<%@ Page Title="Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="COUrsE_WorK.Staff" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDСотрудника" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDСотрудника" HeaderText="IDСотрудника" ReadOnly="True" SortExpression="IDСотрудника" />
            <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" />
            <asp:BoundField DataField="ДатаРождения" HeaderText="ДатаРождения" SortExpression="ДатаРождения" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Сотрудники] WHERE [IDСотрудника] = @IDСотрудника" InsertCommand="INSERT INTO [Сотрудники] ([ФИО], [ДатаРождения]) VALUES (@ФИО, @ДатаРождения)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDСотрудника], [ФИО], [ДатаРождения] FROM [Сотрудники]" UpdateCommand="UPDATE [Сотрудники] SET [ФИО] = @ФИО, [ДатаРождения] = @ДатаРождения WHERE [IDСотрудника] = @IDСотрудника">
        <DeleteParameters>
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ФИО" Type="String" />
            <asp:Parameter Name="ДатаРождения" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ФИО" Type="String" />
            <asp:Parameter Name="ДатаРождения" Type="DateTime" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDСотрудника" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDСотрудника" HeaderText="IDСотрудника" InsertVisible="False" ReadOnly="True" SortExpression="IDСотрудника" />
            <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" />
            <asp:BoundField DataField="ДатаРождения" HeaderText="ДатаРождения" SortExpression="ДатаРождения" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Сотрудники] WHERE [IDСотрудника] = @IDСотрудника" InsertCommand="INSERT INTO [Сотрудники] ([ФИО], [ДатаРождения]) VALUES (@ФИО, @ДатаРождения)" SelectCommand="SELECT * FROM [Сотрудники] WHERE ([IDСотрудника] = @IDСотрудника)" UpdateCommand="UPDATE [Сотрудники] SET [ФИО] = @ФИО, [ДатаРождения] = @ДатаРождения WHERE [IDСотрудника] = @IDСотрудника">
        <DeleteParameters>
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ФИО" Type="String" />
            <asp:Parameter Name="ДатаРождения" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDСотрудника" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ФИО" Type="String" />
            <asp:Parameter Name="ДатаРождения" Type="DateTime" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



<%@ Page Title="Record" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Record.aspx.cs" Inherits="COUrsE_WorK.Record" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDСписка" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDСписка" HeaderText="IDСписка" ReadOnly="True" SortExpression="IDСписка" />
            <asp:TemplateField HeaderText="IDСотрудника" SortExpression="IDСотрудника">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="ФИО" DataValueField="IDСотрудника" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="ФИО" DataValueField="IDСотрудника" Enabled="False" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDДолжности" SortExpression="IDДолжности">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource4" DataTextField="Название" DataValueField="IDДолжности" SelectedValue='<%# Bind("IDДолжности") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="Название" DataValueField="IDДолжности" Enabled="False" SelectedValue='<%# Bind("IDДолжности") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ДатаПриема" HeaderText="ДатаПриема" SortExpression="ДатаПриема" />
            <asp:BoundField DataField="ДатаУвольнения" HeaderText="ДатаУвольнения" SortExpression="ДатаУвольнения" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDСписка" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDСписка" HeaderText="IDСписка" InsertVisible="False" ReadOnly="True" SortExpression="IDСписка" />
            <asp:TemplateField HeaderText="IDСотрудника" SortExpression="IDСотрудника">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="ФИО" DataValueField="IDСотрудника" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="ФИО" DataValueField="IDСотрудника" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ФИО" DataValueField="IDСотрудника" Enabled="False" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDДолжности" SortExpression="IDДолжности">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource4" DataTextField="Название" DataValueField="IDДолжности" SelectedValue='<%# Bind("IDДолжности") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource4" DataTextField="Название" DataValueField="IDДолжности" SelectedValue='<%# Bind("IDДолжности") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="Название" DataValueField="IDДолжности" Enabled="False" SelectedValue='<%# Bind("IDДолжности") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ДатаПриема" HeaderText="ДатаПриема" SortExpression="ДатаПриема" />
            <asp:BoundField DataField="ДатаУвольнения" HeaderText="ДатаУвольнения" SortExpression="ДатаУвольнения" />
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [ПослСписок] WHERE [IDСписка] = @IDСписка" InsertCommand="INSERT INTO [ПослСписок] ([IDСотрудника], [IDДолжности], [ДатаПриема], [ДатаУвольнения]) VALUES (@IDСотрудника, @IDДолжности, @ДатаПриема, @ДатаУвольнения)" SelectCommand="SELECT * FROM [ПослСписок] WHERE ([IDСписка] = @IDСписка)" UpdateCommand="UPDATE [ПослСписок] SET [IDСотрудника] = @IDСотрудника, [IDДолжности] = @IDДолжности, [ДатаПриема] = @ДатаПриема, [ДатаУвольнения] = @ДатаУвольнения WHERE [IDСписка] = @IDСписка">
        <DeleteParameters>
            <asp:Parameter Name="IDСписка" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDДолжности" Type="Int32" />
            <asp:Parameter Name="ДатаПриема" Type="DateTime" />
            <asp:Parameter Name="ДатаУвольнения" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDСписка" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDДолжности" Type="Int32" />
            <asp:Parameter Name="ДатаПриема" Type="DateTime" />
            <asp:Parameter Name="ДатаУвольнения" Type="DateTime" />
            <asp:Parameter Name="IDСписка" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDСотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDДолжности], [Название] FROM [Должность]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [ПослСписок] WHERE [IDСписка] = @IDСписка" InsertCommand="INSERT INTO [ПослСписок] ([IDСотрудника], [IDДолжности], [ДатаПриема], [ДатаУвольнения]) VALUES (@IDСотрудника, @IDДолжности, @ДатаПриема, @ДатаУвольнения)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDСписка], [IDСотрудника], [IDДолжности], [ДатаПриема], [ДатаУвольнения] FROM [ПослСписок]" UpdateCommand="UPDATE [ПослСписок] SET [IDСотрудника] = @IDСотрудника, [IDДолжности] = @IDДолжности, [ДатаПриема] = @ДатаПриема, [ДатаУвольнения] = @ДатаУвольнения WHERE [IDСписка] = @IDСписка">
        <DeleteParameters>
            <asp:Parameter Name="IDСписка" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDДолжности" Type="Int32" />
            <asp:Parameter Name="ДатаПриема" Type="DateTime" />
            <asp:Parameter Name="ДатаУвольнения" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDДолжности" Type="Int32" />
            <asp:Parameter Name="ДатаПриема" Type="DateTime" />
            <asp:Parameter Name="ДатаУвольнения" Type="DateTime" />
            <asp:Parameter Name="IDСписка" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



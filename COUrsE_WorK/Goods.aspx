<%@ Page Title="Goods" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Goods.aspx.cs" Inherits="COUrsE_WorK.Goods" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDТовара" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
    <Columns>
        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="IDТовара" HeaderText="IDТовара" ReadOnly="True" SortExpression="IDТовара" />
        <asp:BoundField DataField="Производитель" HeaderText="Производитель" SortExpression="Производитель" />
        <asp:BoundField DataField="Условие_хранения" HeaderText="Условие_хранения" SortExpression="Условие_хранения" />
        <asp:BoundField DataField="Упаковка" HeaderText="Упаковка" SortExpression="Упаковка" />
        <asp:BoundField DataField="СрокГодности" HeaderText="СрокГодности" SortExpression="СрокГодности" />
        <asp:TemplateField HeaderText="IDТипа" SortExpression="IDТипа">
            <EditItemTemplate>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Описание" DataValueField="IDТипа" SelectedValue='<%# Bind("IDТипа") %>'>
                </asp:DropDownList>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Описание" DataValueField="IDТипа" Enabled="False" SelectedValue='<%# Bind("IDТипа") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDТовара" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDТовара" HeaderText="IDТовара" InsertVisible="False" ReadOnly="True" SortExpression="IDТовара" />
            <asp:BoundField DataField="Производитель" HeaderText="Производитель" SortExpression="Производитель" />
            <asp:BoundField DataField="Условие_хранения" HeaderText="Условие_хранения" SortExpression="Условие_хранения" />
            <asp:BoundField DataField="Упаковка" HeaderText="Упаковка" SortExpression="Упаковка" />
            <asp:BoundField DataField="СрокГодности" HeaderText="СрокГодности" SortExpression="СрокГодности" />
            <asp:TemplateField HeaderText="IDТипа" SortExpression="IDТипа">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Описание" DataValueField="IDТипа" SelectedValue='<%# Bind("IDТипа") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Описание" DataValueField="IDТипа" SelectedValue='<%# Bind("IDТипа") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Описание" DataValueField="IDТипа" Enabled="False" SelectedValue='<%# Bind("IDТипа") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDТипа], [Описание] FROM [Тип]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Товары] WHERE [IDТовара] = @IDТовара" InsertCommand="INSERT INTO [Товары] ([Производитель], [Условие_хранения], [Упаковка], [СрокГодности], [IDТипа]) VALUES (@Производитель, @Условие_хранения, @Упаковка, @СрокГодности, @IDТипа)" SelectCommand="SELECT * FROM [Товары] WHERE ([IDТовара] = @IDТовара)" UpdateCommand="UPDATE [Товары] SET [Производитель] = @Производитель, [Условие_хранения] = @Условие_хранения, [Упаковка] = @Упаковка, [СрокГодности] = @СрокГодности, [IDТипа] = @IDТипа WHERE [IDТовара] = @IDТовара">
        <DeleteParameters>
            <asp:Parameter Name="IDТовара" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Производитель" Type="String" />
            <asp:Parameter Name="Условие_хранения" Type="String" />
            <asp:Parameter Name="Упаковка" Type="String" />
            <asp:Parameter Name="СрокГодности" Type="DateTime" />
            <asp:Parameter Name="IDТипа" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDТовара" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Производитель" Type="String" />
            <asp:Parameter Name="Условие_хранения" Type="String" />
            <asp:Parameter Name="Упаковка" Type="String" />
            <asp:Parameter Name="СрокГодности" Type="DateTime" />
            <asp:Parameter Name="IDТипа" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Товары] WHERE [IDТовара] = @IDТовара" InsertCommand="INSERT INTO [Товары] ([Производитель], [Условие_хранения], [Упаковка], [СрокГодности], [IDТипа]) VALUES (@Производитель, @Условие_хранения, @Упаковка, @СрокГодности, @IDТипа)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDТовара], [Производитель], [Условие_хранения], [Упаковка], [СрокГодности], [IDТипа] FROM [Товары]" UpdateCommand="UPDATE [Товары] SET [Производитель] = @Производитель, [Условие_хранения] = @Условие_хранения, [Упаковка] = @Упаковка, [СрокГодности] = @СрокГодности, [IDТипа] = @IDТипа WHERE [IDТовара] = @IDТовара">
    <DeleteParameters>
        <asp:Parameter Name="IDТовара" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Производитель" Type="String" />
        <asp:Parameter Name="Условие_хранения" Type="String" />
        <asp:Parameter Name="Упаковка" Type="String" />
        <asp:Parameter Name="СрокГодности" Type="DateTime" />
        <asp:Parameter Name="IDТипа" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Производитель" Type="String" />
        <asp:Parameter Name="Условие_хранения" Type="String" />
        <asp:Parameter Name="Упаковка" Type="String" />
        <asp:Parameter Name="СрокГодности" Type="DateTime" />
        <asp:Parameter Name="IDТипа" Type="Int32" />
        <asp:Parameter Name="IDТовара" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


</asp:Content>
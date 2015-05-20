<%@ Page Title="Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="COUrsE_WorK.Orders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDЗаказа" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDЗаказа" HeaderText="IDЗаказа" ReadOnly="True" SortExpression="IDЗаказа" />
            <asp:TemplateField HeaderText="IDСклада" SortExpression="IDСклада">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" Enabled="False" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDЗаказчика" SortExpression="IDЗаказчика">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDЗаказчика" SelectedValue='<%# Bind("IDЗаказчика") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDЗаказчика" Enabled="False" SelectedValue='<%# Bind("IDЗаказчика") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDТовара" SortExpression="IDТовара">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource5" DataTextField="Производитель" DataValueField="IDТовара" SelectedValue='<%# Bind("IDТовара") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource5" DataTextField="Производитель" DataValueField="IDТовара" Enabled="False" SelectedValue='<%# Bind("IDТовара") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ДатаЗаказа" HeaderText="ДатаЗаказа" SortExpression="ДатаЗаказа" />
            <asp:BoundField DataField="СпособДоставки" HeaderText="СпособДоставки" SortExpression="СпособДоставки" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
            <asp:BoundField DataField="Объем" HeaderText="Объем" SortExpression="Объем" />
            <asp:TemplateField HeaderText="IDСотрудника" SortExpression="IDСотрудника">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника" Enabled="False" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDЗаказа" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDЗаказа" HeaderText="IDЗаказа" InsertVisible="False" ReadOnly="True" SortExpression="IDЗаказа" />
            <asp:TemplateField HeaderText="IDСклада" SortExpression="IDСклада">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" Enabled="False" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDЗаказчика" SortExpression="IDЗаказчика">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDЗаказчика" SelectedValue='<%# Bind("IDЗаказчика") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDЗаказчика" SelectedValue='<%# Bind("IDЗаказчика") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDЗаказчика" Enabled="False" SelectedValue='<%# Bind("IDЗаказчика") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDТовара" SortExpression="IDТовара">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SqlDataSource5" DataTextField="Производитель" DataValueField="IDТовара" SelectedValue='<%# Bind("IDТовара") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource5" DataTextField="Производитель" DataValueField="IDТовара" SelectedValue='<%# Bind("IDТовара") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList13" runat="server" DataSourceID="SqlDataSource5" DataTextField="Производитель" DataValueField="IDТовара" Enabled="False" SelectedValue='<%# Bind("IDТовара") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ДатаЗаказа" HeaderText="ДатаЗаказа" SortExpression="ДатаЗаказа" />
            <asp:BoundField DataField="СпособДоставки" HeaderText="СпособДоставки" SortExpression="СпособДоставки" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
            <asp:BoundField DataField="Объем" HeaderText="Объем" SortExpression="Объем" />
            <asp:TemplateField HeaderText="IDСотрудника" SortExpression="IDСотрудника">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList19" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList20" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList18" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника" Enabled="False" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDСотрудника], [ФИО] FROM [Сотрудники]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDТовара], [Производитель] FROM [Товары]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDСклада], [Адрес] FROM [Склады]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDЗаказчика], [Адрес] FROM [Заказчики]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Заказы] WHERE [IDЗаказа] = @IDЗаказа" InsertCommand="INSERT INTO [Заказы] ([IDСклада], [IDЗаказчика], [IDТовара], [ДатаЗаказа], [СпособДоставки], [Цена], [Объем], [IDСотрудника]) VALUES (@IDСклада, @IDЗаказчика, @IDТовара, @ДатаЗаказа, @СпособДоставки, @Цена, @Объем, @IDСотрудника)" SelectCommand="SELECT * FROM [Заказы] WHERE ([IDЗаказа] = @IDЗаказа)" UpdateCommand="UPDATE [Заказы] SET [IDСклада] = @IDСклада, [IDЗаказчика] = @IDЗаказчика, [IDТовара] = @IDТовара, [ДатаЗаказа] = @ДатаЗаказа, [СпособДоставки] = @СпособДоставки, [Цена] = @Цена, [Объем] = @Объем, [IDСотрудника] = @IDСотрудника WHERE [IDЗаказа] = @IDЗаказа">
        <DeleteParameters>
            <asp:Parameter Name="IDЗаказа" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаЗаказа" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDЗаказа" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаЗаказа" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDЗаказа" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Заказы] WHERE [IDЗаказа] = @IDЗаказа" InsertCommand="INSERT INTO [Заказы] ([IDСклада], [IDЗаказчика], [IDТовара], [ДатаЗаказа], [СпособДоставки], [Цена], [Объем], [IDСотрудника]) VALUES (@IDСклада, @IDЗаказчика, @IDТовара, @ДатаЗаказа, @СпособДоставки, @Цена, @Объем, @IDСотрудника)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDЗаказа], [IDСклада], [IDЗаказчика], [IDТовара], [ДатаЗаказа], [СпособДоставки], [Цена], [Объем], [IDСотрудника] FROM [Заказы]" UpdateCommand="UPDATE [Заказы] SET [IDСклада] = @IDСклада, [IDЗаказчика] = @IDЗаказчика, [IDТовара] = @IDТовара, [ДатаЗаказа] = @ДатаЗаказа, [СпособДоставки] = @СпособДоставки, [Цена] = @Цена, [Объем] = @Объем, [IDСотрудника] = @IDСотрудника WHERE [IDЗаказа] = @IDЗаказа">
        <DeleteParameters>
            <asp:Parameter Name="IDЗаказа" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаЗаказа" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDЗаказчика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаЗаказа" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDЗаказа" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>

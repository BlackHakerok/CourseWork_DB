<%@ Page Title="Supply" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Supply.aspx.cs" Inherits="COUrsE_WorK.Supply" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDПоставки" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения.">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDПоставки" HeaderText="IDПоставки" ReadOnly="True" SortExpression="IDПоставки" />
            <asp:TemplateField HeaderText="IDСклада" SortExpression="IDСклада">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" Enabled="False" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDПоставщика" SortExpression="IDПоставщика">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDПоставщика" SelectedValue='<%# Bind("IDПоставщика") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDПоставщика" Enabled="False" SelectedValue='<%# Bind("IDПоставщика") %>'>
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
            <asp:TemplateField HeaderText="IDСотрудника" SortExpression="IDСотрудника">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource6" DataTextField="ФИО" DataValueField="IDСотрудника" Enabled="False" SelectedValue='<%# Bind("IDСотрудника") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="СпособДоставки" HeaderText="СпособДоставки" SortExpression="СпособДоставки" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
            <asp:BoundField DataField="Объем" HeaderText="Объем" SortExpression="Объем" />
            <asp:BoundField DataField="ДатаПоставки" HeaderText="ДатаПоставки" SortExpression="ДатаПоставки" DataFormatString="{0:d}" />
        </Columns>
    </asp:GridView>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="IDПоставки" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="IDПоставки" HeaderText="IDПоставки" InsertVisible="False" ReadOnly="True" SortExpression="IDПоставки" />
            <asp:TemplateField HeaderText="IDСклада" SortExpression="IDСклада">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Адрес" DataValueField="IDСклада" Enabled="False" SelectedValue='<%# Bind("IDСклада") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IDПоставщика" SortExpression="IDПоставщика">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDПоставщика" SelectedValue='<%# Bind("IDПоставщика") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDПоставщика" SelectedValue='<%# Bind("IDПоставщика") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource4" DataTextField="Адрес" DataValueField="IDПоставщика" Enabled="False" SelectedValue='<%# Bind("IDПоставщика") %>'>
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
            <asp:BoundField DataField="ДатаПоставки" HeaderText="ДатаПоставки" SortExpression="ДатаПоставки" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDПоставщика], [Адрес] FROM [Поставщики]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" SelectCommand="SELECT [IDСклада], [Адрес] FROM [Склады]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Поставки] WHERE [IDПоставки] = @IDПоставки" InsertCommand="INSERT INTO [Поставки] ([IDСклада], [IDПоставщика], [IDТовара], [ДатаПоставки], [СпособДоставки], [Цена], [Объем], [IDСотрудника]) VALUES (@IDСклада, @IDПоставщика, @IDТовара, @ДатаПоставки, @СпособДоставки, @Цена, @Объем, @IDСотрудника)" SelectCommand="SELECT * FROM [Поставки] WHERE ([IDПоставки] = @IDПоставки)" UpdateCommand="UPDATE [Поставки] SET [IDСклада] = @IDСклада, [IDПоставщика] = @IDПоставщика, [IDТовара] = @IDТовара, [ДатаПоставки] = @ДатаПоставки, [СпособДоставки] = @СпособДоставки, [Цена] = @Цена, [Объем] = @Объем, [IDСотрудника] = @IDСотрудника WHERE [IDПоставки] = @IDПоставки">
        <DeleteParameters>
            <asp:Parameter Name="IDПоставки" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаПоставки" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="IDПоставки" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаПоставки" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDПоставки" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1 %>" DeleteCommand="DELETE FROM [Поставки] WHERE [IDПоставки] = @IDПоставки" InsertCommand="INSERT INTO [Поставки] ([IDСклада], [IDПоставщика], [IDТовара], [ДатаПоставки], [СпособДоставки], [Цена], [Объем], [IDСотрудника]) VALUES (@IDСклада, @IDПоставщика, @IDТовара, @ДатаПоставки, @СпособДоставки, @Цена, @Объем, @IDСотрудника)" ProviderName="<%$ ConnectionStrings:Course_wo_wo_WorkConnectionString1.ProviderName %>" SelectCommand="SELECT [IDПоставки], [IDСклада], [IDПоставщика], [IDТовара], [ДатаПоставки], [СпособДоставки], [Цена], [Объем], [IDСотрудника] FROM [Поставки]" UpdateCommand="UPDATE [Поставки] SET [IDСклада] = @IDСклада, [IDПоставщика] = @IDПоставщика, [IDТовара] = @IDТовара, [ДатаПоставки] = @ДатаПоставки, [СпособДоставки] = @СпособДоставки, [Цена] = @Цена, [Объем] = @Объем, [IDСотрудника] = @IDСотрудника WHERE [IDПоставки] = @IDПоставки">
        <DeleteParameters>
            <asp:Parameter Name="IDПоставки" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаПоставки" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDСклада" Type="Int32" />
            <asp:Parameter Name="IDПоставщика" Type="Int32" />
            <asp:Parameter Name="IDТовара" Type="Int32" />
            <asp:Parameter Name="ДатаПоставки" Type="DateTime" />
            <asp:Parameter Name="СпособДоставки" Type="String" />
            <asp:Parameter Name="Цена" Type="Double" />
            <asp:Parameter Name="Объем" Type="Double" />
            <asp:Parameter Name="IDСотрудника" Type="Int32" />
            <asp:Parameter Name="IDПоставки" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>



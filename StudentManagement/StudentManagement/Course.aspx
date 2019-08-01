<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="StudentManagement.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
<table>
    <tr>
        <th>
            <asp:Label ID="CoureseCodeLabel" runat="server" Text="Course Code :"></asp:Label>

        </th>
        <td>
            <asp:TextBox ID="CourseCode_TextBox" runat="server"></asp:TextBox>
        </td>
    </tr>

      <tr>
        <th>
            <asp:Label ID="CoureName_Label" runat="server" Text="Course Name :"></asp:Label>

        </th>
        <td>
            <asp:TextBox ID="CourseName_TextBox" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <th>        <asp:Button ID="Course_Button" runat="server"  BorderColor="#0000cc" Text="OK" OnClick="Course_Button_Click"></asp:Button>

        </th> 
   </tr>

</table>
    </div>
    <div>
        
        <asp:GridView ID="CourseGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Course Code">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Course_Code") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Course_Code") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Couse_Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Couse_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#0099FF" />
            <HeaderStyle BackColor="#FF6600" />
        </asp:GridView>
    </div>
</asp:Content>

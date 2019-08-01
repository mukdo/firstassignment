<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="StudentManagement.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style> 
           .search
           {
               display:block;
               float:right;
               padding:15px;
           }
           
        </style>
    
<div>
   
   <table>
     <tr>
         <th>
       <asp:Label ID="StudentId" runat="server" Text="Student Id:"></asp:Label>
        </th>
         <td>
             
             <asp:TextBox ID="StuId" placeholder="Student Id" runat="server"></asp:TextBox>
              
         </td>
       
     </tr>
         <tr>
         <th>
       <asp:Label ID="StuName" runat="server" Text="Student Name:"></asp:Label>
        </th>
         <td>
             <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
            
         </td>
       </tr>

       
         <tr>
         <th>
       <asp:Label ID="StuPhone" runat="server" Text="Phone Number:"></asp:Label>
        </th>
         <td>
             <asp:TextBox ID="Stu_Phn" runat="server"></asp:TextBox>
            
         </td>
       </tr>

      
         <tr>
         <th>
       <asp:Label ID="StuAdd" runat="server" Text="Student Address:"></asp:Label>
        </th>
         <td>
             <asp:TextBox ID="Stu_Address" runat="server"></asp:TextBox>
            
         </td>
       </tr>
      <tr> 
       <th>
          <asp:Button ID="ok" runat="server" Text="OK" OnClick="ok_Click" />
         </th>
            </tr>
       </table>
    </div>
    
    
    <div class ="search"> 
        <asp:TextBox ID="Search_student_TextBox" placeholder="Search Id" runat="server"></asp:TextBox>
        <asp:Button ID="Search_Button_student" runat="server" Text="Search" OnClick="Search_Button_student_Click" />
            
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="600px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Student ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Student Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Student_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Student_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone_Number") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Phone_Number") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>

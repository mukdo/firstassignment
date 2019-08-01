<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inserting Page.aspx.cs" Inherits="Doctor_Personal_Detailes.Inserting_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="ID-NO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="id_TextBox" runat="server"></asp:TextBox>
            </td>

        <td>   </td>   <td>  </td>  <td>  &nbsp;</td> <td>   &nbsp;</td>  
        
            <td>
                <asp:Label ID="Label2" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                    <td>
                <asp:TextBox ID="mobile_TextBox" runat="server"></asp:TextBox>
            </td>

            </tr> 

             <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="name_TextBox" runat="server"></asp:TextBox>
            </td>

        <td> </td>
        
            <td>
                <asp:Label ID="Label5" runat="server" Text="DATE OF JOIN"></asp:Label>  
            </td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" Height="14px" Width="16px"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
                    <td>
                <asp:TextBox ID="age_TextBox" runat="server"></asp:TextBox>
            </td>
            <td> 

            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="DATE OF CONFORMATION"></asp:Label>  
            </td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server" Height="14px" Width="16px"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="DEPARTMENT"></asp:Label>
            </td>
           
            <td>
                 <asp:TextBox ID="dep_TextBox" runat="server"></asp:TextBox>
            </td>
        </tr>

            <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="GENDER"></asp:Label>
            </td>
           
            <td>

                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
                <td> </td> 
                <td>
                    <asp:Label ID="Label9" runat="server" Text="SALARY"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="salary_TextBox" runat="server"></asp:TextBox>
                </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Address_TextBox" runat="server" Height="73px" TextMode="MultiLine" Width="289px" BorderColor ="#33cc33"></asp:TextBox>
            </td>
            <td>   </td>
           <td>
               <asp:Label ID="Label11" runat="server" Text="REASON FOR CONFIRMATION "></asp:Label>
           </td>
             <td>
                <asp:TextBox ID="reason_TextBox" runat="server" ForeColor="#0033CC" Height="61px" TextMode="MultiLine" Width="307px" BorderColor="#33cc33"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="E-mail ID "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="email_TextBox" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="DISTRICT"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="district_TextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="STATE "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="state_TextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <style>
        .button{
            position:absolute;
            left:45%;

        }
    </style>
    <div class ="button">

 
    <asp:Button ID="Button1" runat="server" Text="SAVE" BorderColor="#0033CC" OnClick="Button1_Click"  />
           </div>
</asp:Content>

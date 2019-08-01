<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SheetPrepair.aspx.cs" Inherits="ResearchPaper.SheetPrepair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div>
        <table>
            <tr>
                <td>
         <asp:Label ID="Label1" runat="server" Text="Department : "></asp:Label>
                </td>
         <td> <asp:TextBox ID="TextBox1" placeholder=" Enter the department" title="Example: Software Engineering" CssClass="textbox" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>

     <td> <asp:Label ID="Label2" runat="server" Text="Date : "></asp:Label> </td>
       <td> <asp:TextBox ID="TextBox2" placeholder=" mm/dd/yyyy or dd month,yyyy" title="please use formate mm/dd/yyyy or day month,year" CssClass="textbox" runat="server"></asp:TextBox> <br /> </td>
            </tr>

            <tr>
                <td>
         <asp:Label ID="Label3" runat="server" Text="Quarter : "></asp:Label>
                </td>
         <td> <asp:TextBox ID="TextBox3" title="example : First Quater (January - April) 2019" CssClass="textbox" placeholder=" Quater name (month-month) year" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>

     <td> <asp:Label ID="Label4" runat="server" Text="Research Coordinator : "></asp:Label> </td>
       <td> <asp:TextBox ID="TextBox4"  placeholder=" Enter Research Coordinator Name" CssClass="textbox" runat="server"></asp:TextBox> <br /> </td>
           </tr>
            <tr>

     <td> <asp:Label ID="Label5" runat="server" Text=" Research Progress : "></asp:Label> </td>
       <td> <asp:TextBox ID="TextBox5" title="Example: SEPTEMBER-DECEMBER 2019" placeholder=" Month - Month Year"  CssClass="textbox" runat="server"></asp:TextBox> <br /> </td>
           </tr>
       </table>
    </div>
    <div>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="258px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>  
                
                    <asp:Calendar ID="Calendar3" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="258px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar> 
            
                 <asp:Button ID="SubmitBtn" CssClass="button" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
          
        
    </div>
</asp:Content>

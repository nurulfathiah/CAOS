<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CPUSched.aspx.cs" Inherits="CPUSched" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">

    .auto-style4 {
        text-align: justify;
    }
        .style3
        {
            width: 100%;
           animation-name: animatetop;
           animation-duration: 0.4s
}



/* Add Animation */
@keyframes animatetop {
    from {top: -300px; opacity: 0}
    to {top: 0; opacity: 1}
}
                     
        
        .style4
        {
            width: 124px;
        }
        .style5
        {
            height: 200px;
        }
        .style15
        {
            width: 413px;
        }
        .style14
        {
            width: 157px;
        }
        .style9
        {
            height: 268px;
            width: 157px;
        }
        .style12
        {
            height: 268px;
            }
        .auto-style5 {
            width: 1725px;
            height: 980px;
        }
        .auto-style6 {
            width: 262px;
        }
        .auto-style19 {
            width: 123%;
            height: 845px;
        }
        .ClosePopupCls { color:rosybrown; font-size:20px; cursor:pointer; text-decoration:none; }
        .ClosePopupCls a:link  { color:rosybrown; text-decoration:none;  }
        .ClosePopupCls a:visited { color:maroon; text-decoration:none; }
        .ClosePopupCls a:hover  { color:maroon; text-decoration:none; }
        .auto-style35 {
            height: 38px;
        text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
            color: #000000;
        }
        .auto-style36 {
            text-align: right;
        }

        .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #4CAF50;
    color: white;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: #008CBA;
    color: white;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}

.button4 {
    background-color: white;
    color: black;
    border: 2px solid #e7e7e7 ;
}

.button4:hover {background-color: #e7e7e7;}

.button5 {
    background-color: white;
    color: black;
    border: 2px solid #555555;
}

.button5:hover {
    background-color: #555555;
    color: white;
}


.style3
        {
            width: 100%;
           animation-name: animatetop;
           animation-duration: 0.4s
}


        .auto-style62 {
            width: 96%;
            animation-name: animatetop;
            animation-duration: 0.4s;
            height: 406px;
        }
        .auto-style63 {
            height: 369px;
        }
        .auto-style66 {
            height: 199px;
        }
        .auto-style67 {
        text-align: justify;
        width: 286px;
        height: 233px;
    }
    .auto-style68 {
        text-align: center;
        width: 286px;
        height: 34px;
            font-family: Helvetica;
            font-weight: bold;
            font-size: small;
        }
    .auto-style69 {
        text-align: center;
        height: 34px;
             width: 838px;
         }
    .auto-style71 {
        text-align: justify;
        height: 233px;
             width: 838px;
         }
    

    .auto-style75 {
        width: 76%;
        animation-name: animatetop;
        animation-duration: 0.4s;
    }
    .auto-style77 {
        height: 742px;
    }


    .auto-style78 {
        text-align: justify;
        width: 1123px;
        height: 83px;
    }


         .auto-style79 {
             width: 1030px;
         }
         .auto-style80 {
             font-weight: normal;
             height: 28px;
             width: 257px;
             text-align: left;
         }
         .auto-style81 {
             font-weight: normal;
             height: 27px;
             width: 257px;
             text-align: left;
         }
         .auto-style94 {
             height: 28px;
             width: 257px;
         }
         .auto-style95 {
             width: 257px;
         }
         .auto-style96 {
             height: 38px;
             text-align: left;
             font-family: Arial, Helvetica, sans-serif;
             font-weight: bold;
             font-size: medium;
             color: #000000;
             width: 15px;
         }
         .auto-style97 {
             height: 38px;
             text-align: center;
             font-family: Arial, Helvetica, sans-serif;
             font-weight: bold;
             font-size: medium;
             color: #000000;
             width: 435px;
         }
         .auto-style98 {
             width: 257px;
             text-align: left;
             height: 33px;
         }
         .auto-style99 {
             height: 27px;
             width: 257px;
             text-align: left;
         }
         .auto-style100 {
             height: 28px;
             width: 257px;
             text-align: left;
         }


         .auto-style101 {
             width: 257px;
             height: 33px;
         }


        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <table class="auto-style19">
        <tr>
            <td class="auto-style78">
                <table class="auto-style75">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label16" runat="server" Font-Names="Lucida Sans" Font-Size="Large" ForeColor="#006666" Text="Algorithm Selection :"></asp:Label>
&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="128px" BackColor="White" Font-Names="Lucida Sans" Font-Size="Medium" ForeColor="#006666" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="Worst Fit">FCFS</asp:ListItem>
                                <asp:ListItem>Non-Preemptive Priority</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style36">
                            <asp:Label ID="Label7" runat="server" Text="CPU SCHEDULING" Font-Bold="True" Font-Names="Lucida Sans" Font-Size="X-Large" Font-Underline="False" ForeColor="#006666"></asp:Label>
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style77">
                    <table class="auto-style5">
                    <tr>
                        <td class="auto-style6" rowspan="6" style="border-style: none; border-width: thin; border-color: #808080;" valign="top">
                            <br />
                            <br />
                            <br />
                            <table class="auto-style62" style="border: thin none #C0C0C0;">
                                <tr>
                                    <td class="auto-style63" style="border-style: none; border-width: thin;">
                                                    <asp:Button ID="btnPriority" CssClass="button button4" runat="server" Text="Priority Simulate" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="btnProcessCreate_Click" />
                                                    <asp:Button ID="btnCompute" CssClass="button button4" runat="server" Text="FCFS Simulate" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="btnSimulate_Click" />
                                                    <asp:Button ID="btnReset" CssClass="button button4" runat="server" Text="Reset" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="btnReset_Click" />
                                                    <asp:Button ID="btnExistingProcesses" CssClass="button button4" runat="server" Text="Existing Processes " Width="252px" OnClick="ButtonExistingP_Click" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" />
                                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                                </td>
                                </tr>
                                </table>
                            <br /></td>
                        <td style="border: thin none #808080; font-variant: normal; " valign="middle" class="auto-style35" colspan="4">
                            <table class="auto-style79">
                                <tr>
                                    <td class="auto-style81"><strong>Process Number :</strong></td>
                                    <td class="auto-style99">
                                        <asp:TextBox ID="WorkSum" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style99">
                                        <asp:Button ID="btnWorkSum" runat="server" OnClick="btnWorkSum_Click" Text="Save" />
                                    </td>
                                    <td class="auto-style99">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style80"><strong>Process :</strong></td>
                                    <td class="auto-style100">
                                        <asp:DropDownList ID="DropDownListWork" runat="server" Height="21px" OnSelectedIndexChanged="DropDownListWork_SelectedIndexChanged" Width="162px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style94">&nbsp;</td>
                                    <td class="auto-style94"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style100">Arrvial :</td>
                                    <td class="auto-style100">
                                        <asp:TextBox ID="arrivaltime" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style94"></td>
                                    <td class="auto-style94"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style99">Burst :</td>
                                    <td class="auto-style99">
                                        <asp:TextBox ID="bursttime" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style99">
                                        <asp:Button ID="btnTime" runat="server" OnClick="btnTime_Click" Text="Save" />
                                    </td>
                                    <td class="auto-style99">
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style98">Priority :</td>
                                    <td class="auto-style98">
                                        <asp:TextBox ID="tPriority" runat="server"></asp:TextBox>
                                    </td>
                                    <td class="auto-style98">
                                        <asp:Button ID="btnTime0" runat="server" OnClick="btnTime1_Click" Text="Save" />
                                    </td>
                                    <td class="auto-style101"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style95">&nbsp;</td>
                                    <td class="auto-style95">&nbsp;</td>
                                    <td class="auto-style95">&nbsp;</td>
                                    <td class="auto-style95">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: thin none #808080; font-variant: normal; " valign="middle" class="auto-style96">
                            <asp:Label ID="Label4" runat="server" ForeColor="#FF3300" Text="Incomplete"></asp:Label>
                        </td>
                        <td style="border: thin none #808080; font-variant: normal; " valign="middle" class="auto-style35" colspan="2">GENERATED GANTT CHART</td>
                        <td style="border: thin none #808080; font-variant: normal; " valign="middle" class="auto-style97">&nbsp;</td>
                    </tr>
                    <tr style="border-style: none; border-width: thin;">
                        <td class="auto-style66" style="border-style: solid; border-width: thin; border-color: #808080;" colspan="4">
                            <asp:Chart ID="Chart1" runat="server" Height="218px" Width="1334px">
                                <series>
                                    <asp:Series ChartArea="ChartArea1" ChartType="StackedBar" Name="Series1">
                                    </asp:Series>
                                </series>
                                <chartareas>
                                    <asp:ChartArea Name="ChartArea1">
                                    </asp:ChartArea>
                                </chartareas>
                            </asp:Chart>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: thin solid #808080; border-right: thin none #808080; border-top: thin none #808080; border-bottom: thin solid #808080; font-variant: normal; " class="auto-style68" colspan="2">
                            AVERAGE CALCULATION</td>
                        <td style="border-style: none solid solid solid; border-width: thin; border-color: #808080; font-family: Helvetica; font-weight: bold; font-style: normal; font-variant: normal; font-size: small;" class="auto-style69" colspan="2">
                            ALGORITHM CALCULATION</td>
                    </tr>
                    <tr>
                        <td style="border-style: none none solid solid; border-width: thin; border-color: #808080;" class="auto-style67" colspan="2">
                            <asp:GridView ID="gvFCFS" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" Height="234px" OnSelectedIndexChanged="gvFCFS_SelectedIndexChanged" Width="857px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Process" HeaderText="FCFS-Process">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Arrival" HeaderText="Arrival">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Burst" HeaderText="Burst">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Start" HeaderText="Start">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="End" HeaderText="End">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Idle" HeaderText="Idle">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="EndIdle" HeaderText="EndIdle">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TA" HeaderText="TA">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Waiting" HeaderText="Waiting">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                        </td>
                        <td style="border-style: none solid solid solid; border-width: thin; border-color: #808080;" class="auto-style71" colspan="2">
                            &nbsp;TOTAL TA :<br />
                            <asp:TextBox ID="txtTotal" runat="server" Font-Bold="True" Font-Size="Large" OnTextChanged="txtTotal_TextChanged"></asp:TextBox>
                            <br />
                            TOTAL AVG:<br />
                            <asp:TextBox ID="txtAVG" runat="server" Font-Bold="True" Font-Size="Large" Height="16px" OnTextChanged="txtAVG_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: none none solid solid; border-width: thin; border-color: #808080;" class="auto-style67" colspan="2">
                            <asp:GridView ID="gvFCFS0" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Bold="True" Font-Size="Large" ForeColor="Black" GridLines="Vertical" Height="234px" OnSelectedIndexChanged="gvFCFS_SelectedIndexChanged" Width="857px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Process" HeaderText="Priority-Process">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Priority" HeaderText="Priority">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Arrival" HeaderText="Arrival">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Burst" HeaderText="Burst">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Start" HeaderText="Start">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="End" HeaderText="End">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TA" HeaderText="TA">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Waiting" HeaderText="Waiting">
                                    <HeaderStyle Width="80px" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                        </td>
                        <td style="border-style: none solid solid solid; border-width: thin; border-color: #808080;" class="auto-style71" colspan="2">
                            <br />
                            TOTAL TA<br />
                            <asp:TextBox ID="txtTotal0" runat="server"></asp:TextBox>
                            <br />
                            AVG TA<br />
                            <asp:TextBox ID="txtAVG0" runat="server" Height="16px"></asp:TextBox>
                            <br />
                            AVG WT<br />
                            <asp:TextBox ID="txtAVGWT" runat="server" Height="16px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="MM.aspx.cs" Inherits="MM" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">

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
            width: 1714px;
            height: 486px;
        }
        .auto-style6 {
            width: 216px;
        }
        .auto-style19 {
            width: 119%;
            height: 770px;
        }
        .ClosePopupCls { color:rosybrown; font-size:20px; cursor:pointer; text-decoration:none; }
        .ClosePopupCls a:link  { color:rosybrown; text-decoration:none;  }
        .ClosePopupCls a:visited { color:maroon; text-decoration:none; }
        .ClosePopupCls a:hover  { color:maroon; text-decoration:none; }
        .auto-style35 {
            height: 38px;
        text-align: center;
              width: 1063px;
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


.auto-style28 {
            height: 36px;
            text-align: center;
            background-color: bisque;
        }
.style3
        {
            width: 100%;
           animation-name: animatetop;
           animation-duration: 0.4s
}
.auto-style20 {
            height: 31px;
            background-color: bisque;
        }
        .auto-style24 {
            width: 100%;
            height: 196px;
        }
        .auto-style45 {
            text-align: left;
            width: 281px;
        }
.auto-style27 {
            width: 1000px;
            height: 80px;
        }


        .auto-style47 {
            height: 39px;
            text-align: right;
        }
        .auto-style50 {
            width: 332px;
        }
        .auto-style54 {
            width: 332px;
            height: 43px;
        }
        .auto-style56 {
            width: 333px;
        }
        .auto-style58 {
            width: 479px;
        }
        .auto-style60 {
            width: 479px;
            height: 43px;
        }
        .auto-style61 {
            text-align: left;
            width: 281px;
            height: 43px;
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
        .auto-style64 {
            height: 38px;
            width: 707px;
        text-align: center;
    }
        .auto-style69 {
        text-align: center;
        height: 5px;
              font-family: Helvetica;
              font-weight: bold;
              font-size: small;
              width: 1063px;
          }
    .auto-style73 {
        width: 645px;
            text-align: center;
        }
    

    .auto-style75 {
        width: 76%;
        animation-name: animatetop;
        animation-duration: 0.4s;
    }
    .auto-style76 {
        text-align: center;
        width: 1063px;
        height: 233px;
    }
    .auto-style77 {
        height: 742px;
    }


    .auto-style78 {
        text-align: justify;
        width: 1123px;
        height: 83px;
    }


        .auto-style81 {
            width: 100%;
        }


          .auto-style82 {
              text-align: center;
          }


          .auto-style83 {
              width: 479px;
              text-align: center;
          }


        .auto-style84 {
        margin-left: 40px;
    }


          .auto-style85 {
              height: 199px;
              text-align: center;
              width: 707px;
          }


          .auto-style86 {
              height: 38px;
              text-align: center;
              width: 645px;
          }
          .auto-style87 {
              text-align: center;
              height: 5px;
          }
          .auto-style88 {
              text-align: center;
              width: 1063px;
          }


        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style78">
                <table class="auto-style75">
                    <tr>
                        <td class="auto-style84">
                            <asp:Label ID="Label16" runat="server" Font-Names="Lucida Sans" Font-Size="Large" ForeColor="#006666" Text="Algorithm Selection :"></asp:Label>
&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="128px" BackColor="White" Font-Names="Lucida Sans" Font-Size="Medium" ForeColor="#006666" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Value="1">Best Fit</asp:ListItem>
                                <asp:ListItem Value="2">Worst Fit</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style36">
                            <asp:Label ID="Label7" runat="server" Text="Memory Management" Font-Bold="True" Font-Names="Lucida Sans" Font-Size="X-Large" Font-Underline="False" ForeColor="#006666"></asp:Label>
                        </td>
                    </tr>
                    </table>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="auto-style77">
                    <table class="auto-style5">
                    <tr>
                        <td class="auto-style6" rowspan="4" style="border-style: none; border-width: thin; border-color: #808080;" valign="top">
                            <br />
                            <br />
                            <br />
                            <table class="auto-style62" style="border: thin none #C0C0C0;">
                                <tr>
                                    <td class="auto-style63" style="border-style: none; border-width: thin;">
                                                    <asp:Button ID="btnMemCreate" CssClass="button button4" runat="server" Text="Memory Block Creation" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="btnMemCreate_Click" />
                                                    <asp:Button ID="btnPCreate" CssClass="button button4" runat="server" Text="Create Process" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="Button3_Click" />
                                                    <asp:Button ID="Button2" CssClass="button button4" runat="server" Text="Simulate" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="ButtonSimulate_Click" />
                                                    <asp:Button ID="Button5" CssClass="button button4" runat="server" Text="Reset" Width="252px" Font-Names="Lucida Sans" Font-Size="Small" ForeColor="#009999" Font-Bold="True" OnClick="Button5_Click" />
                                                    <br />
                                                    <br />
                                                  </td>
                                </tr>
                                </table>
                            <br /></td>
                        <td style="border-style: none; border-width: thin; border-color: #808080; font-family: Arial, Helvetica, sans-serif; font-weight: bolder; font-style: normal; font-variant: normal; color: #000000; font-size: medium;" valign="middle" class="auto-style64">MEMORY BLOCK</td>
                        <td style="border-style: none; border-width: thin; border-color: #808080; font-family: Helvetica; font-weight: bold; font-style: normal; font-variant: normal; font-size: medium;" valign="middle" class="auto-style86">PROCESSES CREATED</td>
                        <td style="border-style: none; border-width: thin; border-color: #808080; font-family: Helvetica; font-weight: bold; font-style: normal; font-variant: normal; font-size: medium;" valign="middle" class="auto-style35">Memory Allocation </td>
                    </tr>
                    <tr style="border-style: none; border-width: thin;">
                        <td class="auto-style85" style="border-style: solid none solid solid; border-width: thin; border-color: #808080;">
                            <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="270px" Width="470px" Font-Names="Calibri" Font-Size="Medium">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                        <td class="auto-style73" style="border-style: solid; border-width: thin; border-color: #808080; font-family: Helvetica; font-size: x-small; font-weight: bold; font-style: normal; font-variant: normal;">
                            <asp:GridView ID="GridView7" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Italic="False" Font-Names="Calibri" Font-Size="Medium" Height="270px" Width="470px" Font-Bold="False">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                        <td class="auto-style88" style="border-style: solid solid solid none; border-width: thin; border-color: #808080; font-family: Helvetica; font-size: x-small; font-weight: bold; font-style: normal; font-variant: normal;">
                            <asp:GridView ID="GridView8" runat="server" OnRowDataBound="GridView8_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Bold="False" Font-Names="Calibri" Font-Size="Medium" Height="270px" Width="530px">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: none solid solid solid; border-width: thin; border-color: #808080; font-family: Helvetica; font-weight: bold; font-style: normal; font-variant: normal; font-size: small;" class="auto-style87" colspan="2">
                            EXTERNAL FRAGMENTATION<br />
                        </td>
                        <td style="border-left: thin none #808080; border-right: thin solid #808080; border-top: thin none #808080; border-bottom: thin solid #808080; font-variant: normal; " class="auto-style69">
                            RESULTS OBTAINED</td>
                    </tr>
                    <tr>
                        <td style="border-style: none solid solid solid; border-width: thin; border-color: #808080; font-family: Helvetica; font-weight: bold; font-style: normal; font-variant: normal; font-size: small;" class="auto-style82" colspan="2">
                            <asp:Label ID="Label18" runat="server" Font-Size="Large"></asp:Label>
                        </td>
                        <td style="border-style: none solid solid none; border-width: thin; border-color: #808080;" class="auto-style76">
                            <asp:Label ID="Label17" runat="server"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" Height="157px" OnTextChanged="TextBox4_TextChanged1" TextMode="MultiLine" Width="540px" ReadOnly="True" Font-Bold="True" Font-Size="X-Large"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server" BackColor="#FF9999" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px">
       <table class="auto-style1">
            <tr>
                <td class="auto-style47" style="background-color: bisque">
                    <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click" OnClientScript="javascript:window.close();" CssClass="ClosePopupCls" ForeColor="Red">Close [x]</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="background-color: bisque">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <table class="style3">
                                <tr>
                                    <td class="auto-style28" colspan="2">
                                        <asp:Label ID="Label1" runat="server" Text="Memory Block Creation"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <table class="auto-style24">
                                            <tr>
                                                <td class="auto-style36">
                                                    <table class="auto-style27">
                                                        <tr>
                                                            <td class="auto-style83" rowspan="6">
                                                                <asp:GridView ID="GridView11" runat="server" HorizontalAlign="Center" Visible="False">
                                                                    <EditRowStyle VerticalAlign="Middle" />
                                                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <SelectedRowStyle VerticalAlign="Bottom" />
                                                                </asp:GridView>
                                                            </td>
                                                            <td class="auto-style50">
                                                                <asp:Label ID="Label13" runat="server" Text="No. of Blocks:"></asp:Label>
                                                            </td>
                                                            <td class="auto-style45">
                                                                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" AutoCompleteType="Disabled"></asp:TextBox>
                                                            </td>
                                                            <td class="auto-style56" rowspan="6">
                                                                <asp:GridView ID="GridView6" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                    <EditRowStyle VerticalAlign="Middle" BackColor="#7C6F57" />
                                                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E3EAEB" />
                                                                    <SelectedRowStyle VerticalAlign="Bottom" BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54"></td>
                                                            <td class="auto-style61">
                                                                <asp:Button ID="BtnAdd0" runat="server" OnClick="BtnAdd0_Click1" Text="ADD" Height="28px" Width="139px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54">
                                                                <asp:Label ID="Label14" runat="server" Text="Memory size for block:"></asp:Label>
                                                            </td>
                                                            <td class="auto-style61">
                                                                <asp:DropDownList ID="DropDownList3" runat="server" Width="117px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54">&nbsp;</td>
                                                            <td class="auto-style61">
                                                                <asp:TextBox ID="txtMemSize" runat="server" Height="23px" OnTextChanged="TxtMemSize_TextChanged" Width="85px" AutoCompleteType="Disabled"></asp:TextBox>
                                                                <asp:Label ID="Label15" runat="server" Text="kB"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54">&nbsp;</td>
                                                            <td class="auto-style61">
                                                                <asp:Button ID="btnInsert" runat="server" OnClick="ButtonInsert_Click" Text="Insert" CssClass="auto-style62" Height="43px" Width="171px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54">&nbsp;</td>
                                                            <td class="auto-style61">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style26">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">&nbsp;</td>
                                    <td class="auto-style20">
                                        <table class="style3">
                                            <tr>
                                                <td>
                                                    <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClick="btnGenerate_Click" PostBackUrl="~/MM.aspx" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="ButtonClear_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server" BackColor="Bisque">
        <table class="auto-style81">
            <tr>
                <td class="auto-style36">
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="ClosePopupCls" ForeColor="Red" OnClick="LinkButton2_Click" OnClientScript="javascript:window.close();">Close [x]</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"  BackColor="#FF9999" BorderColor="#666666" BorderStyle="Solid">
                        
                        <ContentTemplate>
                            <table class="style3">
                                <tr>
                                    <td class="auto-style28" colspan="2">
                                        <asp:Label ID="Label2" runat="server" Text="Process Creation"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">
                                        <table class="auto-style24">
                                            <tr>
                                                <td class="auto-style36">
                                                    <table class="auto-style27">
                                                        <tr>
                                                            <td class="auto-style58" rowspan="4">
                                                                <asp:GridView ID="GridView10" runat="server" Visible="False" HorizontalAlign="Center">
                                                                    <EditRowStyle VerticalAlign="Middle" />
                                                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <SelectedRowStyle VerticalAlign="Bottom" />
                                                                </asp:GridView>
                                                            </td>
                                                            <td class="auto-style50">
                                                                <asp:Label ID="Label3" runat="server" Text="No. of Processes:"></asp:Label>
                                                            </td>
                                                            <td class="auto-style45">
                                                                <asp:TextBox ID="txtNoProcesses" runat="server" OnTextChanged="TextBoxP_TextChanged"  AutoCompleteType="Disabled"></asp:TextBox>
                                                            </td>
                                                            <td class="auto-style56" rowspan="6">
                                                                <asp:GridView ID="GVProcesses" runat="server" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                                    <AlternatingRowStyle BackColor="White" />
                                                                    <EditRowStyle VerticalAlign="Middle" BackColor="#7C6F57" />
                                                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#E3EAEB" />
                                                                    <SelectedRowStyle VerticalAlign="Bottom" BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                                                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                                                                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                                                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                                                                </asp:GridView>
                                                                <br />
                                                                <br />
                                                                <div class="auto-style82">
                                                                </div>
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54"></td>
                                                            <td class="auto-style61">
                                                                <asp:Button ID="btnAddProcess" runat="server" OnClick="btnAddProcess_Click" Text="ADD" Height="28px" Width="139px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54">
                                                                <asp:Label ID="Label4" runat="server" Text="Memory size for process:"></asp:Label>
                                                            </td>
                                                            <td class="auto-style61">
                                                                <asp:DropDownList ID="DropDownList2" runat="server" Width="117px">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style54">&nbsp;</td>
                                                            <td class="auto-style61">
                                                                <asp:TextBox ID="txtProcessSize" runat="server" Height="23px" OnTextChanged="TextBoxPS_TextChanged" Width="85px" AutoCompleteType="Disabled"></asp:TextBox>
                                                                <asp:Label ID="Label5" runat="server" Text="kB"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style60">&nbsp;</td>
                                                            <td class="auto-style54">&nbsp;</td>
                                                            <td class="auto-style61">
                                                                <asp:Button ID="btnInsertProcess" runat="server" OnClick="BtnInsertProcess" Text="Insert" CssClass="auto-style62" Height="43px" Width="171px" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style60">&nbsp;</td>
                                                            <td class="auto-style54">&nbsp;</td>
                                                            <td class="auto-style61">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style26">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style20">&nbsp;</td>
                                    <td class="auto-style20">
                                        <table class="style3">
                                            <tr>
                                                <td>
                                                    <asp:Button ID="btnGenerateProcess" runat="server" Text="Generate" PostBackUrl="~/MM.aspx" OnClick="ButtonGenP_Click" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnClear1" runat="server" Text="Clear" OnClick="ButtonClear1_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />



   
 <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  BackgroundCssClass="modalBackground" TargetControlID="btnMemCreate" PopupControlID="Panel1" CancelControlID="LinkButton1"></asp:ModalPopupExtender>
     <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server"  BackgroundCssClass="modalBackground" TargetControlID="btnPCreate" PopupControlID="Panel2" CancelControlID="LinkButton2"></asp:ModalPopupExtender>

    <br />
    <br />
</asp:Content>



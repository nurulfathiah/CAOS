using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

public partial class MM : System.Web.UI.Page
{
    static string MemSize = null;
    static string ProcessSize = null;
    static int[] memblock = new int[999];
    static int[] processblock = new int[999];
    static string[] memoryarray;
    static int[] memoryarraylist;
    static int[] memoryarraylist1;
    static string[] processarray;
    static int[] processarraylist;
    static int[] processarraylist1;
    static int[] allocatedmemory;
    static int[] parray = new int[20];
    static int[] fragment = new int[20];
    static int a, j, numberOfBlocks, numberOfProcesses;
    int[] allocation;
    int[] InternalF;
    int[] blockallocation;
    static string old, val, newindex, oldindex;
    string blockNos;
    Boolean StartCalcExtFrag;
    List<int> unallocatedblocks = new List<int>();

    static int blockNo = 0, temp, lowest = 9999;
    static int PblockNo = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnMemCreate_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }


    //reset all
    protected void Button5_Click(object sender, EventArgs e)
    {
        Label18.Text = "";
        Label17.Text = "";
        TextBox4.Text = "";
        GridView8.DataSource = null;
        GridView8.DataBind();
        GridView7.DataSource = null;
        GridView7.DataBind();
        GridView3.DataSource = null;
        GridView3.DataBind();
    }

    //Clear all data in memory panel
    protected void ButtonClear_Click(object sender, EventArgs e)
    {
        TextBox3.Text = " ";
        txtMemSize.Text = " ";
        DropDownList3.Items.Clear();
        GridView6.DataSource = null;
        GridView6.DataBind();
    }

    //Clear all data in process panel
    protected void ButtonClear1_Click(object sender, EventArgs e)
    {
        txtNoProcesses.Text = " ";
        txtProcessSize.Text = " ";
        DropDownList2.Items.Clear();
        GVProcesses.DataSource = null;
        GVProcesses.DataBind();
    }

    //Panel process Close button
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        GridView10.DataSource = null;
        GridView10.DataBind();
        GVProcesses.DataSource = null;
        GVProcesses.DataBind();
        DropDownList2.Items.Clear();
        txtNoProcesses.Text = "";
        txtProcessSize.Text = "";
    }

    //Panel block Close button
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        GridView11.DataSource = null;
        GridView6.DataSource = null;
        GridView6.DataBind();
        GridView11.DataBind();
        DropDownList3.Items.Clear();
        txtMemSize.Text = "";
        TextBox3.Text = "";
    }

    //Memory Block Creation
    protected void BtnAdd0_Click1(object sender, EventArgs e)
    {
        int i = 0;
        DropDownList3.Items.Clear();

        DataTable dt = new DataTable();
        dt.Columns.Add("Memory Block Size [kB]");



        for (i = 0; i < Convert.ToInt32(TextBox3.Text); i++)
        {
            dt.Rows.Add(0);
            DropDownList3.Items.Add(new ListItem("Block " + Convert.ToString(i + 1), Convert.ToString(i + 1)));

        }
        numberOfBlocks = Convert.ToInt32(TextBox3.Text);
        GridView6.DataSource = dt;
        GridView6.DataBind();

        GridView11.DataSource = dt;
        GridView11.DataBind();
    }

    //Process Creation
    protected void btnAddProcess_Click(object sender, EventArgs e)
    {
        int i = 0;
        DropDownList2.Items.Clear();

        DataTable dt = new DataTable();
        dt.Columns.Add("Process Size [kB]", typeof(int));



        for (i = 0; i < Convert.ToInt32(txtNoProcesses.Text); i++)
        {
            dt.Rows.Add(0); //Add row to gridview
            DropDownList2.Items.Add(new ListItem("P" + Convert.ToString(i + 1), Convert.ToString(i + 1))); //List Item value starts from 1
        }
        numberOfProcesses = Convert.ToInt32(txtNoProcesses.Text);

        GVProcesses.DataSource = dt;
        GVProcesses.DataBind();

        GridView10.DataSource = dt;
        GridView10.DataBind();
    }

    //INPUT data 
    protected void ButtonInsert_Click(object sender, EventArgs e)
    {
        MemSize = txtMemSize.Text;

        blockNo = Convert.ToInt32(DropDownList3.SelectedValue) - 1;

        //save memsize in array, save block no as array index
   
        GridView6.Rows[blockNo].Cells[0].Text = DropDownList3.SelectedItem.Text + ": " + MemSize;

        //Invisible gridview to store value only.
        GridView11.Rows[blockNo].Cells[0].Text = MemSize;

        //Declare size of memory array
        memoryarray = new string[GridView11.Rows.Count];
        
        //first cell only
        for (int i = 0; i < GridView11.Rows.Count; i++)
        {
            memoryarray[i] = GridView11.Rows[i].Cells[0].Text.ToString();

        }
        //Prevent data corruption, one for WF, one for BF
        memoryarraylist = Array.ConvertAll(memoryarray, int.Parse);
        memoryarraylist1 = Array.ConvertAll(memoryarray, int.Parse);
    }

    //INPUT data
    protected void BtnInsertProcess(object sender, EventArgs e)
    {

        ProcessSize = txtProcessSize.Text;
        PblockNo = Convert.ToInt32(DropDownList2.SelectedValue) - 1; // Minus 1 because List item value starts from 1



        GVProcesses.Rows[PblockNo].Cells[0].Text = DropDownList2.SelectedItem.Text + ":  " + ProcessSize + " kB";
        GridView10.Rows[PblockNo].Cells[0].Text = ProcessSize;


        processarray = new string[GridView10.Rows.Count];

        for (int i = 0; i < GridView10.Rows.Count; i++)
        {
            processarray[i] = GridView10.Rows[i].Cells[0].Text.ToString();

        }



        processarraylist = Array.ConvertAll(processarray, int.Parse);

        processarraylist1 = Array.ConvertAll(processarray, int.Parse);


    }

    //Copy gridview panel to another gridview.
    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        DataTable dt1 = new DataTable();
        dt1.Columns.Add("Memory Block Size [kB]", typeof(string));

        foreach (GridViewRow gvr in GridView6.Rows)
        {
            string var1 = gvr.Cells[0].Text;

            DataRow dr = dt1.NewRow();
            dr["Memory Block Size [kB]"] = var1;

            dt1.Rows.Add(dr);
        }
        GridView3.DataSource = dt1;
        GridView3.DataBind();

        GridView11.DataSource = null;
        GridView6.DataSource = null;
        GridView6.DataBind();
        GridView11.DataBind();
        DropDownList3.Items.Clear();
        txtMemSize.Text = "";
        TextBox3.Text = "";
      
    }

    //copy gridview process panel to another gridview
    protected void ButtonGenP_Click(object sender, EventArgs e)
    {


        DataTable dt1 = new DataTable();

        dt1.Columns.Add("Process Size [kB]", typeof(string));


        foreach (GridViewRow gvr in GVProcesses.Rows)
        {
            string var1 = gvr.Cells[0].Text;

            DataRow dr = dt1.NewRow();
            dr["Process Size [kB]"] = var1;

            dt1.Rows.Add(dr);
        }
        GridView7.DataSource = dt1;
        GridView7.DataBind();



        GridView10.DataSource = null;
        GridView10.DataBind();
        GVProcesses.DataSource = null;
        GVProcesses.DataBind();
        DropDownList2.Items.Clear();
        txtNoProcesses.Text = "";
        txtProcessSize.Text = "";



    }


    protected void ButtonSimulate_Click(object sender, EventArgs e)
    {
        TextBox4.Text = "";

        if (DropDownList1.SelectedValue == "1")
        {
            bestfit(memoryarraylist, memoryarraylist.Length, processarraylist, processarraylist.Length);
        }

        if (DropDownList1.SelectedValue == "2")
        {
            worstfit(memoryarraylist1, memoryarraylist1.Length, processarraylist1, processarraylist1.Length);
        }
    }

    //WORST FIT 
    public void worstfit(int[] blockSize, int m, int[] processSize, int n)
    {
        string[] Blocks = new string[n];

        for (int i = 0; i < n; i++)
        {
            Blocks[i] = "0";
        }

        // Stores block id of the block allocated to a process
        allocation = new int[n];
        InternalF = new int[n];

        // Initially no block is assigned to any process
        for (int i = 0; i < allocation.Length; i++)
        {
            allocation[i] = -1;
            InternalF[i] = -1;
        }

        // pick each process and find suitable blocks
        // according to its size ad assign to it
        for (int i = 0; i < n; i++)
        {
            // Find the best fit block for current process
            int wstIdx = -1;

            for (int j = 0; j < m; j++)
            {
                if (blockSize[j] >= processSize[i])
                {
                    if (wstIdx == -1)
                        wstIdx = j;
                    else if (blockSize[wstIdx] < blockSize[j])
                        wstIdx = j;
                }
            }

            // If we could find a block for current process
            if (wstIdx != -1)
            {
                // allocate block j to p[i] process
                allocation[i] = wstIdx;

                // Reduce available memory in this block.
                InternalF[i] = blockSize[wstIdx] - processSize[i];
                blockSize[wstIdx] = blockSize[wstIdx] - processSize[i];

            }
        }

        Label17.Text = "\nProcess No. ---Process Size  ---  Block no. ---Internal Fragmentation ---";

        //LOOP FOR EVERY PROCESS
        for (int i = 0; i < n; i++)
        {
            //IF PROCESS HAS A BLOCK TO IT
            if (allocation[i] != -1)
            {
                TextBox4.Text += "P" + (i + 1) + "\t\t" + processSize[i] + "\t\t" + (allocation[i] + 1) + "\t\t" + (InternalF[i]) + "\n";
                val = "P" + (i + 1);

                //MANIPULATE TO SHOW THAT BLOCK HAS THIS PROCESS
                if ((allocation[i] + 1) <= Blocks.Length)
                {
                    //IF BLOCK FIRST TIME APPEAR
                    if (Blocks[(allocation[i])] == "0")
                    {
                        Blocks[(allocation[i])] = "Block " + (allocation[i] + 1).ToString() + ": " + val;
                    }

                    //iF BLOCK APPEAR ALR, ADD new process under specified block 
                    else
                    {
                        Blocks[(allocation[i])] = Blocks[(allocation[i])] + "\n" + val;

                    }
                }
            }

            //block contain process. cal Ext
            else
            {
                TextBox4.Text += "P" + (i + 1) + "\t\t" + processSize[i] + "\t\t" + "Not Allocated" + "   " + "N.A" + "\n";
                StartCalcExtFrag = true;
            }
        }

        DataTable dta = new DataTable("Allocation");
        dta.Columns.Add("Allocation");

        for (int i = 0; i < Blocks.Length; i++)
        {
            if (Blocks[i] == "0")
            {
                Blocks[i] = "Block " + (i + 1) + ": No process allocated";
                unallocatedblocks.Add((i + 1));
            }
        }

        foreach (string value in Blocks)
        {
            dta.Rows.Add(value);
        }

        GridView8.DataSource = dta;
        GridView8.DataBind();

        if (StartCalcExtFrag == true)
        {
            int extfrag = 0;

            for (int a = 0; a < unallocatedblocks.Count; a++)
            {
                extfrag = extfrag + blockSize[unallocatedblocks[a] - 1];
            }

            Label18.Text = " External Fragmentation is " + extfrag + "kB";
        }

        else
            Label18.Text = " No external fragmentation";
    }




















    //BEST FIT//
    public void bestfit(int[] blockSize, int m, int[] processSize, int n)
    {
        string[] Blocks = new string[m];

        for (int i = 0; i < m; i++)
        {
            Blocks[i] = "0";
        }

        // Stores block no of the block assigned to process
        blockallocation = new int[n];

        //Stores internal fragmentation of block 
        InternalF = new int[n];

        // Initially, no block is assigned to any process
        //start with -1 because 0 stands for block 1
        for (int i = 0; i < blockallocation.Length; i++)
        {
            blockallocation[i] = -1;
            InternalF[i] = -1;
        }

        // loop for each process and find the best blocks according to its size 
        // Assign block to process if best block is found
        for (int i = 0; i < n; i++)
        {
            // Find the best block for current process 
            int bestblock = -1;
            for (int j = 0; j < m; j++)
            {
                if (blockSize[j] >= processSize[i])
                {
                    if (bestblock == -1) //just start
                        bestblock = j;

                    else if (blockSize[bestblock] > blockSize[j]) //reassign to better block if a better block is found
                        bestblock = j;
                }
            }

            // If a block for current process is found
            if (bestblock != -1)
            {
                // allocate block j to p[i] process
                blockallocation[i] = bestblock;

                // Reduce available memory in this block.
                InternalF[i] = blockSize[bestblock] - processSize[i];
                blockSize[bestblock] = blockSize[bestblock] - processSize[i];

            }
        }

        Label17.Text = "\nProcess No. -----Process Size  ---  Block no. ---Internal Fragmentation ---";

        for (int i = 0; i < n; i++)
        {



            if (blockallocation[i] != -1)
            {

                TextBox4.Text += "P" + (i + 1) + "\t\t" + processSize[i] + "\t\t" + (blockallocation[i] + 1) + "\t\t" + (InternalF[i]) + "\n";

                val = "P" + (i + 1).ToString();




                if ((blockallocation[i] + 1) <= Blocks.Length)
                {


                    if (Blocks[(blockallocation[i])] == "0")
                    {
                        Blocks[(blockallocation[i])] = "Block " + (blockallocation[i] + 1).ToString() + ": " + val;

                      


                    }

                    else// if (Blocks[(allocation[i] + 1)] != "0")
                    {
                        Blocks[(blockallocation[i])] = Blocks[(blockallocation[i])] + "\n" + val;

                    }



                }



            }






            else
            {

                TextBox4.Text += "P" + (i + 1) + "\t\t" + processSize[i] + "\t\t" + "Not Allocated" + "   " + "N.A" + "\n";


                StartCalcExtFrag = true;
            }






        }

        DataTable dta = new DataTable("Allocation");
        dta.Columns.Add("Allocation");

        for (int i = 0; i < Blocks.Length; i++)
        {
            if (Blocks[i] == "0")
            {
                Blocks[i] = "Block " + (i + 1) + ": No process allocated";

                unallocatedblocks.Add((i + 1));
            }
        }



        foreach (string value in Blocks)
        {
            dta.Rows.Add(value);
        }

        GridView8.DataSource = dta;
        GridView8.DataBind();

        if (StartCalcExtFrag == true)
        {
            int extfrag = 0;

            for (int a = 0; a < unallocatedblocks.Count; a++)
            {
                extfrag = extfrag + blockSize[unallocatedblocks[a] - 1];
            }

            Label18.Text = " External Fragmentation is " + extfrag + "kB";
        }

        else
            Label18.Text = " No external fragmentation";



    }

    protected void TextBox4_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.Text == "Worst Fit")
        {
            TextBox4.Text = "";
            blockallocation = null;
            InternalF = null;
            allocation = null;

        }

    }

    //RowDataBound Event  
    protected void GridView8_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        //Checking the RowType of the Row  
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            if (e.Row.Cells[0].Text.Equals("0"))
                e.Row.Visible = false;

        }


    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(TextBox3.Text, "  ^ [0-9]"))
        {
            TextBox3.Text = "";
        }

    }

    protected void TxtMemSize_TextChanged(object sender, EventArgs e)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(txtMemSize.Text, "  ^ [0-9]"))
        {
            txtMemSize.Text = "";
        }

    }

    protected void TextBoxP_TextChanged(object sender, EventArgs e)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(txtNoProcesses.Text, "  ^ [0-9]"))
        {
            txtNoProcesses.Text = "";
        }

    }

    protected void TextBoxPS_TextChanged(object sender, EventArgs e)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(txtProcessSize.Text, "  ^ [0-9]"))
        {
            txtProcessSize.Text = "";
        }
    }
    /*
    public Boolean storeData(string id, string size)
    {
        XmlDocument oXmlDocument = new XmlDocument();
        oXmlDocument.Load("G:/CAOS/CAOS_Project/CAOS_Project/Data.xml");
        XmlNode oXmlRootNode = oXmlDocument.SelectSingleNode("Data");
        XmlNode oXmlRecordNode = oXmlRootNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element, "Block", ""));
        oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element, "ID", "")).InnerText = id;
        oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element, "Size", "")).InnerText = size;

        oXmlDocument.Save("G:/CAOS/CAOS_Project/CAOS_Project/Data.xml");

        return true;
    }
    */
   
}













        
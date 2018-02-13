using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization;
using System.Web.UI.DataVisualization.Charting;

public partial class CPUSched : System.Web.UI.Page
{
    public static int totalbt = 0;
    public static Data[] data1;
    public struct Data1
    {
        public string value;
        public int arrival, priority, burst, wait, end, start, TA, idle;
    }
    List<int> priorityList = new List<int>();
    List<int> arrivalList = new List<int>();
    List<int> burstList = new List<int>();
    List<string> processList = new List<string>();
    List<int> startList = new List<int>();
    List<int> endList = new List<int>();
    List<int> waitList = new List<int>();
    List<int> TAList = new List<int>();

    public static Data[] data;
    public struct Data
    {
        public string value;
        public int arrival, burst, wait, end, start, TA, idle, endIdle, priority;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        data = new Data[0];
        data1 = new Data[0];

    }

    protected void btnProcessCreate_Click(object sender, EventArgs e)
    {
        data = Application.Get(0) as Data[];
        int temparrival, tempburst, tempPriority;
        string tempProcess;
        float total = 0;
        float totalwt = 0;
        int totalBurst = 0;


        Chart1.Series.Clear();
        Chart1.ChartAreas[0].AxisX.LabelStyle.Enabled = false;

        for (int i = 1; i < data.Length; i++)
        {
            for (int j = 1; j < i; j++)
            {

                if (data[i].priority < data[j].priority)
                {
                    tempPriority = data[j].priority;
                    data[j].priority = data[i].priority;
                    data[i].priority = tempPriority;

                    temparrival = data[j].arrival;
                    data[j].arrival = data[i].arrival;
                    data[i].arrival = temparrival;
                    burstList.Add(temparrival);

                    tempProcess = data[j].value;
                    data[j].value = data[i].value;
                    data[i].value = tempProcess;

                    tempburst = data[j].burst;
                    data[j].burst = data[i].burst;
                    data[i].burst = tempburst;
                    burstList.Add(tempburst);
                }


            }
        }

        for (int i = 0; i < data.Length; i++)
        {
            int j = 0;
            for (j = 0; j < i; j++)
            {

                if (data[i].arrival < data[j].arrival)
                {
                    tempPriority = data[j].priority;
                    data[j].priority = data[i].priority;
                    data[i].priority = tempPriority;

                    temparrival = data[j].arrival;
                    data[j].arrival = data[i].arrival;
                    data[i].arrival = temparrival;
                    burstList.Add(temparrival);

                    tempProcess = data[j].value;
                    data[j].value = data[i].value;
                    data[i].value = tempProcess;

                    tempburst = data[j].burst;
                    data[j].burst = data[i].burst;
                    data[i].burst = tempburst;
                    burstList.Add(tempburst);



                }
                if (data[i].arrival == data[j].arrival)
                {
                    if (data[i].priority == data[j].priority)
                    {
                        if (data[i].burst < data[j].burst)
                        {
                            tempPriority = data[j].priority;
                            data[j].priority = data[i].priority;
                            data[i].priority = tempPriority;

                            temparrival = data[j].arrival;
                            data[j].arrival = data[i].arrival;
                            data[i].arrival = temparrival;
                            burstList.Add(temparrival);

                            tempProcess = data[j].value;
                            data[j].value = data[i].value;
                            data[i].value = tempProcess;

                            tempburst = data[j].burst;
                            data[j].burst = data[i].burst;
                            data[i].burst = tempburst;
                            burstList.Add(tempburst);


                        }
                    }
                }

                if (i > 0 && (j > 0 && j < data.Length))
                {
                    if (data[i].priority < data[j - 1].priority)
                    {
                        if (data[i].arrival < data[j - 1].end)
                        {
                            tempPriority = data[j].priority;
                            data[j].priority = data[i].priority;
                            data[i].priority = tempPriority;

                            temparrival = data[j].arrival;
                            data[j].arrival = data[i].arrival;
                            data[i].arrival = temparrival;
                            burstList.Add(temparrival);

                            tempProcess = data[j].value;
                            data[j].value = data[i].value;
                            data[i].value = tempProcess;

                            tempburst = data[j].burst;
                            data[j].burst = data[i].burst;
                            data[i].burst = tempburst;
                            burstList.Add(tempburst);
                        }
                    }


                }




            }
        }




        for (int r = 0; r < data.Length; r++)
        {


            if (r > 0)
            {

                if (data[r].arrival <= data[r - 1].end)
                {
                    /*
                    if (data[r].priority < data[r - 1].priority)
                    {
                        tempPriority = data[r - 1].priority;
                        data[r - 1].priority = data[r].priority;
                        data[r].priority = tempPriority;

                        temparrival = data[r - 1].arrival;
                        data[r - 1].arrival = data[r].arrival;
                        data[r].arrival = temparrival;
                        burstList.Add(temparrival);

                        tempProcess = data[r - 1].value;
                        data[r - 1].value = data[r].value;
                        data[r].value = tempProcess;

                        tempburst = data[r - 1].burst;
                        data[r - 1].burst = data[r].burst;
                        data[r].burst = tempburst;
                        burstList.Add(tempburst);
                    }*/

                    data[r].start = data[r - 1].end;

                }

                else
                {
                    data[r].start = data[r].arrival;
                }
            }




            else
                data[r].start = data[r].arrival;

            data[r].end = data[r].burst + data[r].start;
            data[r].TA = data[r].end - data[r].arrival;
            data[r].wait = data[r].TA - data[r].burst;
            total += data[r].TA;
            totalwt += data[r].wait;
            totalBurst = totalBurst + data[r].end;
        }


        for (int r = 0; r < data.Length; r++)
        {
            Chart1.ChartAreas[0].AxisY.Minimum = 0;
            Chart1.ChartAreas[0].AxisY.Maximum = data[r].burst;
            Chart1.ChartAreas[0].AxisY.Interval = 1;

            Chart1.Series.Add(data[r].value);
            Chart1.Series[data[r].value].Label = data[r].value;
            Chart1.Series[data[r].value].ChartType = SeriesChartType.StackedBar;
            Chart1.Series[data[r].value].Points.AddY(data[r].burst);
            Chart1.Series[data[r].value].ChartArea = "ChartArea1";
        }

        txtTotal0.Text = total.ToString();
        txtAVG0.Text = (total / data.Length).ToString();
        txtAVGWT.Text = (totalwt / data.Length).ToString();


        //generate datable
        DataTable dt = new DataTable();
        dt.Columns.Add("Process", typeof(string));
        dt.Columns.Add("Priority", typeof(Int32));
        dt.Columns.Add("Arrival", typeof(Int32));
        dt.Columns.Add("Burst", typeof(Int32));
        dt.Columns.Add("Start", typeof(Int32));
        dt.Columns.Add("End", typeof(Int32));
        dt.Columns.Add("TA", typeof(Int32));
        dt.Columns.Add("Waiting", typeof(Int32));


        for (int r = 0; r < data.Length; r++)
        {
            if (data[r].arrival >= 0 && data[r].burst != 0)
            {
                DataRow row = dt.NewRow();
                row["Process"] = data[r].value;
                row["Priority"] = data[r].priority.ToString();
                row["Arrival"] = data[r].arrival.ToString();
                row["Burst"] = data[r].burst.ToString();
                row["Start"] = data[r].start.ToString();
                row["End"] = data[r].end.ToString();
                row["TA"] = data[r].TA.ToString();
                row["Waiting"] = data[r].wait.ToString();
                dt.Rows.Add(row);
            }
        }

        gvFCFS0.DataSource = dt.DefaultView;
        gvFCFS0.DataBind();


    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        arrivaltime.Text = tPriority.Text = bursttime.Text = "";
        DropDownListWork.Items.Clear();
        Application.Clear();
        data = new Data[0];
        DataTable dt = new DataTable();
        dt.Columns.Add("Process", typeof(string));
        dt.Columns.Add("Priority", typeof(Int32));
        dt.Columns.Add("Arrival", typeof(Int32));
        dt.Columns.Add("Burst", typeof(Int32));
        dt.Columns.Add("Start", typeof(Int32));
        dt.Columns.Add("End", typeof(Int32));
        dt.Columns.Add("TA", typeof(Int32));
        dt.Columns.Add("Waiting", typeof(Int32));
        txtAVG.Text = "";
        txtTotal.Text = "";

        gvFCFS.DataSource = dt.DefaultView;
        gvFCFS.DataBind();

    }

    protected void btnSimulate_Click(object sender, EventArgs e)
    {
        data = Application.Get(0) as Data[];
        int WT, LE;
        string NP;
        float total = 0;

        Chart1.Series.Clear();
        Chart1.ChartAreas[0].AxisX.LabelStyle.Enabled = false;

        for (int i = 0; i < data.Length; i++)
        {
            for (int j = 0; j < i; j++)
            {
                if (data[i].arrival < data[j].arrival)
                {
                    WT = data[j].arrival;
                    data[j].arrival = data[i].arrival;
                    data[i].arrival = WT;
                    NP = data[j].value;
                    data[j].value = data[i].value;
                    data[i].value = NP;
                    LE = data[j].burst;
                    data[j].burst = data[i].burst;
                    data[i].burst = LE;
                }
            }
        }
        for (int r = 0; r < data.Length; r++)
        {
            if (r == 0)
            {
                if (data[r].arrival == 0)
                {
                    data[r].idle = 0;
                    data[r].endIdle = 0;
                }
                else
                {
                    data[r].idle = 0;
                    data[r].endIdle = data[r].arrival;
                }
            }

            if (r > 0)
            {
                if (data[r].arrival <= data[r - 1].end)
                {
                    data[r].start = data[r - 1].end;


                }
                else
                {
                    data[r].start = data[r].arrival;
                    data[r].idle = data[r - 1].end;
                    data[r].endIdle = data[r].start;
                }
            }


            else
                data[r].start = data[r].arrival;


            data[r].end = data[r].burst + data[r].start;
            data[r].TA = data[r].end - data[r].arrival;
            data[r].wait = data[r].TA - data[r].burst;
            total += data[r].TA;



        }

        string[] arrayProcess = new string[10000];
        int[] arrayBT = new int[100000];
        int[] arrayorder = new int[100000];
        int ttttt = 0;
        int BT = 0;
        // List<string> arrayProcess = new List<string>[r];

   /*     for (int r = 0; r < data.Length; r++) {
            if (data[r].arrival > 0)
            {
                arrayProcess[r] = "Idle"+ttttt+"";
                //BT = BT + Convert.ToInt32(data[r].arrival);
                //arrayBT[r] = BT;
                //arrayProcess[r + 1] = data[r].value;
               // BT = BT + data[r].burst;
                //arrayBT[r + 1] = BT;
                arrayorder[r] = Convert.ToInt32(data[r].endIdle);
                ttttt++;
                
               
            }
            else
            {
                arrayProcess[r] = data[r].value;
                //BT = BT + Convert.ToInt32(data[r].burst);
                //arrayBT[1] = BT;
                arrayorder[r] = Convert.ToInt32(data[r].endIdle);
            }
        }*/

        for (int r = 0; r < data.Length; r++)
        {
            Chart1.ChartAreas[0].AxisY.Minimum = 0;
            Chart1.ChartAreas[0].AxisY.Maximum = data[r].end;
            Chart1.ChartAreas[0].AxisY.Interval = 1;

         
            Chart1.Series.Add(data[r].value);
            Chart1.Series[data[r].value].Label = data[r].value;
            Chart1.Series[data[r].value].ChartType = SeriesChartType.StackedBar;
            Chart1.Series[data[r].value].Points.AddY(data[r].burst + data[r].endIdle);
            Chart1.Series[data[r].value].ChartArea = "ChartArea1";
        }

        txtTotal.Text = total.ToString();
        txtAVG.Text = (total / data.Length).ToString();

        //generate datable
        DataTable dt = new DataTable();
        dt.Columns.Add("Process", typeof(string));
        dt.Columns.Add("Arrival", typeof(Int32));
        dt.Columns.Add("Burst", typeof(Int32));
        dt.Columns.Add("Start", typeof(Int32));
        dt.Columns.Add("End", typeof(Int32));
        dt.Columns.Add("Idle", typeof(Int32));
        dt.Columns.Add("EndIdle", typeof(Int32));
        dt.Columns.Add("TA", typeof(Int32));
        dt.Columns.Add("Waiting", typeof(Int32));


        for (int r = 0; r < data.Length; r++)
        {
            if (data[r].arrival >= 0 && data[r].burst != 0)
            {
                DataRow row = dt.NewRow();
                row["Process"] = data[r].value;
                row["Arrival"] = data[r].arrival.ToString();
                row["Burst"] = data[r].burst.ToString();
                row["Start"] = data[r].start.ToString();
                row["End"] = data[r].end.ToString();
                row["Idle"] = data[r].idle.ToString();
                row["EndIdle"] = data[r].endIdle.ToString();
                row["TA"] = data[r].TA.ToString();
                row["Waiting"] = data[r].wait.ToString();
                dt.Rows.Add(row);
            }
        }

        Label4.Text = "Complete";
        Label4.ForeColor = System.Drawing.Color.Green;

        gvFCFS.DataSource = dt.DefaultView;
        gvFCFS.DataBind();
    }

   

    protected void ButtonExistingP_Click(object sender, EventArgs e)
    {

    }

    protected void btnAddNewProcess_Click(object sender, EventArgs e)
    {

    }

    protected void btnInsertCpuProcess_Click(object sender, EventArgs e)
    {

    }

    protected void btnGenerateCPUProcess_Click(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnWorkSum_Click(object sender, EventArgs e)
    {
        if (WorkSum.Text == "")
        {
            Label3.Text = "Please Input a 'number'";
        }
        else
        {
            for (int i = 0; i < int.Parse(WorkSum.Text); i++)//convert string to int and create ("1")
            {
                Array.Resize(ref data, data.Length + 1);//resize the array to the last number (process - "1")
                ListItem lt = new ListItem();//store for the dropdownlist
                lt.Text = data[data.GetUpperBound(0)].value = "Process - " + (i + 1);//get previous value and + 1
                lt.Value = data[data.GetUpperBound(0)].value = "Process - " + (i + 1);
                DropDownListWork.Items.Add(lt);//use lt to stored data
            }
            WorkSum.Text = "";
            Label3.Text = "";
            Label5.Text = "";
            Application.Add("data", data);
        }
    }

    protected void btnTime_Click(object sender, EventArgs e)
    {
        data = Application.Get(0) as Data[];

        if (arrivaltime.Text == "" || bursttime.Text == "")
        {
            Label2.Text = "Please Input 'number' for BOTH Arrival and Burst";

        }
        else
        {
            for (int i = 0; i < data.Length; i++)
            {
                if (DropDownListWork.SelectedValue == data[i].value)
                {
                    data[i].arrival = int.Parse(arrivaltime.Text.Trim());
                    data[i].burst = int.Parse(bursttime.Text.Trim());
                }
            }
            Label2.Text = "";

        }

        Application.Clear();
        Application.Add("data", data);
        arrivaltime.Text = "";
        bursttime.Text = "";



        DataTable dt = new DataTable();//create data datable for gridview
        dt.Columns.Add("Process", typeof(string));//have to be string
        dt.Columns.Add("Arrival", typeof(Int32));
        dt.Columns.Add("Burst", typeof(Int32));
        dt.Columns.Add("Start", typeof(Int32));
        dt.Columns.Add("End", typeof(Int32));
        dt.Columns.Add("Idle", typeof(Int32));
        dt.Columns.Add("EndIdle", typeof(Int32));
        dt.Columns.Add("TA", typeof(Int32));
        dt.Columns.Add("Waiting", typeof(Int32));


        for (int r = 0; r < data.Length; r++)
        {
            if (data[r].arrival >= 0 && data[r].burst != 0)
            {
                DataRow row = dt.NewRow();
                row["Process"] = data[r].value;
                row["Arrival"] = data[r].arrival.ToString();
                row["Burst"] = data[r].burst.ToString();
                dt.Rows.Add(row);
            }
        }

        gvFCFS.DataSource = dt.DefaultView;
        gvFCFS.DataBind();
    }

    protected void DropDownListWork_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gvFCFS_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtTotal_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtAVG_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnTime1_Click(object sender, EventArgs e)
    {
        data = Application.Get(0) as Data[];


        if (arrivaltime.Text == "" || bursttime.Text == "")
        {
            Label2.Text = "Please Input BOTH 'Arrival' and 'Burst' Time";

        }
        else
        {
            for (int i = 0; i < data.Count(); i++)
            {
                if (DropDownListWork.SelectedValue == data[i].value)
                {
                    data[i].arrival = int.Parse(arrivaltime.Text.Trim());
                    arrivalList.Add(int.Parse(arrivaltime.Text.Trim()));
                    data[i].burst = int.Parse(bursttime.Text.Trim());
                    burstList.Add(int.Parse(bursttime.Text.Trim()));
                    data[i].priority = int.Parse(tPriority.Text.Trim());
                    priorityList.Add(int.Parse(tPriority.Text.Trim()));
                }
            }
            Label2.Text = "";

        }

        Application.Clear();
        Application.Add("data", data);
        arrivaltime.Text = "";
        bursttime.Text = "";
        tPriority.Text = "";



        DataTable dt = new DataTable();//create data datable for gridview
        dt.Columns.Add("Process", typeof(string));//have to be string
        dt.Columns.Add("Priority", typeof(Int32));
        dt.Columns.Add("Arrival", typeof(Int32));
        dt.Columns.Add("Burst", typeof(Int32));
        dt.Columns.Add("Start", typeof(Int32));
        dt.Columns.Add("End", typeof(Int32));
        dt.Columns.Add("TA", typeof(Int32));
        dt.Columns.Add("Waiting", typeof(Int32));


        for (int r = 0; r < data.Length; r++)
        {
            if (data[r].arrival >= 0 && data[r].burst != 0)
            {
                DataRow row = dt.NewRow();
                row["Process"] = data[r].value;
                row["Priority"] = data[r].priority.ToString();
                row["Arrival"] = data[r].arrival.ToString();
                row["Burst"] = data[r].burst.ToString();
                dt.Rows.Add(row);
            }
        }

        gvFCFS0.DataSource = dt.DefaultView;
        gvFCFS0.DataBind();
    }
}

    
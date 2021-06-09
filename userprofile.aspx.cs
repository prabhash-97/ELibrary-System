using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class userprofile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["username"].ToString() == null || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Write("userlogin.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserPersonalDetails();
                    }
                    getUserBookData();   
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Write("userlogin.aspx");
            }
        }

      /*  protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //check condition
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }*/

        //update button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["username"].ToString() == null || Session["username"] == null)
                {
                    Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Write("userlogin.aspx");
                }
                else
                {
                    updateUserData();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Write("userlogin.aspx");
            }
        }

        //user defined funtion
        void updateUserData()
        {

            string password = "";
            if (TextBox7.Text.Trim() == "")
            {
                password = TextBox2.Text.Trim();
            }
            else
            {
                password = TextBox7.Text.Trim();
            }

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update member_master_tbl set account_status=@account_status, full_address=@full_address, full_name=@full_name, dob=@dob, contact_no=@contact_no, email=@email, state=@state, city=@city, pincode=@pincode, password=@password where member_id='" + Session["username"].ToString() + "';", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@account_status", "pending");

                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    Response.Write("<script>alert('Your Details Upadated Successfully!');</script>");
                    getUserBookData();
                    getUserPersonalDetails();
                }
                else
                {
                    Response.Write("<script>alert('Member Not Exists.');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getUserBookData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from book_issue_tbl where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + Session["username"].ToString() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                TextBox4.Text = dt.Rows[0]["dob"].ToString();
                TextBox5.Text = dt.Rows[0]["contact_no"].ToString();
                TextBox6.Text = dt.Rows[0]["email"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["state"].ToString().Trim();
                TextBox8.Text = dt.Rows[0]["city"].ToString();
                TextBox9.Text = dt.Rows[0]["pincode"].ToString();
                TextBox10.Text = dt.Rows[0]["full_address"].ToString();
                TextBox1.Text = dt.Rows[0]["member_id"].ToString();
                TextBox2.Text = dt.Rows[0]["password"].ToString();

                Label1.Text = dt.Rows[0]["account_status"].ToString().Trim();

                if (dt.Rows[0]["account_status"].ToString().Trim() == "active")
                {
                    Label1.Attributes.Add("BackColor", "red");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "pending")
                {
                    Label1.Attributes.Add("BackColor", "red");
                }
                else if (dt.Rows[0]["account_status"].ToString().Trim() == "delete")
                {
                    Label1.Attributes.Add("BackColor", "red");
                }
                else
                {
                    Label1.Attributes.Add("BackColor", "red");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //check condition
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
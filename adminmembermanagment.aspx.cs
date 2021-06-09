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
    public partial class adminmembermanagment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        /*
        //Active Button click
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            upadteMemberStatusByID("active");
        }

        //Pending Button click
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            upadteMemberStatusByID("pending");
        }

        //Delete Button click
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            upadteMemberStatusByID("delete");
        }*/

        //user defined function
        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox4.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox5.Text = dr.GetValue(2).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox10.Text = dr.GetValue(3).ToString();
                        TextBox11.Text = dr.GetValue(5).ToString();
                        TextBox12.Text = dr.GetValue(6).ToString();
                        TextBox13.Text = dr.GetValue(4).ToString();
                        TextBox1.Text = dr.GetValue(7).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

         void upadteMemberStatusByID(String status)
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("update member_master_tbl set account_status='" + status + "' where member_id='" + TextBox4.Text.Trim() + "';", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID ');</script>");
            }
           
        }

        void deleteMemberByID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("delete from member_master_tbl where member_id='" + TextBox4.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully.');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID ');</script>");
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //Delete button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }

        //Active Button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            upadteMemberStatusByID("active");
        }

        //Pending Button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            upadteMemberStatusByID("pending");
        }

        //Delete Button click
        protected void Button5_Click(object sender, EventArgs e)
        {
            upadteMemberStatusByID("delete");
        }
    }
}
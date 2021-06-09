using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class adminbookinventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;
        static int global_actual_stock, global_current_stock, global_issued_books;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fileAuthorPublisherValues();
            }
            GridView1.DataBind();
        }

        //Add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                Response.Write("<script>alert('Book with this ID already Exist. You should add another Book with another Book ID');</script>");
            }
            else
            {
                addNewBook();
            }
        }

        //Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                updateBook();
            }
            else
            {
                Response.Write("<script>alert('Book with this ID already Exist. You should add another Book with another Book ID');</script>");
            }
        }

        //Delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfBookExists())
            {
                deleteBook();
            }
            else
            {
                Response.Write("<script>alert('Book with this ID already Exist. You should add another Book with another Book ID');</script>");
            }
        }

        //user defined fuction start

        void fileAuthorPublisherValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select author_name from author_master_tbl;", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                DropDownList4.DataSource = dt;
                DropDownList4.DataValueField = "author_name";
                DropDownList4.DataBind();

                cmd = new SqlCommand("select publisher_name from publisher_master_tbl;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);

                DropDownList2.DataSource = dt;
                DropDownList2.DataValueField = "publisher_name";
                DropDownList2.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            TextBox7.Text = "";
            TextBox4.Text = "";
            TextBox1.Text = "";
            TextBox10.Text = "";
            TextBox14.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            //ListBox1.ClearSelection();
            //fileAuthorPublisherValues();
          
        }

        void deleteBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from book_master_tbl where book_id='" + TextBox4.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Deleted Successfully.');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateBook()
        {
            try
            {
                int actual_stock = Convert.ToInt32(TextBox6.Text.Trim());
                int current_stock = Convert.ToInt32(TextBox9.Text.Trim());

                if(global_actual_stock== actual_stock)
                {

                }
                else
                {
                    if (actual_stock < global_issued_books)
                    {
                        Response.Write("<script>alert('Actual Stock value cannot be less than the Issued books');</script>");
                        return;
                    }
                    else
                    {
                        current_stock = actual_stock - global_issued_books;
                        TextBox9.Text = "" + current_stock;
                    }
                }

                string genres = "";
                foreach (int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/bookinventory/thumb_COLOURBOX44167385.jpg";
                string filename = Path.GetFileName(FileUpload1.FileName);
                if (filename == "" || filename == null)
                {
                    filepath = global_filepath;
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("~/bookinventory/") + filename);
                    filepath = "~/bookinventory/" + filename;
                }

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update book_master_tbl set  book_name=@book_name, genre=@genre, author_name=@author_name, publisher_name=@publisher_name, publisher_date=@publisher_date, language=@language, edition=@edition,  book_cost = @book_cost,  no_of_pages = @no_of_pages,  book_description = @book_description, actual_stock = @actual_stock, current_stock = @current_stock, boo_img_link = @boo_img_link where book_id ='" + TextBox4.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@book_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@author_name", DropDownList4.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock",actual_stock);
                cmd.Parameters.AddWithValue("@current_stock", current_stock);
                cmd.Parameters.AddWithValue("@boo_img_link", filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Details Updated Successful.');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void addNewBook()
        {
            try
            {
                string genres = "";
                foreach(int i in ListBox1.GetSelectedIndices())
                {
                    genres = genres + ListBox1.Items[i] + ",";
                }
                genres = genres.Remove(genres.Length - 1);

                string filepath = "~/bookinventory/thumb_COLOURBOX44167385.jpg";
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("bookinventory/" + filename));
                filepath = "~/bookinventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into book_master_tbl (book_id,book_name,genre,author_name,publisher_name,publisher_date,language,edition,book_cost,no_of_pages,book_description,actual_stock,current_stock,boo_img_link) values (@book_id,@book_name,@genre,@author_name,@publisher_name,@publisher_date,@language,@edition,@book_cost,@no_of_pages,@book_description,@actual_stock,@current_stock,@boo_img_link)", con);

                cmd.Parameters.AddWithValue("@book_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@genre", genres);
                cmd.Parameters.AddWithValue("@author_name", DropDownList4.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_name", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@publisher_date", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@language", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@edition", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@book_cost", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_pages", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@book_description", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@actual_stock", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@current_stock", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@boo_img_link",filepath);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Book Added Successfully.');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        bool checkIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from book_master_tbl where book_id='" + TextBox4.Text.Trim() + "' or book_name='"+TextBox7.Text.Trim()+"';", con);
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

        void getBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from book_master_tbl where book_id='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox7.Text = dt.Rows[0]["book_name"].ToString();
                    TextBox2.Text = dt.Rows[0]["publisher_date"].ToString();
                    TextBox8.Text = dt.Rows[0]["edition"].ToString();
                    TextBox5.Text = dt.Rows[0]["no_of_pages"].ToString().Trim();
                    TextBox10.Text = dt.Rows[0]["book_cost"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["actual_stock"].ToString().Trim();
                    TextBox9.Text = dt.Rows[0]["current_stock"].ToString().Trim();
                    TextBox1.Text = dt.Rows[0]["book_description"].ToString();
                    TextBox14.Text=""+(Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString())-Convert.ToInt32(dt.Rows[0]["current_stock"].ToString()));
                    DropDownList1.SelectedValue = dt.Rows[0]["language"].ToString().Trim();
                    DropDownList2.SelectedValue = dt.Rows[0]["publisher_name"].ToString().Trim();
                    DropDownList4.SelectedValue = dt.Rows[0]["author_name"].ToString().Trim();

                    ListBox1.ClearSelection();
                    string[] genre = dt.Rows[0]["genre"].ToString().Trim().Split(',');
                    for(int i=0; i<genre.Length; i++)
                    {
                        for(int j=0; j<ListBox1.Items.Count; j++)
                        {
                            if (ListBox1.Items[j].ToString() == genre[i])
                            {
                                ListBox1.Items[j].Selected = true;
                            }
                        }
                    }

                    global_actual_stock = Convert.ToInt32(dt.Rows[0]["actual_stock"].ToString().Trim());
                    global_current_stock = Convert.ToInt32(dt.Rows[0]["current_stock"].ToString().Trim());
                    global_issued_books = global_actual_stock - global_current_stock;
                    global_filepath = dt.Rows[0]["boo_img_link"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //user defined funtion end


        //Go Button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getBookByID();
        }
    }
}
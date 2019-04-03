using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Calculator
{
	public partial class Calculator : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				TextBoxResult.Text = "0";
			}
		}

		protected void ButtonClear_Click(object sender, EventArgs e)
		{
			TextBoxResult.Text = "0";
		}

		protected void ButtonClearMemory_Click(object sender, EventArgs e)
		{
			TextBoxResult.Text = "0";
		}

		protected void Button_Click(object sender, EventArgs e)
		{
			Button button = (Button)sender;

			if (TextBoxResult.Text == "0")
				TextBoxResult.Text = "";

			TextBoxResult.Text = TextBoxResult.Text + button.Text;
		}

		protected void ButtonAction_Click(object sender, EventArgs e)
		{
			Button button = (Button)sender;

			string result = TextBoxResult.Text;

			if (result != "0" && result.Substring(result.Length -1, 1) != " " && result.Substring(result.Length - 1, 1) != "(")
			{
				switch (button.ID)
				{
					case "ButtonDevide":
						TextBoxResult.Text = TextBoxResult.Text + " / ";
						break;
					case "ButtonTimes":
						TextBoxResult.Text = TextBoxResult.Text + " * ";
						break;
					case "ButtonMinus":
						TextBoxResult.Text = TextBoxResult.Text + " - ";
						break;
					default:
					case "ButtonPlus":
						TextBoxResult.Text = TextBoxResult.Text + " + ";
						break;
				}
			}
		}

		protected void ButtonResult_Click(object sender, EventArgs e)
		{
			string calculate = TextBoxResult.Text;

			double result = Convert.ToDouble(new DataTable().Compute(calculate, null));

			TextBoxResult.Text = result.ToString();
		}

		protected void ButtonOpen_Click(object sender, EventArgs e)
		{
			string result = TextBoxResult.Text;

			if (result == "0")
				TextBoxResult.Text = "";

			if(result.Substring(result.Length -1, 1) == " " || result.Substring(result.Length - 1, 1) == "0")
				TextBoxResult.Text = TextBoxResult.Text + "(";
		}

		protected void ButtonClose_Click(object sender, EventArgs e)
		{
			string result = TextBoxResult.Text;

			if(result.Contains("(") && result.Substring(result.Length-1,1) != ")")
			{
				TextBoxResult.Text = result + ")";
			}
		}
	}
}
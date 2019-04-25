//! Header comment
/**
 * example.cs
 * Version 1.0.0
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 **/

//! Comments
// Single line comment
/* Multi-line
comment */

//! Strings
"foo \"bar\" baz"
'foo \'bar\' baz'
@"Verbatim strings"
@"Luis: ""Patrick, where did you get that overnight bag?""
    Patrick: ""Jean Paul Gaultier.""";
@'Luis: ''Patrick, where did you get that overnight bag?''
    Patrick: ''Jean Paul Gaultier.''';

//! Full example
using System.Windows.Forms;
using System.Drawing;

public static DialogResult InputBox(string title, string promptText, ref string value)
{
  Form form = new Form();
  Label label = new Label();
  TextBox textBox = new TextBox();
  Button buttonOk = new Button();
  Button buttonCancel = new Button();

  form.Text = title;
  label.Text = promptText;
  textBox.Text = value;

  buttonOk.Text = "OK";
  buttonCancel.Text = "Cancel";
  buttonOk.DialogResult = DialogResult.OK;
  buttonCancel.DialogResult = DialogResult.Cancel;

  label.SetBounds(9, 20, 372, 13);
  textBox.SetBounds(12, 36, 372, 20);
  buttonOk.SetBounds(228, 72, 75, 23);
  buttonCancel.SetBounds(309, 72, 75, 23);

  label.AutoSize = true;
  textBox.Anchor = textBox.Anchor | AnchorStyles.Right;
  buttonOk.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
  buttonCancel.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;

  form.ClientSize = new Size(396, 107);
  form.Controls.AddRange(new Control[] { label, textBox, buttonOk, buttonCancel });
  form.ClientSize = new Size(Math.Max(300, label.Right + 10), form.ClientSize.Height);
  form.FormBorderStyle = FormBorderStyle.FixedDialog;
  form.StartPosition = FormStartPosition.CenterScreen;
  form.MinimizeBox = false;
  form.MaximizeBox = false;
  form.AcceptButton = buttonOk;
  form.CancelButton = buttonCancel;

  DialogResult dialogResult = form.ShowDialog();
  value = textBox.Text;
  return dialogResult;
}

//! Foreach
var fibNumbers = new List<int> { 0, 1, 1, 2, 3, 5, 8, 13 };
int count = 0;
foreach (int element in fibNumbers)
{
    count++;
    Console.WriteLine($"Element #{count}: {element}");
}
Console.WriteLine($"Number of elements: {count}");

//! Operator
y = 2 + 3;
a ? b : c ? d : e
double sinc(double x) => x != 0.0 ? Math.Sin(x) / x : 1;
Console.WriteLine(5 % 4);

//! Array
int[] intArray2 = new int[5]{1, 2, 3, 4, 5};

//! Nullable
int? a = 2;
int? b = 3;
int? c = null;

//! Operator
int y = x ?? -1;

//! Enum
enum WeekDays
{
    Monday = 0,
    Tuesday =1,
    Wednesday = 2,
    Thursday = 3,
    Friday = 4,
    Saturday =5,
    Sunday = 6
}

//! Properties
public class SaleItem
{
   string _name;
   decimal _cost;
   
   public SaleItem(string name, decimal cost)
   {
      _name = name;
      _cost = cost;
   }

   public string Name 
   {
      get => _name;
      set => _name = value;
   }

   public decimal Price
   {
      get => _cost;
      set => _cost = value; 
   }
}

//! Attributes
[System.Runtime.InteropServices.DllImport("user32.dll")]
extern static void SampleMethod();

[Conditional("DEBUG"), Conditional("TEST1")]
void TraceMethod()
{
}
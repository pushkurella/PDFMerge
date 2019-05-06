using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PDFMerger
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnMerge_Click(object sender, EventArgs e)
        {
            string fileExtension1 = System.IO.Path.GetExtension(FileUpload1.FileName);
            string fileExtension2 = System.IO.Path.GetExtension(FileUpload2.FileName);
            string fileExtension3 = System.IO.Path.GetExtension(FileUpload3.FileName);
            string fileExtension4 = System.IO.Path.GetExtension(FileUpload4.FileName);
            bool valid = false;
            bool firstPdfValid =ValidateFileUploadControllers(fileExtension1,FileUpload1,Label1);
            bool secondPdfValid = ValidateFileUploadControllers(fileExtension2, FileUpload2, Label2);
            bool thirdPdfValid = ValidateFileUploadControllers(fileExtension3, FileUpload3, Label3);
            bool fourthPdfValid = ValidateFileUploadControllers(fileExtension4, FileUpload4, Label4);
            bool[] booleanPdfs = new[] { firstPdfValid,secondPdfValid,thirdPdfValid,fourthPdfValid };
            int noOfValidPdfs = count(booleanPdfs, true);

            if(noOfValidPdfs >= 2)
            {
                valid = true;   
            }
            if (valid)
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
            }

            //calling create merged pdf code
            string pdfPath = "";
            string sourceDir = "";
            CreateMergedPDF(pdfPath, sourceDir);

            
        }
        static void CreateMergedPDF(string targetPDF, string sourceDir)
        {
            using (FileStream stream = new FileStream(targetPDF, FileMode.Create))
            {
                Document pdfDoc = new Document(PageSize.A4);
                PdfCopy pdf = new PdfCopy(pdfDoc, stream);
                pdfDoc.Open();
                var files = Directory.GetFiles(sourceDir);
                Console.WriteLine("Merging files count: " + files.Length);
                int i = 1;
                foreach (string file in files)
                {
                    Console.WriteLine(i + ". Adding: " + file);
                    pdf.AddDocument(new PdfReader(file));
                    i++;
                }

                if (pdfDoc != null)
                    pdfDoc.Close();

                Console.WriteLine("SpeedPASS PDF merge complete.");
            }
        }

        private bool ValidateFileUploadControllers(string fileExtension,FileUpload file,Label label)
        {
           

            //validating whether the file upload control has any file attached
            if (!file.HasFile)
            {
                label.Visible = true;
                label.ForeColor = System.Drawing.Color.Red;
                label.Text = "Select atleast two files to merge";

            }
            //validating whether the file that is uploaded is pdf or not
            else if (fileExtension.ToLower() != ".pdf")
            {
                label.Visible = true;
                label.ForeColor = System.Drawing.Color.Red;
                label.Text = "Only PDF files are valid";
            }
            else//when validation is successful
            {
                return true;
            }
            return false;
        }
        public static int count(bool[] array, bool flag)
        {
            int value = 0;

            for (int i = 0; i < array.Length; i++)
            {
                if (array[i] == flag) value++;
            }

            return value;
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {

        }

    }
}
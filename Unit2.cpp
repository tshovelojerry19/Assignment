//---------------------------------------------------------------------------

#include <vcl.h>
#include <exception>
#pragma hdrstop

#include "Unit2.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{
	TDateTime* date = new TDateTime(Now());

	edtSurname->Text="";
	edtFirstNames->Text="";
	edtContactNumber->Text="";
	edtDate->Text="";
	edtDate->Text = date->FormatString("yyyy-mm-dd");
	edtAge->Text="";
}
//---------------------------------------------------------------------------
void __fastcall TForm2::btnSubmitClick(TObject *Sender)
{
	String strSurname = "";
	String strFirstNames = "";
	String strContactNumber = "";
	String strDate = "";
	String strAge = "";
	String sqlQuery, strOther, strPizza,strPasta, strPapAndWors, strChickenStirFry, strBeefStirFry;
	int age = 0;
	String stronglyAgree[4], agree[4], neutral[4], disagree[4], stronglyDisagree[4];

	AnsiString desc[4] = {"I like to eat out", "I like to watch Movies", "I like to watch TV","I like to listen radio"};
	AnsiString description[4];


	if(edtSurname->Text == "")  {
		ShowMessage("Surname cannot be empty");
	}else{
		strSurname =  edtSurname->Text;
	}
	if(edtFirstNames->Text == "")  {
		ShowMessage("First names cannot be empty");
	}else{
		strFirstNames =  edtFirstNames->Text;
	}
	if(edtContactNumber->Text == "")  {
		ShowMessage("ContactNumber cannot be empty");
	}else{
		strContactNumber =  edtContactNumber->Text;
		  if(strContactNumber.Length()> 10 || strContactNumber.Length()<10)
		  {
			ShowMessage("Contact number must be 10 digit");
		   return;
		  }
	}

	if(edtDate->Text == "")  {
		ShowMessage("date cannot be empty");
	}

	else{
		strDate =  edtDate->Text;
	}
	if(edtAge->Text== "")
	{
		ShowMessage("Age cannot be empty");
	}
	else{
			strAge =  edtAge->Text;
			age = StrToInt(strAge);
			 if(age < 4 || age>120)
			{
				 ShowMessage("Age must be between 4 and 20");
				 return;
			}

		}


		//Checking on check box
	if(chkPizza->Checked){
		strPizza = chkPizza->Caption;
	}else{
		strPizza = "Null";
	}
	if(chkPasta->Checked){
		strPasta = chkPasta->Caption;
	}else{
		strPasta = "Null";
	}
	if(chkPapAndWors->Checked){
		strPapAndWors = chkPapAndWors->Caption;
	}else{
		strPapAndWors = "Null";
	}
	if(chkChickenStirFry->Checked){
		strChickenStirFry = chkChickenStirFry->Caption;
	}else{
		strChickenStirFry = "Null";
	}
	if(chkBeefStirFry->Checked){
		strBeefStirFry = chkBeefStirFry->Caption;
	}else{
		strBeefStirFry = "Null";
	}
	if(chkOther->Checked){
		strOther = chkOther->Caption;
	} else{
		strOther = "Null";
	}


 int count = RadioGroup1->Items->Count;
	for(int x = 0; x < count; x++){
		if(RadioGroup1->ItemIndex == x){
			description[x] = desc[x];
			stronglyAgree[x] = RadioGroup1->Caption;

		}else{
			stronglyAgree[x] =  "NULL";;
		}


	}



	count = RadioGroup2->Items->Count;
	for(int x = 0; x < count; x++){
		if(RadioGroup2->ItemIndex == x){
			description[x] = desc[x];
			agree[x] = RadioGroup2->Caption;


		}else{
			agree[x] =  "NULL";;
		}


	}


	count = RadioGroup3->Items->Count;
	for(int x = 0; x < count; x++){
		if(RadioGroup3->ItemIndex == x){
			description[x] = desc[x];
			neutral[x] = RadioGroup3->Caption;

		}
		else{
			neutral[x] =  "NULL";;
		}

	}


	count = RadioGroup4->Items->Count;
	for(int x = 0; x < count; x++){
		if(RadioGroup4->ItemIndex == x){
			description[x] = desc[x];
			disagree[x] = RadioGroup4->Caption;


		}       else{
			disagree[x] =  "NULL";;
		}


	}


	count = RadioGroup2->Items->Count;
	for(int x = 0; x < count; x++){
		if(RadioGroup5->ItemIndex == x){

			description[x] = desc[x];
			stronglyDisagree[x] = RadioGroup5->Caption;


		} else{
			stronglyDisagree[x] =  "NULL";;
		}


	}



	//Confirming if one check box is checked
	if(strPizza == ""&& strPasta ==""&& strPapAndWors=="" && strChickenStirFry=="" && strBeefStirFry=="" && strOther==""){
	  ShowMessage("Atleast one check box must be checked");
	} else{

		try {
			sqlQuery = "insert into personaldetails values ('"+strSurname+"','"+strFirstNames+"','"+strContactNumber+"','"+strDate+"','"+IntToStr(age)+"')";
			query->SQL->Text = sqlQuery;
			query->ExecSQL(true);
			query->Close();

			sqlQuery = "insert into favouritefood(pizza, pasta,papAndWors, chickenStirFry, beefStirFry, other, ContactNumber) values ('"+strPizza+"','"+strPasta+"','"+strPapAndWors+"','"+strChickenStirFry+"','"+strBeefStirFry+"','"+strOther+"'," + "(SELECT a.contactNo FROM personaldetails a WHERE a.contactNo = '"+strContactNumber+"'))";
			queryF1->SQL->Text = sqlQuery;
			queryF1->ExecSQL(true);
			queryF1->Close();
			for(int y = 0; y < count; y++){
				sqlQuery = "insert into scale( description, stronglyAgree , agree, neutral, disagree, stronglyDisagree, contactNo) values ('"+ description[y]+"','"+stronglyAgree[y]+"','"+agree[y]+"','"+neutral[y]+"','"+disagree[y]+"','"+stronglyDisagree[y]+"'," + "(SELECT a.contactNo FROM personaldetails a WHERE a.contactNo = '"+strContactNumber+"'))";
				queryScale->SQL->Text = sqlQuery;
				queryScale->ExecSQL(true);
				queryScale->Close();
			}
			ShowMessage("Data details captured successfully");

		}
		catch (...) {
			ShowMessage("Personal details not saved successfully because contact number already exists");
		}
	}



	Form2->Close();

  }
//---------------------------------------------------------------------------
void __fastcall TForm2::FormCreate(TObject *Sender)
{
	RadioGroup1->Items->Add("");
	RadioGroup1->Items->Add("");
	RadioGroup1->Items->Add("");
	RadioGroup1->Items->Add("");

	RadioGroup2->Items->Add("");
	RadioGroup2->Items->Add("");
	RadioGroup2->Items->Add("");
	RadioGroup2->Items->Add("");


	RadioGroup3->Items->Add("");
	RadioGroup3->Items->Add("");
	RadioGroup3->Items->Add("");
	RadioGroup3->Items->Add("");

	RadioGroup4->Items->Add("");
	RadioGroup4->Items->Add("");
	RadioGroup4->Items->Add("");
	RadioGroup4->Items->Add("");

	RadioGroup5->Items->Add("");
	RadioGroup5->Items->Add("");
	RadioGroup5->Items->Add("");
	RadioGroup5->Items->Add("");

}
//---------------------------------------------------------------------------





//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
 #include "iomanip"
#include "Unit3.h"
#include "Unit1.h"
using namespace std;
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{


	String sqlQuery = "Select count(*) from personaldetails";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int count = query->FieldValues["count(*)"];
	lblTotNum->Caption = count;
	query->Active = false;



	sqlQuery = "Select sum(age) / COUNT(*) from personaldetails LIMIT 1";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	String data = query->FieldValues["sum(age) / COUNT(*)"];
	lblAveAge->Caption = data;
	query->Active = false;


	sqlQuery = "Select MAX(age) from personaldetails LIMIT 1";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	data = query->FieldValues["MAX(age)"];
	lblOldest->Caption = data;
	query->Active = false;

	sqlQuery = "Select MIN(age) from personaldetails LIMIT 1";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	data = query->FieldValues["MIN(age)"];
	lblYoungest->Caption = data;
	query->Active = false;


	sqlQuery = "Select count(*) from favouritefood";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int numRows = StrToInt(query->FieldValues["count(*)"]);
	query->Active = false;

	//Calculating Pizza percentage
	sqlQuery = "Select count(pizza) from favouritefood where pizza = 'pizza'";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int counterPizza = StrToInt(query->FieldValues["count(pizza)"]);
	query->Active = false;
	double perc = 0.0;
	perc =  FormatFloat("0.00",static_cast<float>(counterPizza) / static_cast<float>(numRows)) * 100;
	  lblPercPizza->Caption =  static_cast<String>(perc)+"%";;

	//Calculating Pasta percentage
	sqlQuery = "SELECT COUNT(pasta) AS countpasta FROM favouritefood WHERE pasta = 'pasta'";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int counterPasta = StrToInt(query->FieldValues["countpasta"]);
	query->Active = false;

	perc = 0.0;
	perc =  FormatFloat("0.00",static_cast<float>(counterPasta) / static_cast<float>(numRows)) * 100;
	lblPercPasta->Caption =  static_cast<String>(perc)+"%";;

	//Calculating Pap and Wors  percentage
	sqlQuery = "SELECT COUNT(papAndWors) AS countPapAndWors FROM favouritefood WHERE papAndWors = 'pap And Wors'";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int countPapAndWors = StrToInt(query->FieldValues["countPapAndWors"]);
	query->Active = false;

	perc = 0.0;

   perc =  FormatFloat("0.00",static_cast<float>(countPapAndWors) / static_cast<float>(numRows)) * 100;
	lblPapAndWors->Caption = static_cast<String>(perc)+"%";

	 sqlQuery = "SELECT COUNT(*) FROM `scale` WHERE description = 'I like to eat out' AND LOWER(stronglyAgree) <> 'NULL' OR agree <> 'NULL';";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int countEatOut = StrToInt(query->FieldValues["COUNT(*)"]);
	query->Active = false;

	double ave = 0.0;
	ave = static_cast<float>(countEatOut) / static_cast<float>(count);

	 lblEatOut->Caption = FormatFloat("0.00",ave );


	sqlQuery = "SELECT COUNT(*) FROM `scale` WHERE description = 'I watch Movies' AND LOWER(stronglyAgree) <> 'NULL' OR agree <> 'NULL';";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int countWatchMovies = StrToInt(query->FieldValues["COUNT(*)"]);
	query->Active = false;

	double aveMovie = 0.0;
	aveMovie = static_cast<float>(countWatchMovies) / static_cast<float>(count);

	lblWatchMovies->Caption =  FormatFloat("0.00",aveMovie );


	sqlQuery = "SELECT COUNT(*) FROM `scale` WHERE description = 'I watch Movies' AND LOWER(stronglyAgree) <> 'NULL' OR agree <> 'NULL';";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int countWatchTV = StrToInt(query->FieldValues["COUNT(*)"]);
	query->Active = false;

	double aveTV = 0.0;
	aveTV = static_cast<float>(countWatchTV) / static_cast<float>(count);

	lblWatchTV->Caption = FormatFloat("0.00",aveTV );

	sqlQuery = "SELECT COUNT(*) FROM `scale` WHERE description = 'I watch Movies' AND LOWER(stronglyAgree) <> 'NULL' OR agree <> 'NULL';";
	query->SQL->Text = sqlQuery;
	query->Active = true;
	int countRadio = StrToInt(query->FieldValues["COUNT(*)"]);
	query->Active = false;

	double aveRadio = 0.0;
	aveRadio = static_cast<float>(countRadio) / static_cast<float>(count);

	lblListenRadio->Caption = FormatFloat("0.00",aveRadio );

}
//---------------------------------------------------------------------------
void __fastcall TForm3::btnOKClick(TObject *Sender)
{
	Form3->Close();
}
//---------------------------------------------------------------------------

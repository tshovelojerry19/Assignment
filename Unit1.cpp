//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{

}
//---------------------------------------------------------------------------
void __fastcall TForm1::btnFillOutSurveyClick(TObject *Sender)
{
	Form2->ShowModal();

}
//---------------------------------------------------------------------------
void __fastcall TForm1::btnViewSurveyResultsClick(TObject *Sender)
{
	Form3->ShowModal();

}
//---------------------------------------------------------------------------

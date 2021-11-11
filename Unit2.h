//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.DBXMySQL.hpp>
#include <Data.FMTBcd.hpp>
#include <Data.SqlExpr.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TEdit *edtSurname;
	TEdit *edtFirstNames;
	TEdit *edtContactNumber;
	TEdit *edtDate;
	TEdit *edtAge;
	TLabel *Label8;
	TCheckBox *chkPizza;
	TCheckBox *chkOther;
	TCheckBox *chkBeefStirFry;
	TCheckBox *chkPasta;
	TCheckBox *chkPapAndWors;
	TCheckBox *chkChickenStirFry;
	TButton *btnSubmit;
	TLabel *Label9;
	TSQLConnection *ConnmysqlConnection;
	TSQLQuery *query;
	TSQLConnection *FoodconnConnection;
	TSQLQuery *queryF1;
	TGroupBox *GroupBox1;
	TRadioGroup *RadioGroup1;
	TRadioGroup *RadioGroup2;
	TRadioGroup *RadioGroup3;
	TRadioGroup *RadioGroup4;
	TRadioGroup *RadioGroup5;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *Label13;
	TSQLConnection *ConnscaleConnection;
	TSQLQuery *queryScale;
	TSQLConnection *ConndescConnection;
	TSQLQuery *queryDesc;
	void __fastcall btnSubmitClick(TObject *Sender);
	void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif

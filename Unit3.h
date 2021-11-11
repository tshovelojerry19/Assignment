//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.DBXMySQL.hpp>
#include <Data.FMTBcd.hpp>
#include <Data.SqlExpr.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *lblPercPizza;
	TLabel *lblPercPasta;
	TLabel *lblPapAndWors;
	TLabel *lblEatOut;
	TLabel *lblWatchMovies;
	TLabel *lblWatchTV;
	TLabel *lblListenRadio;
	TLabel *lblYoungest;
	TLabel *lblAveAge;
	TLabel *lblOldest;
	TLabel *lblTotNum;
	TButton *btnOK;
	TSQLConnection *FoodconnConnection;
	TSQLQuery *queryDesc;
	TSQLConnection *ConndescConnection;
	TSQLQuery *queryScale;
	TSQLConnection *ConnscaleConnection;
	TSQLQuery *queryF1;
	TSQLQuery *query;
	TSQLConnection *ConnmysqlConnection;
	void __fastcall btnOKClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif

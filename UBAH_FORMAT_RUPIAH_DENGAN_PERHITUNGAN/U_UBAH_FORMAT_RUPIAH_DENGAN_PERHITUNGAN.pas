unit U_UBAH_FORMAT_RUPIAH_DENGAN_PERHITUNGAN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edtotal: TEdit;
    edbayar: TEdit;
    edkembali: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure edtotalChange(Sender: TObject);
    procedure edbayarChange(Sender: TObject);
    procedure edkembaliChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

function Ribuan(Edit:TEdit):string;
var
  NilaiRupiah : string;
  AngkaRupiah : Currency;
begin
  if Edit.Text='' then Exit;
  NilaiRupiah := Edit.Text;
  NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
  NilaiRupiah := StringReplace(NilaiRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
  AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
  Edit.Text := FormatCurr('#,###',AngkaRupiah);
  Edit.SelStart := Length(Edit.Text)
end;

function HapusFormat(Nilai:TEdit):Integer;
var
  hasil : String;
begin
  hasil := Nilai.text;
  hasil := StringReplace(hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  hasil := StringReplace(hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  Result := StrToInt(hasil);
end;

{$R *.dfm}

procedure TForm1.edtotalChange(Sender: TObject);
begin
  Ribuan(edtotal);
end;

procedure TForm1.edbayarChange(Sender: TObject);
begin
  Ribuan(edbayar);
end;

procedure TForm1.edkembaliChange(Sender: TObject);
begin
  Ribuan(edkembali);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  total,bayar,kembali : Integer;
begin
  total := HapusFormat(edtotal);
  bayar := HapusFormat(edbayar);
  kembali := bayar - total;
  edkembali.Text := IntToStr(kembali);
end;

end.

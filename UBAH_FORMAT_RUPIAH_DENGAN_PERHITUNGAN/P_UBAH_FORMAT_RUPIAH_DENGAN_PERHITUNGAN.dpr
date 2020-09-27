program P_UBAH_FORMAT_RUPIAH_DENGAN_PERHITUNGAN;

uses
  Forms,
  U_UBAH_FORMAT_RUPIAH_DENGAN_PERHITUNGAN in 'U_UBAH_FORMAT_RUPIAH_DENGAN_PERHITUNGAN.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

program VirusTotalAPI;

uses
  Vcl.Forms,
  MainForm1 in 'MainForm1.pas' {MainForm},
  VirusTotal in 'VirusTotal.pas',
  XSuperJSON in 'XSuperJSON.pas',
  XSuperObject in 'XSuperObject.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

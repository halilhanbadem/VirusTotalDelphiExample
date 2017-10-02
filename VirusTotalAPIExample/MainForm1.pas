unit MainForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, VirusTotal, XSuperJSON, XSuperObject;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Button2: TButton;
    FileO: TOpenDialog;
    Edit1: TEdit;
    Label2: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  VT: TVirusTotalAPI;
  ResultScan: TvtFileSend;
  vtReport: TvtFileReport;

implementation

{$R *.dfm}

   {Coder ByHalil Han Badem}

procedure TMainForm.Button1Click(Sender: TObject);
begin
 VT := TVirusTotalAPI.Create;
 ResultScan := VT.ScanFile(FileO.FileName);
 Edit1.Text := ResultScan.permalink;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  FileO.Execute;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
 vtReport  := VT.reportFile(ResultScan.sha256);

 if vtReport.scans.Avast.detected = True then
 begin
  Memo1.Lines.Add('Avast: Negative' + sLineBreak + 'Status: '+vtReport.scans.TrendMicro_HouseCall.result);
 end
 else
 begin
  Memo1.Lines.Add('Avast: Negative'+ sLineBreak + 'Status: '+vtReport.scans.TrendMicro_HouseCall.result);
 end;
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
 ShowMessage(ResultScan.sha256);
end;

end.

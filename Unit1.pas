unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,IniFiles;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  MyIniFile: TIniFile;
begin
  MyIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)
      +Application.Name+ 'MySettings.ini');//Create settings file
      ShowMessage(ExtractFilePath(Application.ExeName)+Application.Name+ 'MySettings.ini');
  MyIniFile.WriteInteger('RadioGroup1', 'ItemIndex', RadioGroup1.ItemIndex);
  MyIniFile.WriteString('Edit1', 'Text', Edit1.Text);
  MyIniFile.WriteString('Edit2', 'Text', Edit2.Text);
  MyIniFile.WriteString('Edit3', 'Text', Edit3.Text);
  MyIniFile.WriteString('Edit4', 'Text', Edit4.Text);
  MyIniFile.WriteString('Edit5', 'Text', Edit5.Text);
  MyIniFile.WriteBool('CheckBox1','Checked',CheckBox1.Checked);
  myinifile.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  MyIniFile: TIniFile;
begin
  MyIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)
      +Application.Name+ 'MySettings.ini');//Create settings file
      //Load from file
  RadioGroup1.ItemIndex:=MyIniFile.ReadInteger('RadioGroup1', 'ItemIndex',0);
  Edit1.Text:=MyIniFile.ReadString('Edit1', 'Text', 'No settings found');
  Edit2.Text:=MyIniFile.ReadString('Edit2', 'Text', 'No settings found');
  Edit3.Text:=MyIniFile.ReadString('Edit3', 'Text', 'No settings found');
  Edit4.Text:=MyIniFile.ReadString('Edit4', 'Text', 'No settings found');
  Edit5.Text:=MyIniFile.ReadString('Edit5', 'Text', 'No settings found');
  CheckBox1.Checked:=MyIniFile.ReadBool('CheckBox1','Checked',false);
  myinifile.Free;
end;

end.

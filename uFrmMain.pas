unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCarro, uAviao,
  uMeioTransporte, Vcl.ToolWin, Vcl.ComCtrls;

type
  TFrmExemplo = class(TForm)
    GBCarro: TGroupBox;
    GBAviao: TGroupBox;
    EdtCapCarro: TEdit;
    EdtQuilometragem: TEdit;
    EdtDescCarro: TEdit;
    EdtCapAviao: TEdit;
    EdtHorasVoo: TEdit;
    EdtDescAviao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BtCriarAviao: TButton;
    BtLiberarAviao: TButton;
    BtCriarCarro: TButton;
    BtLiberarCarro: TButton;
    BtMoverCarro: TButton;
    BtMoverAviao: TButton;
    ToolBar1: TToolBar;
    procedure BtCriarCarroClick(Sender: TObject);
    procedure BtCriarAviaoClick(Sender: TObject);
    procedure BtLiberarCarroClick(Sender: TObject);
    procedure BtLiberarAviaoClick(Sender: TObject);
    procedure BtMoverCarroClick(Sender: TObject);
    procedure BtMoverAviaoClick(Sender: TObject);

  private
    { Private declarations }
  public
    Carro, Aviao: TMeioTransporte;
  end;

var
  FrmExemplo: TFrmExemplo;

implementation

{$R *.dfm}

procedure TFrmExemplo.BtCriarAviaoClick(Sender: TObject);
begin
  Aviao := TAviao.Create;
  if EdtDescAviao.Text <> '' then
    Aviao.Descricao := EdtDescAviao.Text;

  if EdtCapAviao.Text <> '' then
    Aviao.Capacidade := StrToIntDef(EdtCapAviao.Text, 0);

  if EdtHorasVoo.Text <> '' then
    TAviao(Aviao).HorasVoo := StrToIntDef(EdtHorasVoo.Text, 0);
end;

procedure TFrmExemplo.BtCriarCarroClick(Sender: TObject);
begin
  Carro := TCarro.Create;
  if EdtDescCarro.Text <> '' then
    Carro.Descricao := EdtDescCarro.Text;

  if EdtCapCarro.Text <> '' then
    Carro.Capacidade := StrToIntDef(EdtCapCarro.Text, 0);

  if EdtQuilometragem.Text <> '' then
    TCarro(Carro).Quilometragem := StrToIntDef(EdtQuilometragem.Text, 0);
end;

procedure TFrmExemplo.BtLiberarAviaoClick(Sender: TObject);
begin
  Aviao.Free;
end;

procedure TFrmExemplo.BtLiberarCarroClick(Sender: TObject);
begin
  Carro.Free;
end;

procedure TFrmExemplo.BtMoverAviaoClick(Sender: TObject);
begin
  Aviao.Mover;
end;

procedure TFrmExemplo.BtMoverCarroClick(Sender: TObject);
begin
  Carro.Mover;
end;

end.

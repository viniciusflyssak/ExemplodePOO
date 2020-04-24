unit uAviao;

interface

uses uMeioTransporte, classes;

type
  TAviao = class(TMeioTransporte)
  private
    FHorasVoo: integer;
    function GetHorasVoo: integer;
    procedure SetHorasVoo(const Value: integer);

  protected
    procedure Ligar(); override;

  public
    procedure Mover(); override;
    constructor Create(AOwner : Tcomponent);override;

  published
    property HorasVoo: integer read GetHorasVoo write SetHorasVoo;
     procedure register;
  end;

implementation

uses Dialogs;

{ TAviao }

constructor TAviao.Create;
begin
  inherited;
  HorasVoo := 0;
end;

function TAviao.GetHorasVoo: integer;
begin
  result := FHorasVoo;
end;

procedure TAviao.Ligar;
begin
  ShowMessage('Ligando avião ...' + Descricao);
end;

procedure TAviao.Mover();
begin
  inherited;
  ShowMessage(Descricao + ' está Voando.');
end;

procedure TAviao.register;
begin
registercomponents('ClubeDelphi',[TAviao]);
end;

procedure TAviao.SetHorasVoo(const Value: integer);
begin
  if Value < 0 then
    FHorasVoo := 0
  else
    FHorasVoo := Value;
end;

end.

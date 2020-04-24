unit uCarro;

interface

uses uMeioTransporte, classes;

type
  TCarro = class(TMeioTransporte)

  private
    FQuilometragem: integer;
    function GetQuilometragem: integer;
    procedure SetQuilometragem(const Value: integer);

  protected
    procedure Ligar(); override;

  public
    procedure Mover(); override;
    constructor Create(AOwner : Tcomponent);override;

  published
    property Quilometragem: integer read GetQuilometragem
      write SetQuilometragem;
  procedure register;
  end;
implementation

uses Dialogs;

{ TCarro }

constructor TCarro.Create;
begin
  inherited;
  Quilometragem := 0;
end;

function TCarro.GetQuilometragem: integer;
begin
  result := FQuilometragem;
end;

procedure TCarro.Ligar;
begin
  ShowMessage('Ligando o carro ... ' + Descricao);
end;

procedure TCarro.Mover();
begin
  inherited;
  ShowMessage(Descricao + ' entrou em movimento.');
end;

procedure TCarro.register;
begin
registercomponents('ClubeDelphi',[TCarro]);
end;

procedure TCarro.SetQuilometragem(const Value: integer);
begin
  if Value < 0 then
    FQuilometragem := 0
  else
    FQuilometragem := Value;

end;

end.

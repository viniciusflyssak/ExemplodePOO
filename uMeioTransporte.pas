unit uMeioTransporte;

interface

uses classes;

type
  TMeioTransporte = class(TComponent)

  private
    FDescricao: string;
    FCapacidade: integer;

  protected
    procedure Ligar(); virtual; abstract;

  public
    procedure Mover; virtual;
    constructor Create();
    destructor Destroy(); override;

  published
    property Capacidade: integer read FCapacidade write FCapacidade;
    property Descricao: string read FDescricao write FDescricao;
  end;

implementation

uses dialogs;
{ TMeioTransporte}

constructor TMeioTransporte.Create;
begin
  Descricao := 'Sem nome';
  Capacidade := 0;
end;

destructor TMeioTransporte.Destroy;
begin
  inherited;
end;

procedure TMeioTransporte.Mover;
begin
  Ligar();
end;

end.

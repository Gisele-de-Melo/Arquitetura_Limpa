//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

// Unit de Casos de Uso
unit ProductUseCase;

interface

uses
  ProductEntity, ProductRepositoryInterface, System.Generics.Collections;

type
  TProductUseCase = class
  private
    FRepository: IProductRepository;
  public
    constructor Create(ARepository: IProductRepository);
    procedure AddProduct(AProduct: TProduct);
    function GetProduct(AID: Integer): TProduct;
    function GetAllProducts: TList<TProduct>;
  end;

implementation

constructor TProductUseCase.Create(ARepository: IProductRepository);
begin
  FRepository := ARepository;
end;

procedure TProductUseCase.AddProduct(AProduct: TProduct);
begin
  FRepository.Save(AProduct);
end;

function TProductUseCase.GetProduct(AID: Integer): TProduct;
begin
  Result := FRepository.FindByID(AID);
end;

function TProductUseCase.GetAllProducts: TList<TProduct>;
begin
  Result := FRepository.GetAll;
end;

end.

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

// Unit de Interface de Repositório
unit ProductRepositoryInterface;

interface

uses
  ProductEntity, System.Generics.Collections;

type
  IProductRepository = interface
    ['{8AEB25DF-4E57-47F8-83F3-DAB30E1D4F30}']
    procedure Save(AProduct: TProduct);
    function FindByID(AID: Integer): TProduct;
    function GetAll: TList<TProduct>;
  end;

implementation

end.

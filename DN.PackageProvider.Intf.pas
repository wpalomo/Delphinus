{
#########################################################
# Copyright by Alexander Benikowski                     #
# This unit is part of the Delphinus project hosted on  #
# https://github.com/Memnarch/Delphinus                 #
#########################################################
}
unit DN.PackageProvider.Intf;

interface

uses
  Generics.Collections,
  DN.Package.Intf;

type
  IDNPackageProvider = interface
  ['{A6BF1EB6-DCDB-4B77-B1F5-4C86B4C2801D}']
    function GetPackages: TList<IDNPackage>;
    function Reload(): Boolean;
    function Download(const APackage: IDNPackage; const AVersion: string; const AFolder: string; out AContentFolder: string): Boolean;
    property Packages: TList<IDNPackage> read GetPackages;
  end;

implementation

end.

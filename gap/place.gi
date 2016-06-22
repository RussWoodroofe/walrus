#
# anatph: A new approach to proving hyperbolicity
#

## Places
InstallGlobalFunction(NewPlace,
function(loc, c, colour, boundary)
    return Objectify(IsPregroupPlaceType, [loc,c,colour,boundary]);
end);

InstallMethod(Location
             , "for a pregroup place"
             , [IsPregroupPlaceRep],
             p -> p![1]);

InstallMethod(Relator
             , "for a pregroup place"
             , [IsPregroupPlace],
             x -> Relator(p![1]));

InstallMethod(Letter
             , "for a pregroup place"
             , [IsPregroupPlaceRep],
             p -> p![2]);

InstallMethod(Colour
             , "for a pregroup place"
             , [IsPregroupPlaceRep],
             p -> p![3]);

InstallMethod(Boundary
             , "for a pregroup place"
             , [IsPregroupPlaceRep],
             p -> p![4]);

InstallMethod(__ID
             , "for a pregroup place"
             , [IsPregroupPlace],
             p -> p![5]);

InstallMethod(ViewString
             , "for a pregroup place"
             , [IsPregroupPlaceRep],
function(p)
    return STRINGIFY("(", ViewString(p![1]),
                     ",", ViewString(p![2]),
                     ",", ViewString(p![3]),
                     ",", ViewString(p![4]),
                     ")");
end);
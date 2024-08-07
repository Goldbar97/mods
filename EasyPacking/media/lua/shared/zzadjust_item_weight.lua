--[[
Logic for weight
4 pack = 4 * weight *                   0.775
5 pack = 5 * weight *                   0.7
8 pack = 8 * weight *                   0.625
10 pack = 10 * weight *                 0.5
5 pack with sheetrope = 5 * weight *    0.3
10 pack with sheetrope = 10 * weight *  0.25
5 pack with rope = 5 * weight * 0.2
10 pack with rope = 10 * weight * 0.15
also for Electronics Scrap, Rag, Denim, Leather:
10 pack = 10 * weight * 0.7
50 pack = 50 * weight * 0.6
100 pack = 100 * weight * 0.5
]]
local listToAdjust = {}
local function WeightAdjustment(itemName, baseItemName, amount, multiplier)
    local item = ScriptManager.instance:getItem(itemName)
    local baseItem = ScriptManager.instance:getItem(baseItemName)
    if item and baseItem then
        local baseItemWeight = baseItem:getActualWeight()
        local calculated = baseItemWeight * amount * multiplier
        item:DoParam("Weight = "..calculated)
    end

end
local function AdjustWeight(itemName, baseItemName, amount, multiplier)
    if not listToAdjust[itemName] then
        listToAdjust[itemName] = {};
    end
    if not listToAdjust[itemName][baseItemName] then
        listToAdjust[itemName][baseItemName] = {}
    end
    listToAdjust[itemName][baseItemName][amount] = multiplier;
end
local function zzPerform()
    for itemName,v in pairs(listToAdjust) do
        for baseItemName,y in pairs(v) do
            for amount,multiplier in pairs(y) do
                if pcall(WeightAdjustment(itemName,baseItemName,amount,multiplier)) then
                    print("Could not patch Item's ",itemName," Weight calculated from base item ",baseItemName," of amount",amount," multiplied by ", multiplier)
                end
            end
        end
    end
end
--add for every packed item: Name, BaseName,Amount,Multiplier. Scroll up for for multiplier
AdjustWeight("GidOrganized.OS12pkAdhesiveBandages","Base.Bandaid",12,0.5)

AdjustWeight("GidOrganized.OS30pkAlcoholWipes","Base.AlcoholWipes",6,0.5)

AdjustWeight("GidOrganized.OS30pkAntibiotics","Base.Antibiotics",30,0.5)

AdjustWeight("Packing.10pkAluminum","Base.Aluminum",10,0.7)
AdjustWeight("Packing.50pkAluminum","Base.Aluminum",50,0.6)
AdjustWeight("Packing.100pkAluminum","Base.Aluminum",100,0.5)

AdjustWeight("Packing.10pkAmplifier","Base.Amplifier",10,0.7)
AdjustWeight("Packing.50pkAmplifier","Base.Amplifier",50,0.6)
AdjustWeight("Packing.100pkAmplifier","Base.Amplifier",100,0.5)

AdjustWeight("GidOrganized.OS50pkAntidepressants","Base.PillsAntiDep",5,0.5)

AdjustWeight("GidOrganized.OS9pkBandages","Base.Bandage",9,0.5)

AdjustWeight("GidOrganized.OS9pkBandagesDirty","Base.BandageDirty",9,0.5)

AdjustWeight("Packing.10pkBarbedWire","Base.BarbedWire",10,0.5)
AdjustWeight("Packing.5pkBarbedWire","Base.BarbedWire",5,0.7)
AdjustWeight("Packing.100pkWCBarbedWire","Base.BarbedWire",100,0.075)
AdjustWeight("Packing.50pkWCBarbedWire","Base.BarbedWire",50,0.1)

AdjustWeight("Packing.10pkBattery","Base.Battery",10,0.5)
AdjustWeight("Packing.5pkBattery","Base.Battery",5,0.7)

AdjustWeight("Packing.6pkBeer","Base.BeerBottle",6,0.5)

AdjustWeight("Packing.6pkBeerCan","Base.BeerCan",6,0.5)

AdjustWeight("GidOrganized.OS50pkBetaBlockers","Base.PillsBeta",5,0.5)

AdjustWeight("Packing.10pkBluePen","Base.BluePen",10,0.5)
AdjustWeight("Packing.5pkBluePen","Base.BluePen",5,0.7)

AdjustWeight("Packing.10pkBook","Base.Book",10,0.5)
AdjustWeight("Packing.5pkBook","Base.Book",5,0.7)

AdjustWeight("GidOrganizedFood.OS6pkCannedBeans","Base.TinnedBeans",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedBolognese","Base.CannedBolognese",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedCarrots","Base.CannedCarrots2",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedChili","Base.CannedChili",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedCorn","Base.CannedCorn",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedCornedBeef","Base.CannedCornedBeef",6,0.5)

AdjustWeight("Packing.6pkCannedFruitBeverage","Base.CannedFruitBeverage",6,0.5)

AdjustWeight("Packing.6pkCannedFruitCocktail","Base.CannedFruitCocktail",6,0.5)

AdjustWeight("Packing.6pkCannedMilk","Base.CannedMilk",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedMushSoup","Base.CannedMushroomSoup",6,0.5)

AdjustWeight("Packing.6pkCannedPeaches","Base.CannedPeaches",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedPeas","Base.CannedPeas",6,0.5)

AdjustWeight("Packing.6pkCannedPineapple","Base.CannedPineapple",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedPotato","Base.CannedPotato2",6,0.5)

AdjustWeight("GidOrganizedFood.OS4pkSardines","Base.CannedSardines",4,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedSoup","Base.TinnedSoup",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkCannedTomato","Base.CannedTomato2",6,0.5)

AdjustWeight("GidOrganizedFood.OS8pkCannedTuna","Base.TunaTin",8,0.5)

AdjustWeight("Packing.20pkCigarettes","Base.Cigarettes",20,0.5)

AdjustWeight("GidOrganizedFood.OS4pkCoffee","Base.Coffee2",4,0.5)

AdjustWeight("Packing.10pkRopeConcretePowder","Base.ConcretePowder",10,0.15)
AdjustWeight("Packing.5pkRopeConcretePowder","Base.ConcretePowder",5,0.2)
AdjustWeight("Packing.10pkSheetRopeConcretePowder","Base.ConcretePowder",10,0.25)
AdjustWeight("Packing.5pkSheetRopeConcretePowder","Base.ConcretePowder",5,0.3)
AdjustWeight("Packing.100pkWCConcretePowder","Base.ConcretePowder",100,0.075)
AdjustWeight("Packing.50pkWCConcretePowder","Base.ConcretePowder",50,0.1)

AdjustWeight("GidOrganized.OS12pkCottonBalls","Base.CottonBalls",12,0.5)

AdjustWeight("Packing.10pkCrispA","Base.Crisps",10,0.5)
AdjustWeight("Packing.5pkCrispA","Base.Crisps",5,0.7)

AdjustWeight("Packing.10pkCrispB","Base.Crisps2",10,0.5)
AdjustWeight("Packing.5pkCrispB","Base.Crisps2",5,0.7)

AdjustWeight("Packing.10pkCrispC","Base.Crisps3",10,0.5)
AdjustWeight("Packing.5pkCrispC","Base.Crisps3",5,0.7)

AdjustWeight("Packing.10pkCrispD","Base.Crisps4",10,0.5)
AdjustWeight("Packing.5pkCrispD","Base.Crisps4",5,0.7)

AdjustWeight("Packing.10pkDenim","Base.DenimStrips",10,0.7)
AdjustWeight("Packing.50pkDenim","Base.DenimStrips",50,0.6)
AdjustWeight("Packing.100pkDenim","Base.DenimStrips",100,0.5)

AdjustWeight("Packing.10pkRopeDirtBag","Base.Dirtbag",10,0.15)
AdjustWeight("Packing.5pkRopeDirtBag","Base.Dirtbag",5,0.2)

AdjustWeight("Packing.10pkSheetRopeDirtBag","Base.Dirtbag",10,0.25)
AdjustWeight("Packing.5pkSheetRopeDirtBag","Base.Dirtbag",5,0.3)

AdjustWeight("GidOrganized.OS4pkDisinfectant","Base.Disinfectant",4,0.5)

AdjustWeight("Packing.6pkDogFood","Base.Dogfood",6,0.5)

AdjustWeight("GidOrganizedFood.OS4pkDuctTape","Base.DuctTape",4,0.5)

AdjustWeight("Packing.10pkElectricWire","Base.ElectricWire",10,0.5)
AdjustWeight("Packing.5pkElectricWire","Base.ElectricWire",5,0.7)

AdjustWeight("Packing.10pkElectronicsScrap","Base.ElectronicsScrap",10,0.7)
AdjustWeight("Packing.50pkElectronicsScrap","Base.ElectronicsScrap",50,0.6)
AdjustWeight("Packing.100pkElectronicsScrap","Base.ElectronicsScrap",100,0.5)

AdjustWeight("Packing.10pkFishingLine","Base.FishingLine",10,0.5)
AdjustWeight("Packing.5pkFishingLine","Base.FishingLine",5,0.7)

AdjustWeight("Packing.10pkFishingNet","Base.FishingNet",10,0.5)
AdjustWeight("Packing.5pkFishingNet","Base.FishingNet",5,0.7)

AdjustWeight("Packing.10pkGarbage","Base.Garbagebag",10,0.5)
AdjustWeight("Packing.5pkGarbage","Base.Garbagebag",5,0.7)

AdjustWeight("Packing.10pkGlue","Base.Glue",10,0.5)
AdjustWeight("Packing.5pkGlue","Base.Glue",5,0.7)

AdjustWeight("Packing.10pkRopeGravelBag","Base.Gravelbag",10,0.15)
AdjustWeight("Packing.5pkRopeGravelBag","Base.Gravelbag",5,0.2)
AdjustWeight("Packing.10pkSheetRopeGravelBag","Base.Gravelbag",10,0.25)
AdjustWeight("Packing.5pkSheetRopeGravelBag","Base.Gravelbag",5,0.3)

AdjustWeight("Packing.10pkLeather","Base.LeatherStrips",10,0.7)
AdjustWeight("Packing.50pkLeather","Base.LeatherStrips",50,0.6)
AdjustWeight("Packing.100pkLeather","Base.LeatherStrips",100,0.5)

AdjustWeight("Packing.10pkLightBulbBlue","Base.LightBulbBlue",10,0.7)
AdjustWeight("Packing.50pkLightBulbBlue","Base.LightBulbBlue",50,0.6)
AdjustWeight("Packing.100pkLightBulbBlue","Base.LightBulbBlue",100,0.5)

AdjustWeight("Packing.10pkLightBulbCyan","Base.LightBulbCyan",10,0.7)
AdjustWeight("Packing.50pkLightBulbCyan","Base.LightBulbCyan",50,0.6)
AdjustWeight("Packing.100pkLightBulbCyan","Base.LightBulbCyan",100,0.5)

AdjustWeight("Packing.10pkLightBulbGreen","Base.LightBulbGreen",10,0.7)
AdjustWeight("Packing.50pkLightBulbGreen","Base.LightBulbGreen",50,0.6)
AdjustWeight("Packing.100pkLightBulbGreen","Base.LightBulbGreen",100,0.5)

AdjustWeight("Packing.10pkLightBulbMagenta","Base.LightBulbMagenta",10,0.7)
AdjustWeight("Packing.50pkLightBulbMagenta","Base.LightBulbMagenta",50,0.6)
AdjustWeight("Packing.100pkLightBulbMagenta","Base.LightBulbMagenta",100,0.5)

AdjustWeight("Packing.10pkLightBulbOrange","Base.LightBulbOrange",10,0.7)
AdjustWeight("Packing.50pkLightBulbOrange","Base.LightBulbOrange",50,0.6)
AdjustWeight("Packing.100pkLightBulbOrange","Base.LightBulbOrange",100,0.5)

AdjustWeight("Packing.10pkLightBulbPink","Base.LightBulbPink",10,0.7)
AdjustWeight("Packing.50pkLightBulbPink","Base.LightBulbPink",50,0.6)
AdjustWeight("Packing.100pkLightBulbPink","Base.LightBulbPink",100,0.5)

AdjustWeight("Packing.10pkLightBulbPurple","Base.LightBulbPurple",10,0.7)
AdjustWeight("Packing.50pkLightBulbPurple","Base.LightBulbPurple",50,0.6)
AdjustWeight("Packing.100pkLightBulbPurple","Base.LightBulbPurple",100,0.5)

AdjustWeight("Packing.10pkLightBulbRed","Base.LightBulbRed",10,0.7)
AdjustWeight("Packing.50pkLightBulbRed","Base.LightBulbRed",50,0.6)
AdjustWeight("Packing.100pkLightBulbRed","Base.LightBulbRed",100,0.5)

AdjustWeight("Packing.10pkLightBulb","Base.LightBulb",10,0.7)
AdjustWeight("Packing.50pkLightBulb","Base.LightBulb",50,0.6)
AdjustWeight("Packing.100pkLightBulb","Base.LightBulb",100,0.5)

AdjustWeight("Packing.10pkLightBulbYellow","Base.LightBulbYellow",10,0.7)
AdjustWeight("Packing.50pkLightBulbYellow","Base.LightBulbYellow",50,0.6)
AdjustWeight("Packing.100pkLightBulbYellow","Base.LightBulbYellow",100,0.5)

AdjustWeight("Packing.10pkLighter","Base.Lighter",10,0.5)
AdjustWeight("Packing.5pkLighter","Base.Lighter",5,0.7)

AdjustWeight("Packing.10pkMagazine","Base.Magazine",10,0.5)
AdjustWeight("Packing.5pkMagazine","Base.Magazine",5,0.7)

AdjustWeight("Packing.10pkMatches","Base.Matches",10,0.5)
AdjustWeight("Packing.5pkMatches","Base.Matches",5,0.7)

AdjustWeight("Packing.10pkMetalBar","Base.MetalBar",10,0.5)
AdjustWeight("Packing.5pkMetalBar","Base.MetalBar",5,0.7)
AdjustWeight("Packing.10pkRopeMetalBar","Base.MetalBar",10,0.15)
AdjustWeight("Packing.5pkRopeMetalBar","Base.MetalBar",5,0.2)
AdjustWeight("Packing.10pkSheetRopeMetalBar","Base.MetalBar",10,0.25)
AdjustWeight("Packing.5pkSheetRopeMetalBar","Base.MetalBar",5,0.3)

AdjustWeight("Packing.10pkMetalPipe","Base.MetalPipe",10,0.5)
AdjustWeight("Packing.5pkMetalPipe","Base.MetalPipe",5,0.7)
AdjustWeight("Packing.10pkRopeMetalPipe","Base.MetalPipe",10,0.15)
AdjustWeight("Packing.5pkRopeMetalPipe","Base.MetalPipe",5,0.2)
AdjustWeight("Packing.10pkSheetRopeMetalPipe","Base.MetalPipe",10,0.25)
AdjustWeight("Packing.5pkSheetRopeMetalPipe","Base.MetalPipe",5,0.3)

AdjustWeight("Packing.10pkNailsBox","Base.NailsBox",10,0.5)
AdjustWeight("Packing.5pkNailsBox","Base.NailsBox",5,0.7)

AdjustWeight("Packing.10pkNewspaper","Base.Newspaper",10,0.5)
AdjustWeight("Packing.5pkNewspaper","Base.Newspaper",5,0.7)

AdjustWeight("Packing.10pkNotebook","Base.Notebook",10,0.5)
AdjustWeight("Packing.5pkNotebook","Base.Notebook",5,0.7)

AdjustWeight("Packing.10pkOrangeSoda","Base.PopBottle",10,0.5)
AdjustWeight("Packing.5pkOrangeSoda","Base.PopBottle",5,0.7)

AdjustWeight("GidOrganized.OS50pkPainkillers","Base.Pills",5,0.5)

AdjustWeight("Packing.10pkPen","Base.Pen",10,0.5)
AdjustWeight("Packing.5pkPen","Base.Pen",5,0.7)

AdjustWeight("Packing.10pkPencil","Base.Pencil",10,0.5)
AdjustWeight("Packing.5pkPencil","Base.Pencil",5,0.7)

AdjustWeight("Packing.10pkRopePetrolCan","Base.PetrolCan",10,0.15)
AdjustWeight("Packing.5pkRopePetrolCan","Base.PetrolCan",5,0.2)
AdjustWeight("Packing.10pkSheetRopePetrolCan","Base.PetrolCan",10,0.25)
AdjustWeight("Packing.5pkSheetRopePetrolCan","Base.PetrolCan",5,0.3)

AdjustWeight("Packing.10pkRopeEmptyPetrolCan","Base.EmptyPetrolCan",10,0.15)
AdjustWeight("Packing.5pkRopeEmptyPetrolCan","Base.EmptyPetrolCan",5,0.2)
AdjustWeight("Packing.10pkSheetRopeEmptyPetrolCan","Base.EmptyPetrolCan",10,0.25)
AdjustWeight("Packing.5pkSheetRopeEmptyPetrolCan","Base.EmptyPetrolCan",5,0.3)

AdjustWeight("Packing.10pkRopePlank","Base.Plank",10,0.15)
AdjustWeight("Packing.5pkRopePlank","Base.Plank",5,0.2)
AdjustWeight("Packing.10pkSheetRopePlank","Base.Plank",10,0.25)
AdjustWeight("Packing.5pkSheetRopePlank","Base.Plank",5,0.3)
AdjustWeight("Packing.100pkWCPlank","Base.Plank",100,0.075)
AdjustWeight("Packing.50pkWCPlank","Base.Plank",50,0.1)

AdjustWeight("Packing.10pkRopePlasterPowder","Base.PlasterPowder",10,0.15)
AdjustWeight("Packing.5pkRopePlasterPowder","Base.PlasterPowder",5,0.2)
AdjustWeight("Packing.10pkSheetRopePlasterPowder","Base.PlasterPowder",10,0.25)
AdjustWeight("Packing.5pkSheetRopePlasterPowder","Base.PlasterPowder",5,0.3)
AdjustWeight("Packing.100pkWCPlasterPowder","Base.PlasterPowder",100,0.075)
AdjustWeight("Packing.50pkWCPlasterPowder","Base.PlasterPowder",50,0.1)

AdjustWeight("GidOrganizedFood.OS6pkPop","Base.Pop2",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkPopDiet","Base.Pop",6,0.5)

AdjustWeight("GidOrganizedFood.OS6pkFizz","Base.Pop3",6,0.5)

AdjustWeight("Packing.10pkRopePropaneTank","Base.PropaneTank",10,0.15)
AdjustWeight("Packing.5pkRopePropaneTank","Base.PropaneTank",5,0.2)
AdjustWeight("Packing.10pkSheetRopePropaneTank","Base.PropaneTank",10,0.25)
AdjustWeight("Packing.5pkSheetRopePropaneTank","Base.PropaneTank",5,0.3)
AdjustWeight("Packing.100pkWCPropaneTank","Base.PropaneTank",100,0.075)
AdjustWeight("Packing.50pkWCPropaneTank","Base.PropaneTank",50,0.1)

AdjustWeight("Packing.10pkRedPen","Base.RedPen",10,0.5)
AdjustWeight("Packing.5pkRedPen","Base.RedPen",5,0.7)

AdjustWeight("Packing.10pkRedWine","Base.Wine2",10,0.5)
AdjustWeight("Packing.5pkRedWine","Base.Wine2",5,0.7)

AdjustWeight("Packing.10pkRag","Base.RippedSheets",10,0.7)
AdjustWeight("Packing.50pkRag","Base.RippedSheets",50,0.6)
AdjustWeight("Packing.100pkRag","Base.RippedSheets",100,0.5)

AdjustWeight("Packing.10pkRope","Base.Rope",10,0.5)
AdjustWeight("Packing.5pkRope","Base.Rope",5,0.7)

AdjustWeight("Packing.10pkRopeSandBag","Base.Sandbag",10,0.15)
AdjustWeight("Packing.5pkRopeSandBag","Base.Sandbag",5,0.2)
AdjustWeight("Packing.10pkSheetRopeSandBag","Base.Sandbag",10,0.25)
AdjustWeight("Packing.5pkSheetRopeSandBag","Base.Sandbag",5,0.3)
AdjustWeight("Packing.100pkWCSandBag","Base.Sandbag",100,0.075)
AdjustWeight("Packing.50pkWCSandBag","Base.Sandbag",50,0.1)

AdjustWeight("Packing.5pkScrapMetal","Base.ScrapMetal",5,0.7)
AdjustWeight("Packing.10pkScrapMetal","Base.ScrapMetal",10,0.6)
AdjustWeight("Packing.50pkScrapMetal","Base.ScrapMetal",50,0.55)
AdjustWeight("Packing.100pkScrapMetal","Base.ScrapMetal",100,0.5)

AdjustWeight("Packing.10pkScrewsBox","Base.ScrewsBox",10,0.5)
AdjustWeight("Packing.5pkScrewsBox","Base.ScrewsBox",5,0.7)

AdjustWeight("Packing.10pkSheetMetal","Base.SheetMetal",10,0.5)
AdjustWeight("Packing.5pkSheetMetal","Base.SheetMetal",5,0.7)
AdjustWeight("Packing.10pkRopeSheetMetal","Base.SheetMetal",10,0.15)
AdjustWeight("Packing.5pkRopeSheetMetal","Base.SheetMetal",5,0.2)
AdjustWeight("Packing.10pkSheetRopeSheetMetal","Base.SheetMetal",10,0.25)
AdjustWeight("Packing.5pkSheetRopeSheetMetal","Base.SheetMetal",5,0.3)

AdjustWeight("Packing.10pkSheetPaper","Base.SheetPaper2",10,0.5)
AdjustWeight("Packing.5pkSheetPaper","Base.SheetPaper2",5,0.7)

AdjustWeight("Packing.10pkSheetRope","Base.SheetRope",10,0.5)
AdjustWeight("Packing.5pkSheetRope","Base.SheetRope",5,0.7)

AdjustWeight("Packing.pkCarpentry","Base.BookCarpentry1",5,0.5)
AdjustWeight("Packing.pkCooking","Base.BookCooking1",5,0.5)
AdjustWeight("Packing.pkElectricity","Base.BookElectrician1",5,0.5)
AdjustWeight("Packing.pkFarming","Base.BookFarming1",5,0.5)
AdjustWeight("Packing.pkFirstaid","Base.BookFirstAid1",5,0.5)
AdjustWeight("Packing.pkFishing","Base.BookFishing1",5,0.5)
AdjustWeight("Packing.pkForaging","Base.BookForaging1",5,0.5)
AdjustWeight("Packing.pkMechanics","Base.BookMechanic1",5,0.5)
AdjustWeight("Packing.pkTailoring","Base.BookTailoring1",5,0.5)
AdjustWeight("Packing.pkMetalwork","Base.BookMetalWelding1",5,0.5)
AdjustWeight("Packing.pkTrapping","Base.BookTrapping1",5,0.5)

AdjustWeight("GidOrganized.OS50pkSleepingPills","Base.PillsSleepingTablets",5,0.5)

AdjustWeight("Packing.10pkSheetMetalSmall","Base.SmallSheetMetal",10,0.5)
AdjustWeight("Packing.5pkSheetMetalSmall","Base.SmallSheetMetal",5,0.7)

AdjustWeight("Packing.10pkSoap","Base.Soap2",10,0.5)
AdjustWeight("Packing.5pkSoap","Base.Soap2",5,0.7)

AdjustWeight("GidOrganized.OS9pkSterileBandages","Base.AlcoholBandage",9,0.5)

AdjustWeight("Packing.10pkThread","Base.Thread",10,0.5)
AdjustWeight("Packing.5pkThread","Base.Thread",5,0.7)

AdjustWeight("Packing.10pkTissue","Base.Tissue",10,0.5)
AdjustWeight("Packing.5pkTissue","Base.Tissue",5,0.7)

AdjustWeight("Packing.4pkToiletPaper","Base.ToiletPaper",4,0.5)

AdjustWeight("Packing.10pkRopeTreeBranch","Base.TreeBranch",10,0.15)
AdjustWeight("Packing.5pkRopeTreeBranch","Base.TreeBranch",5,0.2)
AdjustWeight("Packing.10pkSheetRopeTreeBranch","Base.TreeBranch",10,0.25)
AdjustWeight("Packing.5pkSheetRopeTreeBranch","Base.TreeBranch",5,0.3)
AdjustWeight("Packing.100pkWCTreeBranch","Base.TreeBranch",100,0.075)
AdjustWeight("Packing.50pkWCTreeBranch","Base.TreeBranch",50,0.1)

AdjustWeight("Packing.10pkTwine","Base.Twine",10,0.5)
AdjustWeight("Packing.5pkTwine","Base.Twine",5,0.7)

AdjustWeight("GidOrganized.OS50pkVitamins","Base.PillsVitamins",5,0.5)

AdjustWeight("GidOrganizedFood.OS24pkWaterBottleEmpty","Base.WaterBottleEmpty",24,0.5)

AdjustWeight("GidOrganizedFood.OS24pkWaterBottleFull","Base.WaterBottleFull",24,0.5)

AdjustWeight("Packing.10pkWeldingRods","Base.WeldingRods",10,0.5)
AdjustWeight("Packing.5pkWeldingRods","Base.WeldingRods",5,0.7)

AdjustWeight("Packing.10pkWhiskey","Base.WhiskeyFull",10,0.5)
AdjustWeight("Packing.5pkWhiskey","Base.WhiskeyFull",5,0.7)

AdjustWeight("GidOrganizedFood.OS8pkWhiskeyEmpty","Base.WhiskeyEmpty",8,0.5)

AdjustWeight("Packing.10pkWhiteWine","Base.Wine",10,0.5)
AdjustWeight("Packing.5pkWhiteWine","Base.Wine",5,0.7)

AdjustWeight("GidOrganizedFood.OS12pkWineEmpty","Base.WineEmpty",12,0.5)

AdjustWeight("GidOrganizedFood.OS12pkWineEmpty2","Base.WineEmpty2",12,0.5)

AdjustWeight("Packing.10pkWire","Base.Wire",10,0.5)
AdjustWeight("Packing.5pkWire","Base.Wire",5,0.7)

AdjustWeight("Packing.10pkWoodGlue","Base.Woodglue",10,0.5)
AdjustWeight("Packing.5pkWoodGlue","Base.Woodglue",5,0.7)

-- Ammo
AdjustWeight("Packing.10pk9","Base.Bullets9mmBox",10,0.5)
AdjustWeight("Packing.5pk9","Base.Bullets9mmBox",5,0.7)

AdjustWeight("Packing.10pk38","Base.Bullets38Box",10,0.5)
AdjustWeight("Packing.5pk38","Base.Bullets38Box",5,0.7)

AdjustWeight("Packing.10pk44","Base.Bullets44Box",10,0.5)
AdjustWeight("Packing.5pk44","Base.Bullets44Box",5,0.7)

AdjustWeight("Packing.10pk45","Base.Bullets45Box",10,0.5)
AdjustWeight("Packing.5pk45","Base.Bullets45Box",5,0.7)

AdjustWeight("Packing.10pk223","Base.223Box",10,0.5)
AdjustWeight("Packing.5pk223","Base.223Box",5,0.7)

AdjustWeight("Packing.10pk308","Base.308Box",10,0.5)
AdjustWeight("Packing.5pk308","Base.308Box",5,0.7)

AdjustWeight("Packing.10pk556","Base.556Box",10,0.5)
AdjustWeight("Packing.5pk556","Base.556Box",5,0.7)

AdjustWeight("Packing.10pkShotgun","Base.ShotgunShellsBox",10,0.5)
AdjustWeight("Packing.5pkShotgun","Base.ShotgunShellsBox",5,0.7)

-- EasyPacking FirearmsB41 Ammo
if getActivatedMods():contains("EasyPackingFirearmsB41") then
    AdjustWeight("FirearmsB41EasyPacking.10pkFB762x51","Base.762x51Box",10,0.5)
    AdjustWeight("FirearmsB41EasyPacking.5pkFB762x51","Base.762x51Box",5,0.7)

    AdjustWeight("FirearmsB41EasyPacking.10pkFB762x39","Base.762x39Box",10,0.5)
    AdjustWeight("FirearmsB41EasyPacking.5pkFB762x39","Base.762x39Box",5,0.7)

    AdjustWeight("FirearmsB41EasyPacking.10pkFB4440","Base.Bullets4440Box",10,0.5)
    AdjustWeight("FirearmsB41EasyPacking.5pkFB4440","Base.Bullets4440Box",5,0.7)

    AdjustWeight("FirearmsB41EasyPacking.10pkFB22","Base.Bullets22Box",10,0.5)
    AdjustWeight("FirearmsB41EasyPacking.5pkFB22","Base.Bullets22Box",5,0.7)

    AdjustWeight("FirearmsB41EasyPacking.10pkFB3006","Base.3006Box",10,0.5)
    AdjustWeight("FirearmsB41EasyPacking.5pkFB3006","Base.3006Box",5,0.7)

    AdjustWeight("FirearmsB41EasyPacking.10pkFB357","Base.Bullets357Box",10,0.5)
    AdjustWeight("FirearmsB41EasyPacking.5pkFB357","Base.Bullets357Box",5,0.7)
end

-- Easypacking GunFighter [2.0] Ammo / Brita Ammo
if getActivatedMods():contains("EasyPackingGunFighter2") then
    AdjustWeight("GunFighter2EasyPacking.10pk4gauge","Base.4gShotgunShellsBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk4gauge","Base.4gShotgunShellsBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk10gauge","Base.10gShotgunShellsBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk10gauge","Base.10gShotgunShellsBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.8pkherocket","Base.HERocket",8,0.5)
    AdjustWeight("GunFighter2EasyPacking.4pkherocket","Base.HERocket",4,0.7)

    AdjustWeight("GunFighter2EasyPacking.FlareBox","Base.Flare",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.10pkflare","Base.FlareBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pkflare","Base.FlareBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pkfiberglassarrow","Base.Arrow_Fiberglass_Pack",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pkfiberglassarrow","Base.Arrow_Fiberglass_Pack",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pkco2","Base.CO2_Cartridge_Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pkco2","Base.CO2_Cartridge_Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pkboltbear","Base.Bolt_Bear_Pack",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pkboltbear","Base.Bolt_Bear_Pack",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk4570gov","Base.Bullets4570Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk4570gov","Base.Bullets4570Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk3006sprg","Base.3006Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk3006sprg","Base.3006Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk762x54","Base.762x54rBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk762x54","Base.762x54rBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk762x51","Base.762x51Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk762x51","Base.762x51Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk762x39","Base.762x39Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk762x39","Base.762x39Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk545x39","Base.545x39Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk545x39","Base.545x39Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk410gauge","Base.410gShotgunShellsBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk410gauge","Base.410gShotgunShellsBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk380acp","Base.Bullets380Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk380acp","Base.Bullets380Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk357mag","Base.Bullets357Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk357mag","Base.Bullets357Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk177bb","Base.BB177Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk177bb","Base.BB177Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk68paintball","Base.PB68Bag",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk68paintball","Base.PB68Bag",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk57x28","Base.Bullets57Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk57x28","Base.Bullets57Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk50mag","Base.Bullets50MAGBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk50mag","Base.Bullets50MAGBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk50bmg","Base.50BMGBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk50bmg","Base.50BMGBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk45lc","Base.Bullets45LCBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk45lc","Base.Bullets45LCBox",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.100pk40incendiary","Base.40INCRound",100,0.5)
    AdjustWeight("GunFighter2EasyPacking.50pk10gauge","Base.40INCRound",50,0.7)

    AdjustWeight("GunFighter2EasyPacking.100pk40explosive","Base.40HERound",100,0.5)
    AdjustWeight("GunFighter2EasyPacking.50pk40explosive","Base.40HERound",50,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk22lr","Base.Bullets22Box",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk22lr","Base.Bullets22Box",5,0.7)

    AdjustWeight("GunFighter2EasyPacking.10pk20gauge","Base.20gShotgunShellsBox",10,0.5)
    AdjustWeight("GunFighter2EasyPacking.5pk20gauge","Base.20gShotgunShellsBox",5,0.7)
end

Events.OnInitGlobalModData.Add(zzPerform)
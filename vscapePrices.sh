#!/usr/bin/env python

#Gets prices for common items in /v/scape
#@kalenpw 28 October 2016

#Classes
class Item:
    name = "";
    lowAlch = -1;
    highAlch = -1;
    value = -1;

    def __init__(self, name):
        self.name = name;
        self.getItemValues()

    def getItemValues(self):
        if self.name.upper() == "YEW LOG":
            self.setValues(64, 96, 400) #LowAlch/HighAlch/Value
        elif self.name.upper() == "BOW STRING":
            self.setValues(4, 6, 420)
        elif self.name.upper() == "MAGIC LOG":
            self.setValues(128, 192, 800)
        elif self.name.upper() == "PESS" or self.name.upper() == "PURE ESSENCE":
            self.setValues(1, 2, 400)
        elif self.name.upper() == "DRAGON BOOTS":
            self.setValues("8,000", "12,000", "2.5m")
        
        #Ordered
        elif self.name.upper() == "RUNE DAGGER":
            self.setValues("3,200", "4,800" , "----")
        elif self.name.upper() == "RUNE AXE":
            self.setValues("5,120", "7,680", "???")
            
            
        else:
            self.lowAlch = -1
            self.highAlch = -1
            self.value = -1

    def setValues(self, newLowAlch, newHighAlch, newValue):
            self.lowAlch = newLowAlch
            self.highAlch = newHighAlch
            self.value = newValue

#Functions
def getItemName():
    userItem = raw_input("\nEnter item name\n")
    return userItem


def getItemsToLookUp(item):
    foundMatch = False;  
    itemList = fillItemArray()
    for items in itemList:
        if items.upper() == item.upper():
            foundMatch = True;
            itemLookedUp = Item(item)
            printStr = getItemDisplayString(itemLookedUp)
            print printStr

    if not foundMatch:
        print "TODO add support for people who can't spell."
        predictedInput = getClosestInput(item)

def getClosestInput(name):
    itemList = fillItemArray()    
    for items in itemList:
        if stringsShareCharacter(items, name):
            print "share char"


def stringsShareCharacter(strOne, strTwo):
    shareChars = False
    if any((c in strOne) for c in strTwo):
        shareChars = True
    return shareChars

def getItemDisplayString(item):
    returnString = "** {0} **\nLow Alch: {1:9}\nHigh Alch: {2:8}\nSell to Player {3:6}".format(item.name, item.lowAlch, item.highAlch, item.value)
    return returnString

def fillItemArray():
    #tel = {'jack': 4098, 'sape': 4139}
    items = ["RUNE SCIMITAR", "MAGIC LOG", "YEW LOG", "BOW STRING", "PESS", "PURE ESSENCE", "DRAGON BOOTS",
            "RUNE DAGGER", "RUNE AXE"]
    
    return items

def main():
    userItem = getItemName()
    getItemsToLookUp(userItem)

#Program
while True:
    main()


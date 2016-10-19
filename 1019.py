
def displayInventory(inventory):
    print("The numbers of  inventory:")
    totalnum=0
    for k,v in inventory.items():
        print(str(v) +'  '+k)
        totalnum+=v
    print(str(totalnum))
    
def addToInventory(inventory, addedItems):
    for i in addedItems:
        inventory. setdefault(i,0)
        inventory[i]+=1
    return inventory

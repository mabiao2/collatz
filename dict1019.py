#You are creating a fantasy video game. 
#The data structure to model the player’s inventory will be a dictionary 
#where the keys are string values describing the item in the inventory and the value is an integer value detailing
#how many of that item the player has. For example,
#the dictionary value 
#{'rope': 1, 'torch': 6, 'gold coin': 42, 'dagger': 1, 'arrow': 12} means the player has 1 rope, 6 torches, 42 gold coins, and so on.
def displayInventory(inventory):
    print("The numbers of  inventory:")
    totalnum=0
    for k,v in inventory.items():
        print(str(v) +'  '+k)
        totalnum+=v
    print(str(totalnum))
# List to Dictionary Function for Fantasy Game Inventory 
def addToInventory(inventory, addedItems):
    for i in addedItems:
        inventory. setdefault(i,0)
        inventory[i]+=1
    return inventory

from time import sleep
from random import randint
from os import system
from time import sleep
#craypots
#Starting resources
boats=1
pots=5
money=50
#Turn counter
turn_num=0
#Weather
weather=True
#if Weather is True, it is good weather. Otherwise it is bad.
#Turn Structure is defined here.
def turn():
    system("cls")
    print("TURN %s\nYou Have:\n%s Boat(s)\n%s pots\n%s money"%(turn_num,boats,pots,money))
    buy()
    fishing()
#The Buy Phase Of The Turn
def buy():
    global money
    global pots
    global boats
    cont=False
    buy_list=""
    while not cont:
        buy_list=input("What would you like to buy?\nPress b to buy a boat.\nPress p to buy pots.\nPress enter to confirm your selection.\n")
        if buy_list.lower()=="p":
            system('cls')
            while 1:
                try:
                    amount_of_pots=int(input("Please put in the amount of pots you would like to buy:\n"))
                    if amount_of_pots*10>money:
                        print("Sorry, you do not have enough money.")
                    else:
                        break
                except:
                    print("Please enter a number.")
            money-=10*amount_of_pots
            pots+=amount_of_pots
        elif buy_list.lower()=='b':
            while 1:
                try:
                    amount_of_boats=int(input("Please enter the amount of boats that you would like to buy:\n"))
                    if amount_of_boats*50>money:
                        print("You do not have enough money.")
                    else:
                        break        
                except:
                    print("Please enter a number")
            money-=50*amount_of_boats
            boats+=amount_of_boats
        while 1:
            cont=input("Would you like to continue buying? (Y/N)\n")
            if cont.lower()=="y":
                cont=False
                break
            elif cont.lower()=="n":
                cont==True
                break
            else:
                print("Please enter Y or N.")
    system('cls')            
#The craypots phase (Money coming in, weather etc.) Unfinished*
def fishing():
    global weather
    global pots
    global money
    global boats
    #generating weather
    #Note: Weather when the die roll is 4 is exactly the same
    weather_num=randint(1,6)
    if weather_num==1 or weather_num==2 or weather_num==3:
        weather=True
    elif weather_num!=4:
        weather=False
    #if where_pots==True... The pots are in
    while 1:
        while 1:
            try:
                pots_in=int(input("How many pots would you like to put inshore?\n"))
                break
            except:
                print("Please enter an integer.")
        while 1:
            try:
                pots_out=int(input("How many pots would you like to put out of the shore?\n"))
                break
            except:
                print("Please enter an integer.")
        if pots_in+pots_out<=pots and pots_in+pots_out<=boats*10:
            break
        elif not pots_in+pots_out<=pots:
            print("You do not have enough pots to put %s pots in and %s pots out. You only have %s pots.\nPlease enter your pots again."%(pots_in,pots_out,pots))
        else:
            print("You do not have enough boats to put %s pots in and %s pots out. You only have %s boats.\nPlease enter your pots again."%(pots_in,pots_out,boats))
    #Good weather+offshore=9$, Bad weather+offshore=lose pot(-10)
    #Good weather+inshore=4$, bad weather=7$
    if weather:
        print("The weather was good. You gained %s money."%(pots_in*4+pots_out*9))
        money+=pots_in*4+pots_out*9
    elif not weather:
        print("The weather was bad.\nYou lost %s pots. You gained %s money."%(pots_out,pots_in*7))
        money+=pots_in*7
        pots-=pots_out
    sleep(5)

    
#Making the Turns actually occur
for i in range(12):
    turn_num=turn_num+1 
    turn()
system("cls")
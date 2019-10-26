import pyodbc

connectstring = "DRIVER={MySQL ODBC 3.51 Driver};SERVER=localhost;DATABASE=d20battle;USER=user;PASSWORD=wemustremainsilent;OPTION=3"
cnxn = pyodbc.connect(connectstring)
crsr = cnxn.cursor()
print("Made it!")

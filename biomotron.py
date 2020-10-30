from random import randrange
import datetime
import mysql.connector
from tkinter import *
import tkinter.font as font
import tkinter.messagebox


config = {
  'user': 'root',
  'password': 'root',
  'host': 'localhost',
  'database': 'list_etudiants'
}

link = mysql.connector.connect(**config)
cursor=link.cursor()

class Personne:

    """Definition d'une classe pour chaque personne"""

    def __init__(self,nom,prenom,id):
        self.nom=nom
        self.prenom=prenom
        self.id=id

    def __repr__(self):
        return self.nom



def getList():
    studentList=[]
    get_query="Select * from Etudiants"
    cursor.execute(get_query)
    list=cursor.fetchall()

    for row in list:

        nom=str(row[0])
        prenom=str(row[1])
        id=int(row[2])
        etudiant=Personne(nom,prenom,id)
        studentList.append(etudiant)

    return studentList





def getBinomes(list,numberOfPerson,projetId):
    """Fonction pour former des groupes de maniere aléatoire"""
    
    listDuo=[]
    """Cas ou le nombre de personne est valide"""
    if numberOfPerson<=len(list) and numberOfPerson>1:
        while len(list)>=(numberOfPerson):
            duo=[]
            while len(duo)!=numberOfPerson:
                i=randrange(0,len(list))
                duo.append(list[i])
                list.remove(list[i])
            listDuo.append(duo)

    
    saveGroupes(listDuo,projetId,list)
    if numberOfPerson<=1:
        print("On ne peut pas creer un groupe de moins de 2 personnes")

    

def saveGroupes(list,projetId,rest):
    insert_query="INSERT INTO apprenants_groupe VALUES (%s,%s,%s)"
    

    for label in fenetreResultat.winfo_children():
        label.destroy()

    lastGroupId=1
    for i in range(len(list)):
        
        for e in range(len(list[i])):
            
            cursor.execute(insert_query,(list[i][e].id,lastGroupId,projetId))
            Label(fenetreResultat,text=list[i][e].prenom,padx="10").grid( row=i,column=e)
            
    if len(rest)>0:
        for e in range(len(rest)):
            cursor.execute(insert_query,(rest[e].id,lastGroupId+1,projetId))
            Label(fenetreResultat,text=rest[e].prenom,padx="10").grid( row=lastGroupId,column=e)

        
        link.commit()
        lastGroupId+=1
    
    
        
def getProject(projectName,date_entry):
    
    try:
        jour,mois,annee=map(int,date_entry.split("/"))
        if jour<0 or jour>=31:
            tkinter.messagebox.showinfo( "Erreur", "Mauvais jour")
                
        elif mois<0 or mois >=12:
            tkinter.messagebox.showinfo( "Erreur", "Mauvais mois")
        elif annee<2000:
            tkinter.messagebox.showinfo( "Erreur", "Mauvaise année")
        else: 
            date=datetime.datetime(annee,mois,jour,00,00,00,00)
    except:
        tkinter.messagebox.showinfo( "Erreur", "Mauvais format de date")
        


    insert_project=("INSERT INTO projets (nom,date) VALUES (%s,%s)")
    cursor.execute(insert_project,(projectName,date))
    link.commit()
    print(cursor.lastrowid)
    return cursor.lastrowid
        
def generateButton():
    startDate=inputstartDateEntry.get()
    projectName=inputNameEntry.get()
    listEtudiant=getList()
    id=getProject(projectName,startDate)
    try:
        numberByGroups=int(inputGroupNumber.get())
    except:
        msg="Veuillez saisir un chiffre valide"
        tkinter.messagebox.showinfo( "Erreur", msg)
        
    getBinomes(listEtudiant,numberByGroups,id)
    
    

fenetre=Tk()
"""Titre"""
champ_titre=Label(fenetre,text="Projet Binomotron",padx="10",pady="10")
champ_titre.config(font=("Courier", 44))
champ_titre.pack(side="top",fill=X)
"""Input nom projet"""
inputNameFrame=Frame(fenetre)
projectName=StringVar(inputNameFrame)
Label(inputNameFrame,text="Saisissez un nom de projet",padx="10").grid(row=0,column=0)
inputNameEntry=Entry(inputNameFrame,textvariable=projectName)
inputNameEntry.grid(row=0,column=1)
inputNameFrame.pack()
"""Input debut projet"""
inputStartDateFrame=Frame(fenetre)
projectStartDate=StringVar(inputStartDateFrame)
date=datetime.datetime.now()
strDate=(str(date.day)+"/"+str(date.month)+"/"+str(date.year))
projectStartDate.set(strDate)
Label(inputStartDateFrame,text="Saisissez la date de debut du projet",padx="10").grid(row=0,column=0)
inputstartDateEntry=Entry(inputStartDateFrame,textvariable=projectStartDate)
inputstartDateEntry.grid(row=0,column=1)
inputStartDateFrame.pack()
"""Input number by groups"""
inputGroupNumberFrame=Frame(fenetre)
groupNumber=StringVar(inputStartDateFrame)
Label(inputGroupNumberFrame,text="Saisissez le nombre de personne par groupe :",padx="10").grid(row=0,column=0)
inputGroupNumber=Entry(inputGroupNumberFrame,textvariable=groupNumber)
inputGroupNumber.grid(row=0,column=1)
inputGroupNumberFrame.pack()
"""Generate button"""
generateButtonFrame=Frame(fenetre)
button=Button(generateButtonFrame, text="Génerer une liste de binome",command=generateButton).grid(row=0,column=0)
generateButtonFrame.pack()
fenetreResultat=Frame(fenetre)
fenetreResultat.pack()


fenetre.geometry("1024x720")
fenetre.mainloop()


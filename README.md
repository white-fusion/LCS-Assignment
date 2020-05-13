# Logic in Computer Science(CSF214) Assignment
##Team:
- Yaswanth Kumar Rayapati(2017A7PS0038P)
- Shiva Kumar Katta(2017A7PS0078P)

##Task: 
Laws in Indian Penal Code (IPC) are to be encoded in Prolog (as facts and rules).
Write a Prolog program to interpret / apply laws for a given case given a set of laws. 
Two member team: Implemented Sections 4-6 of the IPC.

##Submission contents:
Our assignment submission contains the following:

1. README.md
2. test input.txt
3. assignment.pl

##Description of the program:

Some pointers before you proceed:
Here after Indian Penal Code means Chapters IV, V, VI of Indian Penal Code.
The word 'Act' denotes as well as series of acts as a single act: which is criminal by reason of its being done with a criminal knowledge or intention.

********************************************************************************************************
###Database Description


- criminal(Name,Crime).

This predicate is used to store the database of all the criminals with their names and crimes.


- publicServant(Name,Status).

This predicate is used to store the database of public servants with their employment status.

- generalException(SectionNumber,Description).

This predicate is used to store the databse of sections pertaining to general exceptions.

The Criminal law covers various punishments which vary from case to case. But it is not always necessary that a person gets punished for a crime which he/she has committed. These defences come under general exceptions.

- ofRightToPrivateDefense(SectionNumber,Description).

This predicate is used to store the database of sections pertaining to right to private defense.

The provisions contained in these sections give authority to a man to use necessary force against an assailant or wrong-doer for the purpose of protecting one’s own body and property as also another’s body and property when immediate aid from the state machinery is not readily available; and in so doing he is not answerable in law for his deeds.These also come under general exceptions.

- abetment(SectionNumber,Description).

This predicate is used to store the database of sections pertaining to abetment.

The word 'abetment' means to encourage,support or countenance by aid or approval, usually in wrong doing.

- offenceAgainstTheState(SectionNumber,Description).

This predicate is used to store the database of sections pertaining to offences against the state.

There are three criminal activities that are directed against the existence of the state: treason, sedition, and rebellion. These are covered in this database.

- actByPublicServant(SectionNumber,Description).

This predicate is used to store the database of sections pertaining to the acts done by public servants against the State.These also come under offences against the state.


********************************************************************************************************
###Queries Description


- sectionsDescription.

This is a nullary predicate which prints the information regarding sections of Indian Penal Code.
>What are the sections present in Indian Penal Code?

- section(X).

This prints the desctiption of the section when section number is passed as X.
>What is this section?


- canTheCrimeBeExempted(Name).

Checks if a persons crime can be exempted and prints the clause through which he/she can be exempted.
>Can a certain person be exempted?


- crime(X).

This prints the crime done by a certain person X.
It prints false if he is not a criminal.
>What crime has X done?


- criminalConspiracy.

This prints the definition of criminal conspiracy.
>What is criminal conspiracy?

- criminalPublicServants

This prints names and crimes done by all the criminal public servants.
>Who are all criminal public servants?



Although we have attempted to debug the code as far as possible, the extensive nature of the codebase makes it difficult for us to do it exhaustively. We apologise for any unchecked bugs that you may encounter.

This program was tested on: Windows 10 (64-bit), SWI Prolog version 7.6.4

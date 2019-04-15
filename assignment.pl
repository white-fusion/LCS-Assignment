/*Criminal Database*/
/*criminal(Name,Crime)*/
criminal('Dennis Boyd','Act done with an unsound mind').
criminal('Ramaswamy','Act done accidentally doing a lawful act').
criminal('Meenakshi','Act done in private defense of body').
criminal('George Wayne','Abetment in India of offences outside India').
criminal('Vladimir Putin','Attempting to wage war against the Government of India').
criminal('Ram Joseph','Voluntarily allowing prisoner of State to escape').
criminal('Yaswanth Ramachandran','Concealing with intent to facilitate design to wage war').
criminal('Eisenhower','Negligently suffering prisoner of war to escape').

/*PublicServant Database*/
/*publicServant(Name,Status)*/
publicServant('Ram Joseph',inOffice).
publicServant('Ram Prasad',retired).
publicServant('Harsha Vardhan Sigireddy',inOffice).
publicServant('John Smith',retired).
publicServant('Eisenhower',inOffice).

/*generalException Database*/
/*generalException(SectionNumber,Description)*/
generalException(76,'Act done being bound by law').
generalException(76,'Act done by mistake of fact believing himself bound by law').
generalException(77,'Act done when acting judicially').
generalException(78,'Act done pursuant to judgement of Court').
generalException(79,'Act done being justified by law').
generalException(79,'Act done by mistake of fact believing himself justified by law').
generalException(80,'Act done accidentally doing a lawful act').
generalException(81,'Act done to prevent other harm without criminal intent').
generalException(82,'Act done being a child under seven years of age').
generalException(83,'Act done being a child above seven and under twelve of immature understanding').
generalException(84,'Act done with an unsound mind').
generalException(85,'Act done being incapable of judgement by reason of intoxification caused against his will').
generalException(87,'Act done by consent, not intended to be likely to cause death or grievous death').
generalException(88,'Act done by concern and good faith for persons benifit, not intended to cause death').
generalException(89,'Act done in good faith for benifit of child being guardian').
generalException(89,'Act done in good faith for benifit of child with the concern of guardian').
generalException(90,'Giving the consent to an act, under fear or misconception').
generalException(90,'Giving the consent to an act, being an insane person').
generalException(90,'Giving the consent to an act, being a child').
generalException(92,'Act done in good faith for benifint of a person without consent').
generalException(93,'Communication done in good faith, which is likely to cause harm').
generalException(94,'Act done, being compelled by threats').
generalException(95,'Act causing slight harm').

/*ofRightToPrivateDefense Database*/
/*delete this later this is also generalexception*/
/*ofRightToPrivateDefense(SectionNumber,Description)*/
ofRightToPrivateDefense(96,'Act done in private defense').
ofRightToPrivateDefense(97,'Act done in private defense of body').
ofRightToPrivateDefense(97,'Act done in private defense of property').
ofRightToPrivateDefense(98,'Act done against the act of a person of unsound mind').
ofRightToPrivateDefense(100,'Causing death to someone, exercising the right to private defense of the body').
ofRightToPrivateDefense(101,'Causing harm other than death to someone, exercising the right to private defense of the body').
ofRightToPrivateDefense(103,'Causing death to someone, exercising the right to private defence of the property').
ofRightToPrivateDefense(104,'Causing harm other than death to someone, exercising the right to private defence of the property').
ofRightToPrivateDefense(106,'Act done against deadly assault when there is risk of harm to innocent person').

/*abetment Database*/
/*abetment(SectionNumber,Intention)*/
abetment(107,'Abetment of an act').
abetment(108,'Abetment in India of offences outside India').
abetment(109,'Abetment of an act, where no express provision is made for its punishment').
abetment(110,'Abetment of an act, which further has been done with different intention').
abetment(111,'Abetment of an act, which further has been done differently').
abetment(115,'Abetment of offence punishable with death').
abetment(116,'Abetment of offence punishable with imprisonment').
abetment(117,'Abetting commission of offence by more than ten persons').
abetment(118,'Concealing design to commit offence punishable with death or imprisonment for life').
abetment(120,'Concealing design to commit offence punishable with imprisonment').

/*offenceAgainstTheState Database*/
/*offenceAgainstTheState(SectionNumber,Description)*/
offenceAgainstTheState(121,'Waging to wage war against the Government of India').
offenceAgainstTheState(121,'Attempting to wage war against the Government of India').
offenceAgainstTheState(121,'Abetting waging of war against the Government of India').
offenceAgainstTheState(122,'Collecting arms,etc., with intention of waging war against the Government of India').
offenceAgainstTheState(123,'Concealing with intent to facilitate design to wage war').
offenceAgainstTheState(124,'Assaulting President with intent to compel the exercise of any lawful power').
offenceAgainstTheState(124,'Assaulting Governor with intent to compel the exercise of any lawful power').
offenceAgainstTheState(125,'Waging war against any Asiatic power in alliance with the Government of India').
offenceAgainstTheState(126,'Committing depredation on territories of power at peace with the Government of India').
offenceAgainstTheState(127,'Receiving property taken by war or depredation mentioned in sections 125 and 126').

/*actByPublicServant Database*/
/*actByPublicServant(SectionNumber,Description)*/
actByPublicServant(128,'Voluntarily allowing prisoner of State to escape').
actByPublicServant(128,'Voluntarily allowing prisoner of war to escape').
actByPublicServant(129,'Negligently suffering prisoner of State to escape').
actByPublicServant(129,'Negligently suffering prisoner of war to escape').
actByPublicServant(130,'Aiding escape of,Rescuing prisoner of State').
actByPublicServant(130,'Aiding escape of,Rescuing prisoner of war').

/*QUERIES*/

sectionsDescription :- (generalException(X,Y);ofRightToPrivateDefense(X,Y);abetment(X,Y);offenceAgainstTheState(X,Y);actByPublicServant(X,Y)),print(X),nl,print(Y),nl,fail.

section(X) :- (generalException(X,Y);ofRightToPrivateDefense(X,Y);abetment(X,Y);offenceAgainstTheState(X,Y);actByPublicServant(X,Y)),print(Y),nl,fail.

canTheCrimeBeExempted(Name) :- criminal(Name,Crime),(generalException(X,Description);ofRightToPrivateDefense(X,Description)),(Crime=Description),write('This person can be exempted as provided in the clause of section '),print(X).

crime(X) :- criminal(X,Y),print(Y).

criminalConspiracy :- write('When two or more persons agree to do, or cause to be done'),nl,write('(1)an illegal act,'),nl,write('(2)or an act which is not illegal by illegal means, such an agreement is designated a criminal conspiracy').

criminalPublicServants :- (publicServant(X,_),criminal(X,Y)),print(X),nl,print(Y),nl,fail.







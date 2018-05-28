Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(User_Machine))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(User_Machine))==(Machine(User_Machine));
  Level(Machine(User_Machine))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(User_Machine)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(User_Machine))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(User_Machine))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(User_Machine))==(?);
  List_Includes(Machine(User_Machine))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(User_Machine))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(User_Machine))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(User_Machine))==(?);
  Context_List_Variables(Machine(User_Machine))==(?);
  Abstract_List_Variables(Machine(User_Machine))==(?);
  Local_List_Variables(Machine(User_Machine))==(users,credits,total);
  List_Variables(Machine(User_Machine))==(users,credits,total);
  External_List_Variables(Machine(User_Machine))==(users,credits,total)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(User_Machine))==(?);
  Abstract_List_VisibleVariables(Machine(User_Machine))==(?);
  External_List_VisibleVariables(Machine(User_Machine))==(?);
  Expanded_List_VisibleVariables(Machine(User_Machine))==(?);
  List_VisibleVariables(Machine(User_Machine))==(?);
  Internal_List_VisibleVariables(Machine(User_Machine))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(User_Machine))==(btrue);
  Gluing_List_Invariant(Machine(User_Machine))==(btrue);
  Expanded_List_Invariant(Machine(User_Machine))==(btrue);
  Abstract_List_Invariant(Machine(User_Machine))==(btrue);
  Context_List_Invariant(Machine(User_Machine))==(btrue);
  List_Invariant(Machine(User_Machine))==(total: NAT & users <: NAMES & credits = users +-> NAT)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(User_Machine))==(btrue);
  Abstract_List_Assertions(Machine(User_Machine))==(btrue);
  Context_List_Assertions(Machine(User_Machine))==(btrue);
  List_Assertions(Machine(User_Machine))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(User_Machine))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(User_Machine))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(User_Machine))==(credits,total,users:={},card(users),{});
  Context_List_Initialisation(Machine(User_Machine))==(skip);
  List_Initialisation(Machine(User_Machine))==(credits:={} || total:=card(users) || users:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(User_Machine))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(User_Machine))==(btrue);
  List_Constraints(Machine(User_Machine))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(User_Machine))==(add_user);
  List_Operations(Machine(User_Machine))==(add_user)
END
&
THEORY ListInputX IS
  List_Input(Machine(User_Machine),add_user)==(nn)
END
&
THEORY ListOutputX IS
  List_Output(Machine(User_Machine),add_user)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(User_Machine),add_user)==(add_user(nn))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(User_Machine),add_user)==(nn: NAMES & nn/:users)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(User_Machine),add_user)==(nn: NAMES & nn/:users | users:=users\/{nn});
  List_Substitution(Machine(User_Machine),add_user)==(users:=users\/{nn})
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(User_Machine))==(?);
  Inherited_List_Constants(Machine(User_Machine))==(?);
  List_Constants(Machine(User_Machine))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(User_Machine),NAMES)==(?);
  Context_List_Enumerated(Machine(User_Machine))==(?);
  Context_List_Defered(Machine(User_Machine))==(?);
  Context_List_Sets(Machine(User_Machine))==(?);
  List_Valuable_Sets(Machine(User_Machine))==(NAMES);
  Inherited_List_Enumerated(Machine(User_Machine))==(?);
  Inherited_List_Defered(Machine(User_Machine))==(?);
  Inherited_List_Sets(Machine(User_Machine))==(?);
  List_Enumerated(Machine(User_Machine))==(?);
  List_Defered(Machine(User_Machine))==(NAMES);
  List_Sets(Machine(User_Machine))==(NAMES)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(User_Machine))==(?);
  Expanded_List_HiddenConstants(Machine(User_Machine))==(?);
  List_HiddenConstants(Machine(User_Machine))==(?);
  External_List_HiddenConstants(Machine(User_Machine))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(User_Machine))==(btrue);
  Context_List_Properties(Machine(User_Machine))==(btrue);
  Inherited_List_Properties(Machine(User_Machine))==(btrue);
  List_Properties(Machine(User_Machine))==(NAMES: FIN(NAMES) & NAMES: FIN(INTEGER) & not(NAMES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(User_Machine),add_user)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(User_Machine)) == (NAMES | ? | users,credits,total | ? | add_user | ? | ? | ? | User_Machine);
  List_Of_HiddenCst_Ids(Machine(User_Machine)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(User_Machine)) == (?);
  List_Of_VisibleVar_Ids(Machine(User_Machine)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(User_Machine)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(User_Machine)) == (Type(NAMES) == Cst(SetOf(atype(NAMES,"[NAMES","]NAMES"))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(User_Machine)) == (Type(users) == Mvl(SetOf(atype(NAMES,?,?)));Type(credits) == Mvl(SetOf(SetOf(atype(NAMES,?,?)*btype(INTEGER,?,?))));Type(total) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(User_Machine)) == (Type(add_user) == Cst(No_type,atype(NAMES,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)

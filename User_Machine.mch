/* User_Machine
 * Author: yuri.wrlk
 * Creation date: 28/05/2018
 */
MACHINE
    User_Machine

SETS NAMES
    
PROPERTIES NAMES : FIN(NAMES)

VARIABLES total,
           credits,
           users
           
INVARIANT total : NAT &  
    users <: NAMES &
    credits = users +-> NAT

INITIALISATION credits := {} || 
    total := card(users) ||
    users := {}


OPERATIONS
    add_user(nn) =
    PRE nn : NAMES & nn /: users 
    THEN users := users \/ {nn}
    END
    
    

END

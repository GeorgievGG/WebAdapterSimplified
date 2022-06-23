Ô
OC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\BaseData.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
BaseData 
{ 
public 
BaseData 
( 
) 
{ 	
}		 	
public 
BaseData 
( 
Guid 
id 
)  
{ 	
Id 
= 
id 
; 
} 	
public 
BaseData 
( 
Guid 
id 
,  
string! '
name( ,
), -
:. /
this0 4
(4 5
id5 7
)7 8
{ 	
Name 
= 
name 
; 
} 	
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

IsSelected 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
? 
StatusId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˇ
TC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\BaseViewModel.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
BaseViewModel 
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
bool 

IsSelected 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 
? 
StatusId 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ù
NC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\Context.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public		 

partial		 
class		 
Context		  
:		! "
	DbContext		# ,
{

 
public 
Context 
( 
) 
: 
base 
( 
$" 
$str 
{ 
GetContextName )
() *
)* +
}+ ,
", -
)- .
{ 	
} 	
private 
static 
string 
GetContextName ,
(, -
)- .
{ 	
try 
{ 
var 
isolationContext $
=% &
DataIsolationScope' 9
.9 :
CurrentContext: H
;H I
if 
( 
isolationContext $
==% '
null( ,
), -
{ 
return 
$str $
;$ %
} 
var 
contextName 
=  !
isolationContext" 2
.2 3
Policy3 9
.9 :
Name: >
==? A
DataIsolationPolicyB U
.U V$
DataRestrictionByNothingV n
.n o
Nameo s
?& '
$str( 1
:& '
$str( :
;: ;
return 
contextName "
;" #
}   
catch!! 
(!! 
	Exception!! 
)!! 
{"" 
return## 
$str##  
;##  !
}$$ 
}%% 	
	protected'' 
override'' 
void'' 
OnModelCreating''  /
(''/ 0
DbModelBuilder''0 >
modelBuilder''? K
)''K L
{(( 	
throw)) 
new)) +
UnintentionalCodeFirstException)) 5
())5 6
)))6 7
;))7 8
}** 	
}++ 
},, µ
VC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\CustomClaimType.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

static 
class 
CustomClaimType '
{ 
public 
const 
string 
UserId "
=# $
$str% -
;- .
public 
const 
string 
UserAccessRights ,
=- .
$str/ A
;A B
public 
const 
string 
MatrixUsername *
=+ ,
$str- =
;= >
} 
}		 ≠
YC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\DatabaseExtensions.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public		 

static		 
class		 
DatabaseExtensions		 *
{

 
public 
static 
DbConnection "
GetOpenConnection# 4
(4 5
this5 9
Database: B
databaseC K
)K L
{ 	
try 
{ 
var 

connection 
=  
database! )
.) *

Connection* 4
;4 5
var 
conn 
= 
new 
StackExchange ,
., -
	Profiling- 6
.6 7
Data7 ;
.; < 
ProfiledDbConnection< P
(P Q

connectionQ [
,[ \
MiniProfiler] i
.i j
Currentj q
)q r
;r s
if 
( 
conn 
. 
State 
!= !
ConnectionState" 1
.1 2
Open2 6
)6 7
{ 
conn 
. 
Open 
( 
) 
;  
} 
return 
conn 
; 
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
ex 
; 
} 
} 	
} 
}   Ë
[C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\DataIsolationContext.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class  
DataIsolationContext %
{ 
public  
DataIsolationContext #
(# $
string$ *
username+ 3
,3 4
DataIsolationPolicy5 H
policyI O
)O P
{ 	
Username 
= 
username 
;  
Policy 
= 
policy 
; 
}		 	
public

 
string

 
Username

 
{

  
get

! $
;

$ %
}

& '
public 
DataIsolationPolicy "
Policy# )
{* +
get, /
;/ 0
}1 2
public 
override 
string 
ToString '
(' (
)( )
{ 	
return 
$" 
{ 
nameof 
( 
Username %
)% &
}& '
$str' (
{( )
Username) 1
}1 2
$str2 3
{3 4
nameof4 :
(: ;
Policy; A
)A B
}B C
$strC D
{D E
PolicyE K
.K L
NameL P
}P Q
"Q R
;R S
} 	
} 
} ∑
ZC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\DataIsolationPolicy.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
DataIsolationPolicy $
{ 
public 
static 
DataIsolationPolicy )$
DataRestrictionByNothing* B
{C D
getE H
;H I
}J K
=L M
newN Q
DataIsolationPolicyR e
(e f
$strf k
)k l
;l m
public 
static 
DataIsolationPolicy )
RestrictionByAgency* =
{> ?
get@ C
;C D
}E F
=G H
newI L
DataIsolationPolicyM `
(` a
$stra f
)f g
;g h
public		 
static		 
DataIsolationPolicy		 )!
RestrictionByCreditor		* ?
{		@ A
get		B E
;		E F
}		G H
=		I J
new		K N
DataIsolationPolicy		O b
(		b c
$str		c h
)		h i
;		i j
public

 
static

 
DataIsolationPolicy

 )
RestrictionByTeam

* ;
{

< =
get

> A
;

A B
}

C D
=

E F
new

G J
DataIsolationPolicy

K ^
(

^ _
$str

_ d
)

d e
;

e f
public 
static 
DataIsolationPolicy )
RestrictionByUser* ;
{< =
get> A
;A B
}C D
=E F
newG J
DataIsolationPolicyK ^
(^ _
$str_ d
)d e
;e f
public 
string 
Name 
{ 
get  
;  !
}" #
private 
DataIsolationPolicy #
(# $
string$ *
name+ /
)/ 0
{ 	
Name 
= 
name 
; 
} 	
} 
} œ5
YC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\DataIsolationScope.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{		 
public

 

class

 
DataIsolationScope

 #
:

$ %
IDisposable

& 1
{ 
private 
sealed 
class 
Wrapper $
:% &
MarshalByRefObject' 9
{ 	
public 
ImmutableStack !
<! " 
DataIsolationContext" 6
>6 7
Value8 =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 	
private 
const 
string *
LogicalContextDataIsolationKey ;
=< =
$str> ^
;^ _
private 
static 
ImmutableStack %
<% & 
DataIsolationContext& :
>: ;!
ContextImmutableStack< Q
{ 	
get 
{ 
var 
wrapper 
= 
CallContext )
.) *
LogicalGetData* 8
(8 9*
LogicalContextDataIsolationKey9 W
)W X
asY [
Wrapper\ c
;c d
return 
wrapper 
== !
null" &
?' (
ImmutableStack) 7
.7 8
Create8 >
<> ? 
DataIsolationContext? S
>S T
(T U
)U V
:W X
wrapperY `
.` a
Valuea f
;f g
}   
set!! 
{"" 
CallContext## 
.## 
LogicalSetData## *
(##* +*
LogicalContextDataIsolationKey##+ I
,##I J
new##K N
Wrapper##O V
{##W X
Value##Y ^
=##_ `
value##a f
}##g h
)##h i
;##i j
}$$ 
}%% 	
public'' 
static''  
DataIsolationContext'' *
CurrentContext''+ 9
=>'': <!
ContextImmutableStack''= R
.''R S
IsEmpty''S Z
?''[ \
null''] a
:''b c!
ContextImmutableStack''d y
.''y z
Peek''z ~
(''~ 
)	'' Ä
;
''Ä Å
public)) 
static)) 
IEnumerable)) !
<))! "
string))" (
>))( )
ScopeContexts))* 7
=>))8 :!
ContextImmutableStack)); P
.))P Q
Select))Q W
())W X
x))X Y
=>))Z \
x))] ^
.))^ _
ToString))_ g
())g h
)))h i
)))i j
.))j k
ToList))k q
())q r
)))r s
;))s t
public++ 
static++  
DataIsolationContext++ *
SystemUserContext+++ <
=>,, 
new,,  
DataIsolationContext,, '
(,,' (
$str,,( /
,,,/ 0
DataIsolationPolicy,,1 D
.,,D E$
DataRestrictionByNothing,,E ]
),,] ^
;,,^ _
public22 
DataIsolationScope22 !
(22! " 
DataIsolationContext22" 6
context227 >
)22> ?
{33 	!
ContextImmutableStack44 !
=44" #!
ContextImmutableStack44$ 9
.449 :
Push44: >
(44> ?
context44? F
)44F G
;44G H
}55 	
public;; 
static;; 
void;;  
RunInSystemUserScope;; /
(;;/ 0
Action;;0 6
action;;7 =
);;= >
{<< 	
using== 
(== 
var== 
scope== 
=== 
new== "
DataIsolationScope==# 5
(==5 6
SystemUserContext==6 G
)==G H
)==H I
{>> 
action?? 
(?? 
)?? 
;?? 
}@@ 
}AA 	
publicCC 
staticCC 
TCC  
RunInSystemUserScopeCC ,
<CC, -
TCC- .
>CC. /
(CC/ 0
FuncCC0 4
<CC4 5
TCC5 6
>CC6 7
actionCC8 >
)CC> ?
{DD 	
usingEE 
(EE 
varEE 
scopeEE 
=EE 
newEE "
DataIsolationScopeEE# 5
(EE5 6
SystemUserContextEE6 G
)EEG H
)EEH I
{FF 
returnGG 
actionGG 
(GG 
)GG 
;GG  
}HH 
}II 	
publicKK 
staticKK 
voidKK 
RunInUserScopeKK )
(KK) * 
DataIsolationContextKK* >
contextKK? F
,KKF G
ActionKKH N
actionKKO U
)KKU V
{LL 	
usingMM 
(MM 
varMM 
scopeMM 
=MM 
newMM "
DataIsolationScopeMM# 5
(MM5 6
contextMM6 =
)MM= >
)MM> ?
{NN 
actionOO 
(OO 
)OO 
;OO 
}PP 
}QQ 	
publicSS 
staticSS 
TSS 
RunInUserScopeSS &
<SS& '
TSS' (
>SS( )
(SS) * 
DataIsolationContextSS* >
contextSS? F
,SSF G
FuncSSH L
<SSL M
TSSM N
>SSN O
actionSSP V
)SSV W
{TT 	
usingUU 
(UU 
varUU 
scopeUU 
=UU 
newUU "
DataIsolationScopeUU# 5
(UU5 6
contextUU6 =
)UU= >
)UU> ?
{VV 
returnWW 
actionWW 
(WW 
)WW 
;WW  
}XX 
}YY 	
public[[ 
static[[ 
void[[ !
RunInCurrentUserScope[[ 0
([[0 1
Action[[1 7
action[[8 >
)[[> ?
{\\ 	
var]]  
dataIsolationContext]] $
=]]% &
Thread]]' -
.]]- .
CurrentPrincipal]]. >
.]]> ?
Identity]]? G
.]]G H#
GetDataIsolationContext]]H _
(]]_ `
)]]` a
;]]a b
using__ 
(__ 
var__ 
scope__ 
=__ 
new__ "
DataIsolationScope__# 5
(__5 6 
dataIsolationContext__6 J
)__J K
)__K L
{`` 
actionaa 
(aa 
)aa 
;aa 
}bb 
}cc 	
publicee 
voidee 
Disposeee 
(ee 
)ee 
{ff 	!
ContextImmutableStackgg !
=gg" #!
ContextImmutableStackgg$ 9
.gg9 :
Popgg: =
(gg= >
)gg> ?
;gg? @
}hh 	
}oo 
}pp ‡
[C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\DbContextScopeOption.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

enum  
DbContextScopeOption $
{ 
JoinExisting 
, 
ForceCreateNew 
} 
} Ç
YC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\FindUserResultData.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
FindUserResultData #
{ 
public 
bool 
IsExistingUserInDb &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IsExistingUserInAd &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
SaveUserData		 
UserData		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
}

 
} ë
^C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\FindUserResultViewModel.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class #
FindUserResultViewModel (
{ 
public 
bool 
IsExistingUserInDb &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
IsExistingUserInAd &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public		 
SaveUserViewModel		  
UserData		! )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
}

 
} •
QC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\GlobalData.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

static 
class 

GlobalData "
{ 
public 
const 
string 
UserPrivilegeKey ,
=- .
$str/ >
;> ?
} 
} â
TC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\ICacheService.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface 
ICacheService "
{ 
TItem		 
GetCacheItem		 
<		 
TItem		  
>		  !
(		! "
Guid		" &
key		' *
,		* +
string		, 2
additionalUniqueId		3 E
)		E F
where

 
TItem

 
:

 
class

 
;

  
void 
SetCacheItem 
< 
TItem 
>  
(  !
Guid! %
key& )
,) *
string+ 1
additionalUniqueId2 D
,D E
TItemF K
itemL P
)P Q
where 
TItem 
: 
class 
;  
void 
Clear 
( 
) 
; 
} 
} •
[C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IDbContextCollection.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface  
IDbContextCollection )
:* +
IDisposable, 7
{ 

TDbContext 
Get 
< 

TDbContext 
> 
( 
) 
where $

TDbContext% /
:0 1
	DbContext2 ;
;; <
}		 
}

 ∆
^C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IDbContextReadOnlyScope.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface #
IDbContextReadOnlyScope ,
:- .
IDisposable/ :
{  
IDbContextCollection 

DbContexts '
{( )
get* -
;- .
}/ 0
} 
}		 ©
]C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IDbContextScopeFactory.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface "
IDbContextScopeFactory +
{ #
IDbContextReadOnlyScope 
CreateReadOnly  .
(. / 
DbContextScopeOption/ C
joiningOptionD Q
=R S 
DbContextScopeOptionT h
.h i
JoinExistingi u
)u v
;v w
} 
} ¶!
ZC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IdentitiyExtensions.cs
	namespace		 	'
WebAdapterSimplifiedLibrary		
 %
{

 
public 

static 
class 
IdentityExtensions *
{ 
public 
static  
DataIsolationContext *#
GetDataIsolationContext+ B
(B C
thisC G
	IIdentityH Q
identityR Z
)Z [
{ 	
var 
claims 
= 
( 
( 
ClaimsIdentity )
)) *
identity* 2
)2 3
.3 4
Claims4 :
.: ;
ToList; A
(A B
)B C
;C D
var 
context 
= 
new  
DataIsolationContext 2
(2 3
claims3 9
.9 :
Single: @
(@ A
cA B
=>C E
cF G
.G H
TypeH L
==M O
CustomClaimTypeP _
._ `
MatrixUsername` n
)n o
.o p
Valuep u
,u v#
GetDataIsolationPolicy	w ç
(
ç é
claims
é î
)
î ï
)
ï ñ
;
ñ ó
return 
context 
; 
} 	
private 
static 
DataIsolationPolicy *"
GetDataIsolationPolicy+ A
(A B
IEnumerableB M
<M N
ClaimN S
>S T
claimsU [
)[ \
{ 	
var 

userRights 
= 
claims #
.# $
Single$ *
(* +
c+ ,
=>- /
c0 1
.1 2
Type2 6
==7 9
CustomClaimType: I
.I J
UserAccessRightsJ Z
)Z [
;[ \
var 
settings 
= 
new "
JsonSerializerSettings 5
{ 
ContractResolver  
=! "
new# &2
&CamelCasePropertyNamesContractResolver' M
(M N
)N O
} 
; 
var 
model 
= 
JsonConvert #
.# $
DeserializeObject$ 5
<5 6#
UserPrivilegesViewModel6 M
>M N
(N O

userRightsO Y
.Y Z
ValueZ _
,_ `
settingsa i
)i j
;j k
var   
policy   
=   1
%PrivilegesToDataIsolationPolicyHelper   >
.  > ?"
GetDataIsolationPolicy  ? U
(  U V
model  V [
)  [ \
;  \ ]
return"" 
policy"" 
;"" 
}## 	
public%% 
static%% 
Guid%% 
GetUserIdAsGuid%% *
(%%* +
this%%+ /
	IIdentity%%0 9
identity%%: B
)%%B C
{&& 	
return'' 
new'' 
Guid'' 
('' 
GetUserIdFromClaim'' .
(''. /
identity''/ 7
)''7 8
)''8 9
;''9 :
}(( 	
private** 
static** 
string** 
GetUserIdFromClaim** 0
(**0 1
	IIdentity**1 :
identity**; C
)**C D
{++ 	
var,, 
claimsIdentity,, 
=,,  
identity,,! )
as,,* ,
ClaimsIdentity,,- ;
;,,; <
try.. 
{// 
return00 
claimsIdentity00 %
.00% &
Claims00& ,
.00, -
Single00- 3
(003 4
c004 5
=>006 8
c009 :
.00: ;
Type00; ?
==00@ B
CustomClaimType00C R
.00R S
UserId00S Y
)00Y Z
.00Z [
Value00[ `
;00` a
}11 
catch22 
(22 
	Exception22 
)22 
{33 
throw44 
new44 
	Exception44 #
(44# $
$str44$ :
)44: ;
;44; <
}55 
}66 	
}77 
}88 „
\C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IMatrixPrivilegeLogic.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface !
IMatrixPrivilegeLogic *
{ 
bool  
CheckMatrixPrivilege !
(! "
Guid" &
privilegeId' 2
,2 3
Guid4 8
userId9 ?
)? @
;@ A
} 
}		 ∆
fC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IMatrixUserManagementRepository.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface +
IMatrixUserManagementRepository 4
{ 
UserPrivilegeAll 
GetUserPrivileges *
(* +
Guid+ /
userId0 6
)6 7
;7 8
} 
}		 ¥
YC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\IMatrixUserService.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

	interface 
IMatrixUserService '
{ 
bool 
IsExistingUserInDb 
(  
string  &
userName' /
)/ 0
;0 1
bool $
IsExistingUserInDbDapper %
(% &
string& ,
userName- 5
)5 6
;6 7
} 
} °
WC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\ManagementRoutes.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
ManagementRoutes !
{ 
public 
const 
string *
RoutePrefixCoreManagementUsers :
=; <
RouteConstants= K
.K L
RoutePrefixCoreL [
+\ ]
$str^ q
;q r
public 
const 
string 2
&RoutePrefixCoreManagementUsersFindUser B
=C D
$strE Q
;Q R
} 
}		 Ñ

XC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\MappingExtensions.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

static 
class 
MappingExtensions )
{ 
public 
static 
TDestination "
MapTo# (
<( )
TSource) 0
,0 1
TDestination2 >
>> ?
(? @
this@ D
TSourceE L
sourceM S
)S T
{ 	
return		 
Mapper		 
.		 
Map		 
<		 
TSource		 %
,		% &
TDestination		' 3
>		3 4
(		4 5
source		5 ;
)		; <
;		< =
}

 	
public 
static #
FindUserResultViewModel -
ToViewModel. 9
(9 :
this: >
FindUserResultData? Q
dataR V
)V W
{ 	
return 
data 
. 
MapTo 
< 
FindUserResultData 0
,0 1#
FindUserResultViewModel2 I
>I J
(J K
)K L
;L M
} 	
} 
} ô%
[C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\MatrixPrivilageLogic.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class  
MatrixPrivilegeLogic %
:& '!
IMatrixPrivilegeLogic( =
{ 
private 
readonly 
ICacheService &
_cacheService' 4
;4 5
private 
readonly "
IDbContextScopeFactory /"
_dbContextScopeFactory0 F
;F G
private 
readonly +
IMatrixUserManagementRepository 8+
_matrixUserManagementRepository9 X
;X Y
public  
MatrixPrivilegeLogic #
(# $
ICacheService 
cacheService &
,& '"
IDbContextScopeFactory "!
dbContextScopeFactory# 8
,8 9+
IMatrixUserManagementRepository +*
matrixUserManagementRepository, J
)J K
{ 	
_cacheService 
= 
cacheService (
;( )"
_dbContextScopeFactory "
=# $!
dbContextScopeFactory% :
;: ;+
_matrixUserManagementRepository +
=, -*
matrixUserManagementRepository. L
;L M
} 	
public++ 
bool++  
CheckMatrixPrivilege++ (
(++( )
Guid++) -
privilegeId++. 9
,++9 :
Guid++; ?
userId++@ F
)++F G
{,, 	
var-- 
userAllPrivileges-- !
=--" # 
GetUserAllPrivileges--$ 8
(--8 9
userId--9 ?
)--? @
;--@ A
var.. 
hasPrivilege.. 
=.. 
userAllPrivileges.. 0
...0 1
Any..1 4
(..4 5
x..5 6
=>..7 9
x..: ;
...; <
MatrixPrivId..< H
==..I K
privilegeId..L W
&&..X Z
x..[ \
...\ ]
Value..] b
)..b c
;..c d
return00 
hasPrivilege00 
;00  
}11 	
private77 
IEnumerable77 
<77 
MatrixPrivilege77 +
>77+ , 
GetUserAllPrivileges77- A
(77A B
Guid77B F
userId77G M
)77M N
{88 	
UserPrivilegesData:: 
userPrivileges:: -
;::- .
var;;  
cachedUserPrivileges;; $
=;;% &
_cacheService;;' 4
.;;4 5
GetCacheItem;;5 A
<;;A B
UserPrivilegesData;;B T
>;;T U
(;;U V
userId;;V \
,;;\ ]

GlobalData;;^ h
.;;h i
UserPrivilegeKey;;i y
);;y z
;;;z {
if<< 
(<<  
cachedUserPrivileges<< $
==<<% '
null<<( ,
)<<, -
{== 
userPrivileges>> 
=>>  +
_matrixUserManagementRepository>>! @
.>>@ A
GetUserPrivileges>>A R
(>>R S
userId>>S Y
)>>Y Z
.>>Z [
UserPrivilege>>[ h
;>>h i
_cacheService?? 
.?? 
SetCacheItem?? *
(??* +
userId??+ 1
,??1 2

GlobalData??3 =
.??= >
UserPrivilegeKey??> N
,??N O
userPrivileges??P ^
)??^ _
;??_ `
}@@ 
elseAA 
{BB 
userPrivilegesCC 
=CC   
cachedUserPrivilegesCC! 5
;CC5 6
}DD 
varFF 
userAllPrivilegesFF !
=FF" #
userPrivilegesFF$ 2
.FF2 3
GetTypeFF3 :
(FF: ;
)FF; <
.GG 
GetPropertiesGG 
(GG 
BindingFlagsGG +
.GG+ ,
PublicGG, 2
|GG3 4
BindingFlagsGG5 A
.GGA B
InstanceGGB J
)GGJ K
.HH 
WhereHH 
(HH 
pHH 
=>HH 
pHH 
.HH 
CanReadHH %
&&HH& (
pHH) *
.HH* +
PropertyTypeHH+ 7
==HH8 :
typeofHH; A
(HHA B
MatrixPrivilegeHHB Q
)HHQ R
)HHR S
.II 
SelectII 
(II 
pII 
=>II 
(II 
MatrixPrivilegeII -
)II- .
pII. /
.II/ 0
GetValueII0 8
(II8 9
userPrivilegesII9 G
,IIG H
nullIII M
)IIM N
)IIN O
.JJ 
ToListJJ 
(JJ 
)JJ 
;JJ 
returnLL 
userAllPrivilegesLL $
;LL$ %
}MM 	
}PP 
}QQ †
VC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\MatrixPrivilege.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
MatrixPrivilege  
{ 
public 
MatrixPrivilege 
( 
)  
{ 	
MatrixPrivId		 
=		 
Guid		 
.		  
Empty		  %
;		% &
}

 	
public 
Guid 
MatrixPrivId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
Value 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ’
XC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\MatrixUserService.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public		 

class		 
MatrixUserService		 "
:		# $
IMatrixUserService		% 7
{

 
private 
readonly "
IDbContextScopeFactory /"
_dbContextScopeFactory0 F
;F G
public 
MatrixUserService  
(  !"
IDbContextScopeFactory! 7!
dbContextScopeFactory8 M
)M N
{ 	"
_dbContextScopeFactory "
=# $!
dbContextScopeFactory% :
;: ;
} 	
public!! 
bool!! 
IsExistingUserInDb!! &
(!!& '
string!!' -
userName!!. 6
)!!6 7
{"" 	
using## 
(## 
var## 
dbContextScope## %
=##& '"
_dbContextScopeFactory##( >
.##> ?
CreateReadOnly##? M
(##M N
)##N O
)##O P
{$$ 
var%% 
db%% 
=%% 
dbContextScope%% '
.%%' (

DbContexts%%( 2
.%%2 3
Get%%3 6
<%%6 7
Context%%7 >
>%%> ?
(%%? @
)%%@ A
;%%A B
string'' 

sqlCommand'' !
=''" #
$str''$ c
+''d e
userName''f n
+''o p
$str''q t
;''t u
var(( 
data(( 
=(( 
db(( 
.(( 
Database(( &
.((& '
ExecuteSqlCommand((' 8
(((8 9

sqlCommand((9 C
)((C D
;((D E
var** 
result** 
=** 
data** !
;**! "
return,, 
result,, 
>,, 
$num,,  !
;,,! "
}-- 
}.. 	
public00 
bool00 $
IsExistingUserInDbDapper00 ,
(00, -
string00- 3
userName004 <
)00< =
{11 	
using22 
(22 
var22 
dbContextScope22 %
=22& '"
_dbContextScopeFactory22( >
.22> ?
CreateReadOnly22? M
(22M N
)22N O
)22O P
{33 
var44 
db44 
=44 
dbContextScope44 '
.44' (

DbContexts44( 2
.442 3
Get443 6
<446 7
Context447 >
>44> ?
(44? @
)44@ A
;44A B
var66 

connection66 
=66  
db66! #
.66# $
Database66$ ,
.66, -
GetOpenConnection66- >
(66> ?
)66? @
;66@ A
var77 
data77 
=77 

connection77 %
.77% &
Query77& +
(77+ ,
$"77, .
$str77. k
{77k l
userName77l t
}77t u
$str77u v
"77v w
)77w x
;77x y
var88 
result88 
=88 
(88 
int88 !
)88! "
data88" &
.88& '
First88' ,
(88, -
)88- .
.88. /
VALUE88/ 4
;884 5
return99 
result99 
>99 
$num99  !
;99! "
}:: 
};; 	
}>> 
}?? ˚
lC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\PrivilegesToDataIsolationPolicyHelper.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

static 
class 1
%PrivilegesToDataIsolationPolicyHelper =
{ 
public 
static 
DataIsolationPolicy )"
GetDataIsolationPolicy* @
(@ A#
UserPrivilegesViewModelA X
modelY ^
)^ _
{ 	
if 
( 
model 
. $
DataRestrictionByNothing .
). /
{ 
return		 
DataIsolationPolicy		 *
.		* +$
DataRestrictionByNothing		+ C
;		C D
}

 
if 
( 
model 
. #
DataRestrictionByAgency -
)- .
{ 
return 
DataIsolationPolicy *
.* +
RestrictionByAgency+ >
;> ?
} 
if 
( 
model 
. %
DataRestrictionByCreditor /
)/ 0
{ 
return 
DataIsolationPolicy *
.* +!
RestrictionByCreditor+ @
;@ A
} 
if 
( 
model 
. !
DataRestrictionByTeam +
)+ ,
{ 
return 
DataIsolationPolicy *
.* +
RestrictionByTeam+ <
;< =
} 
return 
model 
. !
DataRestrictionByUser .
? 
DataIsolationPolicy %
.% &
RestrictionByUser& 7
: 
DataIsolationPolicy %
.% &
RestrictionByAgency& 9
;9 :
} 	
} 
}   â
^C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 6
)6 7
]7 8
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *ò
UC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\RouteConstants.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
RouteConstants 
{ 
public 
const 
string 
RoutePrefixCore +
=, -
$str. 8
;8 9
} 
} ÿ
SC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\SaveUserData.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
SaveUserData 
: 
BaseData  (
{ 
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
UserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 
Guid 

UserTypeId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UserTypeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
decimal 
	WorkHours  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	PersonKey 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool *
EnabledTwoFactorAuthentication 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string &
AuthenticationEncryptedKey 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
BaseData 
Agency 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} œ
XC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\SaveUserViewModel.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
SaveUserViewModel "
{ 
public 
Guid 
? 
Id 
{ 
get 
; 
set "
;" #
}$ %
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Guid 

UserTypeId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UserTypeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
decimal 
	WorkHours  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	PersonKey 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool *
EnabledTwoFactorAuthentication 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
BaseViewModel 
Agency #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} –
WC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\UserPrivilageIds.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
UserPrivilegeIds !
{ 
public 
static 
readonly 
Guid #

ManageUser$ .
=/ 0
new1 4
Guid5 9
(9 :
$str: \
)\ ]
;] ^
public 
static 
readonly 
Guid # 
ViewManagementScreen$ 8
=9 :
new; >
Guid? C
(C D
$strD f
)f g
;g h
}		 
}

 ï
WC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\UserPrivilegeAll.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
UserPrivilegeAll !
{ 
public 
Guid 
UserId 
{ 
get  
;  !
set" %
;% &
}' (
public		 
UserPrivilegesData		 !
UserPrivilege		" /
{		0 1
get		2 5
;		5 6
set		7 :
;		: ;
}		< =
public

 #
UserPrivilegesViewModel

 &#
UserPrivilegesViewModel

' >
{

? @
get

A D
;

D E
set

F I
;

I J
}

K L
} 
} Ó
YC:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\UserPrivilegesData.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class 
UserPrivilegesData #
{ 
public 
UserPrivilegesData !
(! "
)" #
{ 	

ManageUser 
= 
new 
MatrixPrivilege ,
(, -
)- .
;. / 
ViewManagementScreen  
=! "
new# &
MatrixPrivilege' 6
(6 7
)7 8
;8 9
}		 	
public 
MatrixPrivilege 

ManageUser )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
MatrixPrivilege  
ViewManagementScreen 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
} 
} ∞
^C:\Repos\SmallApps\WebAdapterSimplified\WebAdapterSimplifiedLibrary\UserPrivilegesViewModel.cs
	namespace 	'
WebAdapterSimplifiedLibrary
 %
{ 
public 

class #
UserPrivilegesViewModel (
{ 
public 
bool 

ManageUser 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool  
ViewManagementScreen (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool $
DataRestrictionByNothing ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool #
DataRestrictionByAgency +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public		 
bool		 %
DataRestrictionByCreditor		 -
{		. /
get		0 3
;		3 4
set		5 8
;		8 9
}		: ;
public

 
bool

 !
DataRestrictionByTeam

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
bool !
DataRestrictionByUser )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} 
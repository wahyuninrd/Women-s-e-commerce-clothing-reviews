��
�.�-
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( ""
Ttype:
2	"
Tidxtype0:
2	
$
DisableCopyOnRead
resource�
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint���������
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.12v2.13.1-0-gf841394b1b78ލ
ؘ
ConstConst*
_output_shapes	
:�*
dtype0	*��
value��B��	�"��                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      �	      �	      
��
Const_1Const*
_output_shapes	
:�*
dtype0*��
value��B��BtheBiBandBaBitBisBthisBtoBinBbutBforBonBsoBwithBofBwasBnotBmyBthatBsizeBitsBveryBtopBareBloveBlikeBdressBimBfitBbeBhaveBmeBjustBasBorBwearBtooBgreatBwouldBtheyBsmallBamBupBfabricBatBifBwillBcolorBlittleBlookByouBorderedBreallyBtheseBwellBpetiteBoutBdownBperfectBanBoneBcuteBboughtBmoreBlooksBfitsBbackBthanBsweaterBcanBbecauseBlengthBbitBprettyBniceBhasBhadBalsoBpantsBworkB
flatteringBcomfortableBallBaboutBwaistBstoreBsoftBwhenBmaterialBgotB	beautifulBmuchBmadeBlongBjeansBxsBstyleBshortBmediumBgoodBtriedBthemBskirtBwereBwayBlargeBshirtBretailerBevenBthinkBotherB
definitelyBthereBnoBdoBsuperBsomeBrightBonlineBoffBcolorsBblackBusuallyBtightBtrueB	purchasedBmodelBdoesBsureBstretchBstillBsleevesBjacketBdidntBdidBwhichBlotBaroundBwentBseeBqualityBgoBdoesntBcoatBdontBfromBfoundBdesignBrunsBenoughBblouseBbigB6BregularB	perfectlyBfrontBwhiteBusualBsinceBsaleBoverBmakesBfunBcantBbottomBwearingBwantBreceivedBonlyBhowBfirstBbothBwhatBwantedBthoughBsizesBsameBpriceBneedBgoesBfeelBfallBcouldBchestBafterBlovedBlookedBlongerBhoweverBgoingBfittedBcutBcasualBuniqueBrunBpieceBpatternBnavyBlovelyBlaceBhipsBgorgeousBbuyBwoolBtimeBshapeBprintBnicelyBnecklineBlooseBlookingBgetBfindBanotherByourBunderBthoughtBpictureBorderBmanyBcomplimentsBwishB
underneathBtopsBthinBslightlyBshorterBpersonBoverallBnormallyBmakeBkeepBintoBadorableBactuallyBworeBwideBwasntBtryBsayBmayBhighBgladBcomfyBcameBboxyBbodyBteeBsuitBpurchaseBbetterBwornB	recommendBprobablyBpinkBpairBgreenBgiveB
everythingBbraBbeenBareaBanyB
absolutelyBtookBsummerBsaidBproblemBlocalBlayerBfigureBfeltBextraBblueBalthoughB54BwhoBwhileBweightBthenBstrapsB	somethingBsomeoneB	shouldersBreviewsBphotoBlightweightBlbsBlargerBitchyBhugeBflowyBfewBfellBeveryBdressesBwarmBwaitB	versatileBthickBsmallerBredBmightBdenimBdeepBcollarBcamiBbustyBalmostB2BworksBvibrantBthroughBshouldBsheerBreturnBquiteBonceBlightBknitBhemBfineBfeelsBexcitedBendedBeasyBeasilyBdotsBcreamBclassicBbeingB53ByetBworkedBwashBunfortunatelyBtorsoBtheyreBsizingBsizedBsideBshoulderB	reviewersBpilcroBpicturedBpartBnewBneededBmostBmBlowBlinedBlikedBleftBkindBinchesBhitBheavyBgivesB	differentBdayBbestBbeforeBarmsB52B5B26BwinterBvestBtrulyBsawBsBpocketsBnoticedBlowerBleggingsBkneeBiveBhighlyBfavoriteBexactlyBdisappointedBcroppedBcomesBbustBbootsBanythingBamazingBxxsBwouldntBworthBwhereBtunicBtodayBthoseBtheresBstylishBsoldBsecondBroomyBreturnedBrecommendedBofficeBnothingBneverBneckBmyselfBliningBidBhopingBfeminineBfallsBdressedBdecidedBcozyBcoverBcardiganBbyBbuttonsBbelowB59B4B3BzipperByearsB	wonderfulBvneckB	typicallyBtwoBthreeBsleeveBshirtsBsectionBpullBothersBnowBkeepingBissueBfloralB	exceptionBcurvyBcoolBcheapBbuyingBblazerB57B10ByoureBxssBwithoutBweatherBuponBtryingBtightsBthingBtallBtakeBstrapBstickyBstapleBsnugB
silhouetteBshownBreviewerBratherBpicturesBpaigeB	oversizedBlessBleastBlayeringBlayeredBinsteadBhitsBhappyBfullBfindingBfactB	extremelyB
especiallyBdrapeB	dependingBbetweenBbeautifullyBaverageBalreadyBaboveB8B58B56BzipByearBworriedBunlikeBtuckedBsuchBstraightBslightBsimpleBsimilarBsidesBshowBseenBseemsBrufflesBroomBreviewB	referenceBreasonBreadBranBputBprintsBpackageBorderingBorangeBmidiB	materialsBmailBlotsBlooserBliveBlegsBleatherBkeptBinterestingBheelsBfoldsBflatBelegantBeitherBdueBdinnerBdarkBcrazyBcouldntBcloseBbuttonBbotherBboiledBbiggerBbelieveBbasicBbarelyBbabyBarmholesBagreeB34cB115BwomanBweighBweekBwashingBwBusedBttsBtieBthingsBtallerBswimsuitB
sweatshirtBstiffBstayBspringBspecialBskinnyBsimplyBshipBsexyBseasonBscratchyB	returningBrelaxedBpetitesBpantBpairedBoutfitBopenBoBmonthsBmineBmiddleBlikingBlayersBlastBlBknowBivoryBisntB	initiallyBillBhuggingB	hourglassBhotB	hopefullyBhopedBhardBhappenedBhangBhalfBguessBgotoBexpectedBeverBendBelasticBdryBdetailsBdetailBdespiteBdescriptionBdaysBcourseBcomfortBcomeBcoldBchicBcannotBbrandBbodiceBbathingBbasedB	availableBappropriateBalwaysBagoBagainBaddB810B55B51B36dB34B27ByoudByesByellowBxspBweirdBwashedBversionBusBunflatteringBuncomfortableBtighterBthatsBtextureBtellBtagB	surprisedBstylingBstretchyBstrangeBstatsBslimmingBslimB
sleevelessBsentBseemedBseeingBpregnantBplusBpleasedBoftenBoddBnudeBnaturalBnBmidBmentionBmeansBmaeveBlikelyBlegBladiesBlackBkneesBitchBhusbandBhungB
horizontalBhopeBhookBhigherBhelpBheavierBhangingBfixBfittingBfeetBfarB	fantasticB	expensiveBexpectBedgyBdrawnBdrapesBdotB	difficultBdetailedBdelicateBdBcuffBcoverupBcoverageBcleanBchanceBcarryBcamisoleBbrownBbreezyBbootiesBbecomeBbeachBbadlyBbadBankleBalternativeBalineB
additionalBacrossB68B28B1012B0BzeroBwouldveBwldBwiderBwiBwhyBwellmadeBweeksBweekendBwardrobeBwaitedBtypeBthankBtendBtealBtanksBtankBtailorBtB	syntheticBsweetB	structureBstripesBstandupBspringsummerBsortBsoonB	sometimesB	slightestBslacksBskirtsBsitBshowsBshowingBshellBseveralBseemBseamsBscoopBscarfBsaysBrockerB	revealingBreturnsBproductBprettierB	preschoolBpoundsB	potentialBplumBpleaseBplanBplaidB	placementBpeasantB	patternedBpajamaBownBoverwhelmingB	otherwiseBopinionBopenedBokB	obviouslyBneedsBnarrowBmostlyBmirrorBmindBmetallicBmeetingBmaybeBmachineBlinenBlineBlgBlapelsBjobBjerseyBjeanBitemBissuesBindeedBimagineBhourB
hesitationBhesitantBhereBhemmedBhelpsBhavingBgoldBgirlBgiantBgeneralBgalBfullyB	forgivingBflutterBflowersBflaresBflareB	fastenersBfairlyBfactorBfabulousB	exclusiveBexchangeB	excellentBenjoyB
embroideryBelbowBeasierBduringBdesignsBdealBcuzBcurvesBcoupleBcottonBcontrastingBconstructedBcommentsBcombinationBcoloredBclothesBcleavageBchartBcaseBcareBcardiBbuttBbusinessBburntBbulkBbuiltinBbeltedBbcBawayB	attractedBarrivedBarmB
appearanceBanywayBanyoneBallowsBalasBageBaddsBaddingB120123lbssizeB1ByoungerBxxspBxlBwowBworryBwontB	whimsicalBwhateverBwearerBweB	waistlineBviscoseBvelvetBvalueBvBunusualBunderstatedB
understandBturnsBturnBtuckBtshirtBtripBtrendBtreatBtraditionalBtouchBtotallyBtinyBtimesBtiedBthrowBtemperaturesBteacherBtailorsBswingBstylesBsturdyBstunningB
stretchtheB	straplessBstayingBstarBsplitBsolidsBsofterB	smoothingBsmellBsloppyBslipBskinBsiteBshrinkB
shoulderedBshortsBshapedBsewnBsetB	seriouslyBsellBselfB
seethroughBroundBrollBrichlyBrichBrannaBquirkyBquicklyB	questionsB	purchasesBpulledB
proportionBprintedBpracticaltheyreBpostBportionBpopBpoorBplasticBplainBplacesBplaceBphotosBphotographedBperhapsBpeopleBpencilBpearlBpeachBpassedBpassBourBoptionBonesBnumerousBnoticeBnotedBnormalBnoneBneedlessBnecklaceBmutedBmoveBmodestyB
misalignedB	mentionedBmaxedBmatterB	maternityBlinerBlbBlayBkeeperBjeansshortsBjacketsBitemsBironingBinseamBimmediatelyBideaBhumidBhopesBholesBholeBhipBherBheelBhaventBhangsBhandBgrowBgreyBgoodnessBgoddessBgivenBgetsBfridayBfrenchBformBforestBflatsBfauxBfanB	fabrictheB	expectingBexpandBexceptBeveningBetcBelseBedgesBedgeBdressingBdreadfulBdoorBdoneBdollBdistressingBdistinctiveBdiscountBdescribeBdefineBdaughterBdartsBdarkerBcuterBcuffsBcropBcrispBcordsBcoralBcoolerBconsideringBcolorscutdrapeBclosetBchillyBchestedBcheckBchambrayB	certainlyBcalledB
bustybroadBbuildBbroadBbrighterBbreastBbottomsBbooBbillowyBbibBbandBawkwardBathleticBaquaBappearsBappearBanywaysB	anymoreimBamountBagBadmitBaccessoriesB510B36c382735135B34bB135B130lbB1214B12B110B10pB100B0pBzoomByoungByikesBwtBwrongBwriteBwristBwrinklefreeBwrinkleBwrappedBworstB	workplaceBworBwonsBwonkyBwomenBwksBwinBwholeBwhitBwhimBwedgesBwebsiteBwearsBwbBwaveringBwasteBwarmerBwantsBwantingBwaitingBwaistedBvintageBvariousBvacationBuseBupperBunlessBunkeptB
unbuttonedBtypesBtwinsBtweakingB	turquoiseBtulleBtrunkB
truetosizeBtransitionalB
transitionBtransformersBtownBtossBtopitBtonesBtodaysBtiredBtighBthruBthreadBthisandBthirtyBthinkingBthickestBtheirBthBtextBterryBterribleBtermsBtenBtapersBtaperedBtabBsymbolBswtrB	swimsuitsBsweatshirttypeBsweaterknitBswallowBsurpriseB	suedelikeBsubtleB
structuredBstripedBstripeBstrikesB	strangestBstickBsteamedBstealBstatingBstarsBstandardBsquatBspotBspectacularBspecificBspareBsorryhadBsophisticatedBsoooBsomehowBsolvesBsolvedBsolidBsoftnessBsmoothlyBsmoothBsmallestBslvsBslouchyBslitBslidingBslideBslenderBslashBskinnysBsixB	sincerelyBsignificantlyBsignificantB	shruglikeBshowyBshortwaistedBshortcomingsBshippingBshimmerBshiftBsheBsettleB	septemberBseparateBseasonsBschoolBsaveB	saturatedBsandalsBsadlyBrunningBruffleB	roomymoreBromperBromanticBriseB
ridiculousBrestBresistBreservationsBregainedBredoingBrecordBrecentB	receivingBrearBrealizedBrealBreadingBrayonBravingBrangeBraiseBrB
quirkinessBquickBqualmBputtingBpuffierBprovidesBproportionsB	prewashedBpreviousBpostbabyBpositiveB	portrayedBpolkaBpolishedBpointBplentyBpjsB
pirchasingBpinnedBpicsBpickBpetitethinnerBpeterBpennyBpeachyBpayingBpatternsBpartsB	pantstheyBpanBpaleBpBownedBouterBoutdoorsBordinaryBopportunityBonlinenowhereBonitBoliveBoldBohBoddlyBobviousBnursingBnubbyBnoteBnopeB	nightwearBnicerBnetBneitherBnegativeB	necessaryBnarrowerBnamedBmustBmuffinBmovementBmovedBmotifBmiraculouslyBminuteBminorBmidriffBmiddlBmetBmedBmeantBmaxiBmaternityishBmaskingBmanbackBmanagesBmakingBmajorB	luxuriousBluckilyBloverBloseBloosestBlistingBlinesB	linenlikeBlikesBlieBletsBletBlengthsBlbsitBlayerngBlaundersBlaterBlateBlarkspurBkiddingBkeyBjusticeBjoggerBitselfBitamp39sBisitsBironBinventBinterestBintendedBinsideB
incrediblyBinchB
imaginableBimageBhomeBholidayBholdBhidesB	hesitatedB	herestillBheartBheadBheBhandleBhalterBhahaBhadntBguessingBgrrrrrrrrrrrBgrayBgodsBgirlsBgiftBgetawayBgapBfuzzyBfunkyBfullerBforwardBforthB	forgottenBfootBflowingBflouncyBflexibilityBfleckedBflareitBflairBfinishBfinallyBfiguredBfifthBfibersBfenceBfauxfurBfateBfashionableBfamilyB	falteringBfakeBfadedBfabricaBeyeingB
everywhereBeveryoneBevensBenvironmentBentireBenjoyingB
effortlessBearthBeachBdyeBdropshoulderBdropseamBdressyBdrapedBdisappointingB
disappointBdisagreeB
differenceB	detailingBderbyBdeeperBcutecontrastingBcurveBcrotchBcouldveBcorrectBconstrictingBconsiderB	consciousB	conditionB	concernedBconcernBcomplimentedB
completelyBcomingBcomboBcoloursBcoloringBcolorfulBclosureBcloselyBclosedBclingyBcldBclassyB	christmasBchoiceBcharlieBchangeBcauseBcasuallyBcamisolBcamisBcBbuttonedBbusyBbulkyBbulgesBbuiltBbuckleBbringBbrandsBboughBbothersBbohemianBboBblousesBblkblkBblazerlooksBbigiBbewareBbenefitBbeltBbellBbathrobeBbatchB	basicallyBbareBbandeauBbaggyBbagBawaitingBautobotsB
australianB
attractiveBatleastBassumingB	associateBaskedB
asidesinceBarriveBarmpitsBarmpitBarmholeBapproxB
appreciateBappealBanyoneaBamazedBalterationsBaloneBaiBagesB
adjustableBadditionBaccurateBaccentuatingBaccentuatesB
accentuateBableB50B36ddB36B34gB	34a282936B342535B32ddB32dB30B24B20B150B140B14B130B128B125B120B118B115lbsB114lbsB108lbsBã¼berByoullByeahBxxlBxssmBxspetiteBxsmallsmallBwthBwrinkledBwrinBwouBworseBworldBworkingBworkappropriateBwordBwonderfullyBwishedBwiseBwingsBwindingBwilBwidthBwhoseBwhetherBwheBwethotBwesternBwelldesignedBwellcutBwelBweightedBweighingBweekendsBweddingBwaysB
waterproofBwaterBwashableBwasaBwaryBwarningBwarnBwarmthBwalkedBwalkB	waistbandBvolumeBvividBvisualBvisibleBveniceBvastBvansBvanitysizedB
valentinesB	vacationsBusingBupdateBunsureBunravelB	unnaturalBuniformBunforgivingBunevenBunderwearbikinicrossfitB	underwearBunderestimatedB	underarmsB	uncertainB
unbearablyBuBtypicalBtwillB
turtleneckBtumBtubesBtshirtyBtrickyBtrendyBtranslucentBtransitionedBtrainBtopquiteBtonsBtonightBtoneBtonBtomatoB	toleranceBtoldBtitleBtinierBtimewhenBtightsleggingsBtightlyBtightenBtiesBticketsBticketBthrilledBthreateningBthreadsBthirdBthinnerBthinishBthingsjeansBthighBthickitsBthickerB	thereforeB
themselvesB
thatamp39sBterrificBtentBtennysBtencelBtehBtaxBtaupeBtasteBtasselsBtakingBtailoredBtadBswimmingBsweepBsweaterlikeBsweatercoatB
swallowingBsurprisinglyB	surprisesBsundryBsummerweightBsuitsBsuitableBsubstantialBstylistBstyledBstuffBstuckB	struggledBstripBstringsB	stretchedB
straighterBstopBstomachBstifferBstaysBstayedBstatesB	statementBstartedBstandingBstandBsquishedBsqueezedBsportyBsplurgeBspendBspeckledBspBsoulBsorryBsorbetBsoonerBsooBsomewhatBsolveBsnugglyBsnakeBsnagB	smokylikeBsmittenBsmileBslitventB
slitheringB
slitdesignBslimmerBskyB	skepticalBskaterB	situationBsillyBsilkyB
silkvelvetBsilkBsightBsiceBshrugBshotBshortyBshortsleeveBshoppingBshookBshoesBshirterB
shirtdressBsheathBshapesBshadesBshadeBsewBservingBseriousBsemicroppedBsemiboxyBsellingBseldomB	searchingB
seamstressBscubaBscaredBsaytheBsatBsassyBsansBsalmonBsalespersonBsagBsadieBsadBrunnerBruinBrtBroughBroomierBrollingBrolledBroleBrobeBriskBripBridiculouslyBribbingBribbedBribBriB
reviewersiB
reversibleBrevealsB	requestedBreplacementBrepeatB	reorderedBremovedBremoveB	removableBremindsBremindedB	remembersBrelacingBregrettablyBredblackB
recognizedBrecievedBreasonsBrealllyBreadyBrawBravedBrarelyBquotskyquotBquitBquBqBpxsBpulloverBpullingBpuffyBpuffedB	puckeringB	providingBprovidedBprosBproportionedBproportionalBproperlyBproofBprobBpriceyBpressedBpreferBpostedBpossibleBpopularBpopsBpoorlyBpoolsideBpoochBponchoBpoliteBpointedBplushBpleatsBpleatB
pleasantlyBplayingBpjBpipingB
pinstripesBpinchedBpillingBpilcrBpiecesBpickyBpickedBpicB
perfectnotBperfectiBperBpeplumBpayBpastBpartyB
particularB	partiallyBparkaBpardonBpapayaBpairsBpageB	packagingBpackBp0B
overlookedBoutthereBoutsideBoutrageouslyBoutdoneBothewiseBotBorderingreturningBorangeyBoptionsBopeningBopaqueBontrendB	onebuttonBomgBolderBoklahomaBodorB
occasionalBnwBnovemberBnorthBnonethelessBnodBnightBniceflatteringBnextBneutralBneedingBnecklineenhancesB	necklacesBneatBnameBmustardBmultipleBmultifunctionalityBmsBmovingBmotherB	mosswhichBmossBmorningBmomBmodestBmodernBmodBmlBmistakeB
misleadingBminutesBmillBmildishB	midweightBmidvacationBmetheBmetalBmessedBmerelyBmenswearBmelonBmedaBmeasuresBmeasuredBmcguireBmaternityesqueBmatchingBmatchesBmatchB	massivelyB	mannequinBmainlyBmainBmagicalBluxBluvBluckedBluckBloungingBloungeBlostB	longeradsBlocationB	literallyBlistenedBlistBlintB	limitlessBlimitingBlighterBliftedBliftBlifeBlibsBldecideBlaysBlayoutB
launderingBlackedsomethingBlackedBlacingdoBlacingBlaceupBlabelBknowingBknewBkidsBkidBkicksBkhakiBkeyholeBkellyBkeepsBkakiB	jumpsuitsBjumpsuitBjuiceBjudgingBjessaBjammieBjackieBjacketanotherBitdB	itclassicB	itchinessBitalyBitalsoBit39sBironedB	intricateBintrepidBintentB	insulatedBinstructionsBinstoreBinstantBinstallBinnerBinformationB	indicatesBindependentlyB
incredibleBincreasinglyBincludedBinappropriateB
impressionB	impressedB
impossibleBimportantlyB
impeccableBimoBimmodestB	immediateBieBicingBhusbandsBhuntB	humongousBhugsBhteBhouseBhoursBhottestBhoodBhonestlyBholdsBhisB
hipsthighsB
highlightsBhighestBhesitateBheresBhemwiseBhelpedBheldBheightBheftyBheedB	heavywarmBheavilyBheardBhatedBhateBhasntBharderBhappierBhappenBhangerB	handwovenBhairBhabitBguttedBgroupBgreenishB	greattrueBgreatnotBgraysBgraceBgrabbedBgrabBgottenBglassesBglassBgettingBgenerousB	generallyBgeigerBgaveBgauzeBgapsBgameBfyiBfurBfunnyBfundsB
functionalBfunasBftBfrustratingBfrumpyBfrayingrunsBfrayedcouldntBfrayBfranklyBfranceBframeBfragileBformfittingBformalBfootballBfoldBfluffyB	flowinessBflowBflopsBfloorBflipsBflexB
fleecelikeBflawBflatterB	flateringBflaredBflapsBfiveBfitterBfitdisappointedBfitandflareBfirBfinishedBfiguringBfiberB	fiancã©B
femininityBfeltedBfeelingBfeatureperfectBfeBfavorsB	favorableBfaultBfasterBfashionBfancyBfallingBfacebookBfB
extralargeBextendedBexposedB
experienceBexpectedsortB
exchangingBexaggeratedBexactBeverydayBeventBeveningsBeveBetherealBessentiallyBespBequatesBequalsBeptiteBenvelopeBenterBenormousB
elongatingB	elegantlyBeaselBearlyBearlierBeBdusterBdryerBdropBdressitBdreamBdrapingBdraperyBdramaticBdownsideBdollyBdoingBdiveB
distressedB	displayedBdisplayBdiscoverB	discountsBdisappoitnedBdisappointmentBdisappearedBdirectlyBdesignpatternB	designfitBdesignedB	describedBdepictedBdemureB	deliveredBdegreesB
definitionBdefiniteBdefinedBdecisionBdecideBdebatedBdeathBddBdaytimeBdaughteBdartBdangBdamageBdailyBcycleBcutoutBcutesyB	customersB	currentlyBcurlsB
curatorialBcupBculottesBcraftsmanshipBcoversBcoveredBcostumeB	correctlyB
coralpeachBcopperB	convincedBcontemporaryB	containedBconsistentlyBconformBcomposedBcomplementaryB
complaintsB	complaintBcomplainBcompeteB	compelledBcompanyBcompaintB	commentedBcommentBcomfortablyBcombinesBcolourBcocoonB
coatsizingBcoatsBcoastBcoalBclownBcloudsBclothingBcloseupBcloserBclimatesBclimateBcleverlyBclearlyBclayBchunkyBchoseBchooseBchinosBchildBchestsBcheBcharmBcharcoalB	characterBchangedBchairBcedarBcatchesBcasualcreativeBcargoBcarefulBcardiganblazerBcardBcarbonBcarBcaprisBcapBcandyB	camoflageBcalvesBcakesBcakeBcageBcaftanBcaBbutterBbustedBburgundyBbunchedBbummerBbumB	buildthisBbucklesBbtwBbrunetteBbrowniBbroaderBbrightBbrickBbreatheB
breathableBbreastsBbraletteBbralessBboyBboucleBbookBbonusBbohochicBbohoBbodyconBbodBblondeBblendBblanketBblandB
blackwhiteBbingoBbiglooksBbiggestBbeshowedBberryBbelovedBbellyBbeigeBbehindBbeautyBbeautifullymadeBbeadsBbashBbaggingBbaggierBbaggieBbacksideBbabydollBavoidBattitudeB	attentionBasymmetricalBassumeBaskingBartsyBarrivesBarrivalBarmshoulderBarentBareasB	areacouldBaptBappropriatelyBapproachBappearedBapparentBanywhereBanticipatingBanticipatedBantiBanthtosBanswerBanimalBandorBampquotnoampquotBamountsBamalfiBalteredBalongBallthisBaheadBagainstB
advertisedBadoreBadoptedBadjustBadequateBaddedBactB
accuratelyBaccommodatingB	accessoryB
acceptableBaccentB9B86B8300B70B60sB55thereB55130lbsB515B511B42B40sB38B36cB34dsB34d2735B34dB34aaB34aB32pB32cB32bB3224532B30sB30ddB2pB29sB29B26sB2625B25B246B155B15B129lbsB129B128lbsB125lbsB124B120lbB118120B113lbsB113B112lbsB107B105B10311B03B00
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
H
Const_4Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_11/bias
y
(Adam/v/dense_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_11/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_11/bias
y
(Adam/m/dense_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_11/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_11/kernel
�
*Adam/v/dense_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_11/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_11/kernel
�
*Adam/m/dense_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_11/kernel*
_output_shapes

: *
dtype0
�
Adam/v/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_10/bias
y
(Adam/v/dense_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_10/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_10/bias
y
(Adam/m/dense_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_10/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/v/dense_10/kernel
�
*Adam/v/dense_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_10/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/m/dense_10/kernel
�
*Adam/m/dense_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_10/kernel*
_output_shapes

:@ *
dtype0
~
Adam/v/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_9/bias
w
'Adam/v/dense_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_9/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_9/bias
w
'Adam/m/dense_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_9/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/v/dense_9/kernel

)Adam/v/dense_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_9/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/m/dense_9/kernel

)Adam/m/dense_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_9/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/v/embedding/embeddings
�
/Adam/v/embedding/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/embedding/embeddings*
_output_shapes
:	�N*
dtype0
�
Adam/m/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*,
shared_nameAdam/m/embedding/embeddings
�
/Adam/m/embedding/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/embedding/embeddings*
_output_shapes
:	�N*
dtype0
�
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_34139*
value_dtype0	
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name37413*
value_dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

: *
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
: *
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@ *
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:@*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:@*
dtype0
�
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�N*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	�N*
dtype0
s
serving_default_examplesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_examples
hash_tableConst_5Const_4Const_3embedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_49581
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConst_1Const*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_50079
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__initializer_50091
:
NoOpNoOp^PartitionedCall^StatefulPartitionedCall_1
�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
�E
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*�D
value�DB�D B�D
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures*
* 

	keras_api* 
;
	keras_api
_lookup_layer
_adapt_function*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict* 
5
1
*2
+3
24
35
:6
;7*
5
0
*1
+2
23
34
:5
;6*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Htrace_0
Itrace_1* 

Jtrace_0
Ktrace_1* 
/
L	capture_1
M	capture_2
N	capture_3* 
�
O
_variables
P_iterations
Q_learning_rate
R_index_dict
S
_momentums
T_velocities
U_update_step_xla*

Vserving_default* 
* 
* 
7
W	keras_api
Xlookup_table
Ytoken_counts*

Ztrace_0* 

0*

0*
* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

`trace_0* 

atrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

gtrace_0* 

htrace_0* 

*0
+1*

*0
+1*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

utrace_0* 

vtrace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

|trace_0* 

}trace_0* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
y
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map* 
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
* 
* 
/
L	capture_1
M	capture_2
N	capture_3* 
/
L	capture_1
M	capture_2
N	capture_3* 
/
L	capture_1
M	capture_2
N	capture_3* 
/
L	capture_1
M	capture_2
N	capture_3* 
* 
* 
* 
�
P0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
�0
�1
�2
�3
�4
�5
�6*
<
�0
�1
�2
�3
�4
�5
�6*
* 
/
L	capture_1
M	capture_2
N	capture_3* 
* 
V
�_initializer
�_create_resource
�_initialize
�_destroy_resource* 
�
�_create_resource
�_initialize
�_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*

�	capture_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
f`
VARIABLE_VALUEAdam/m/embedding/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/embedding/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_9/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_9/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_9/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_9/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_10/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_10/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_10/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_10/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_11/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_11/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_11/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_11/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
* 
* 
* 
* 
* 

�serving_default* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
"
�	capture_1
�	capture_2* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	iterationlearning_rateAdam/m/embedding/embeddingsAdam/v/embedding/embeddingsAdam/m/dense_9/kernelAdam/v/dense_9/kernelAdam/m/dense_9/biasAdam/v/dense_9/biasAdam/m/dense_10/kernelAdam/v/dense_10/kernelAdam/m/dense_10/biasAdam/v/dense_10/biasAdam/m/dense_11/kernelAdam/v/dense_11/kernelAdam/m/dense_11/biasAdam/v/dense_11/biastotal_1count_1totalcount?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Const_6**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_50318
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	iterationlearning_rateMutableHashTableAdam/m/embedding/embeddingsAdam/v/embedding/embeddingsAdam/m/dense_9/kernelAdam/v/dense_9/kernelAdam/m/dense_9/biasAdam/v/dense_9/biasAdam/m/dense_10/kernelAdam/v/dense_10/kernelAdam/m/dense_10/biasAdam/v/dense_10/biasAdam/m/dense_11/kernelAdam/v/dense_11/kernelAdam/m/dense_11/biasAdam/v/dense_11/biastotal_1count_1totalcount*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_50411��	
�
�
'__inference_model_3_layer_call_fn_49943
review_text_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallreview_text_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_49889o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namereview_text_xf:%!

_user_specified_name49919:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49927:%!

_user_specified_name49929:%!

_user_specified_name49931:%!

_user_specified_name49933:%	!

_user_specified_name49935:%
!

_user_specified_name49937:%!

_user_specified_name49939
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_49997

inputs	)
embedding_lookup_49992:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_49992inputs*
Tindices0	*)
_class
loc:@embedding_lookup/49992*+
_output_shapes
:���������d*
dtype0v
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_output_shapes
:���������du
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*+
_output_shapes
:���������d5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:%!

_user_specified_name49992
�w
�
B__inference_model_3_layer_call_and_return_conditional_losses_49889
review_text_xfY
Utext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_3_string_lookup_3_equal_y3
/text_vectorization_3_string_lookup_3_selectv2_t	"
embedding_49869:	�N
dense_9_49873:@
dense_9_49875:@ 
dense_10_49878:@ 
dense_10_49880:  
dense_11_49883: 
dense_11_49885:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
tf.reshape_3/ReshapeReshapereview_text_xf#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::���
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Vtext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
*text_vectorization_3/string_lookup_3/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0,text_vectorization_3_string_lookup_3_equal_y*
T0*#
_output_shapes
:����������
-text_vectorization_3/string_lookup_3/SelectV2SelectV2.text_vectorization_3/string_lookup_3/Equal:z:0/text_vectorization_3_string_lookup_3_selectv2_tQtext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
-text_vectorization_3/string_lookup_3/IdentityIdentity6text_vectorization_3/string_lookup_3/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_49869*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_49761�
*global_average_pooling1d_3/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_49669�
dense_9/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_9_49873dense_9_49875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_49776�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_49878dense_10_49880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_49792�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_49883dense_11_49885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_49808x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:W S
'
_output_shapes
:���������
(
_user_specified_namereview_text_xf:,(
&
_user_specified_nametable_handle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49869:%!

_user_specified_name49873:%!

_user_specified_name49875:%!

_user_specified_name49878:%	!

_user_specified_name49880:%
!

_user_specified_name49883:%!

_user_specified_name49885
�
�
#__inference_signature_wrapper_49581
examples
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_serve_tf_examples_fn_49553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:%!

_user_specified_name49557:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49565:%!

_user_specified_name49567:%!

_user_specified_name49569:%!

_user_specified_name49571:%	!

_user_specified_name49573:%
!

_user_specified_name49575:%!

_user_specified_name49577
��
�
!__inference__traced_restore_50411
file_prefix8
%assignvariableop_embedding_embeddings:	�N3
!assignvariableop_1_dense_9_kernel:@-
assignvariableop_2_dense_9_bias:@4
"assignvariableop_3_dense_10_kernel:@ .
 assignvariableop_4_dense_10_bias: 4
"assignvariableop_5_dense_11_kernel: .
 assignvariableop_6_dense_11_bias:&
assignvariableop_7_iteration:	 *
 assignvariableop_8_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: A
.assignvariableop_9_adam_m_embedding_embeddings:	�NB
/assignvariableop_10_adam_v_embedding_embeddings:	�N;
)assignvariableop_11_adam_m_dense_9_kernel:@;
)assignvariableop_12_adam_v_dense_9_kernel:@5
'assignvariableop_13_adam_m_dense_9_bias:@5
'assignvariableop_14_adam_v_dense_9_bias:@<
*assignvariableop_15_adam_m_dense_10_kernel:@ <
*assignvariableop_16_adam_v_dense_10_kernel:@ 6
(assignvariableop_17_adam_m_dense_10_bias: 6
(assignvariableop_18_adam_v_dense_10_bias: <
*assignvariableop_19_adam_m_dense_11_kernel: <
*assignvariableop_20_adam_v_dense_11_kernel: 6
(assignvariableop_21_adam_m_dense_11_bias:6
(assignvariableop_22_adam_v_dense_11_bias:%
assignvariableop_23_total_1: %
assignvariableop_24_count_1: #
assignvariableop_25_total: #
assignvariableop_26_count: 
identity_28��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�2MutableHashTable_table_restore/LookupTableImportV2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_9_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_9_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_10_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_10_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_11_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_11_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_iterationIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp assignvariableop_8_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:9RestoreV2:tensors:10*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*&
 _has_manual_control_dependencies(*
_output_shapes
 ^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_adam_m_embedding_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_adam_v_embedding_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp)assignvariableop_11_adam_m_dense_9_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_v_dense_9_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_m_dense_9_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_v_dense_9_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_m_dense_10_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_v_dense_10_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_m_dense_10_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_v_dense_10_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_m_dense_11_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_v_dense_11_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_m_dense_11_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_v_dense_11_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*
_output_shapes
 "#
identity_28Identity_28:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_nameembedding/embeddings:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:/+
)
_user_specified_namedense_10/kernel:-)
'
_user_specified_namedense_10/bias:/+
)
_user_specified_namedense_11/kernel:-)
'
_user_specified_namedense_11/bias:)%
#
_user_specified_name	iteration:-	)
'
_user_specified_namelearning_rate:U
Q
#
_class
loc:@MutableHashTable
*
_user_specified_nameMutableHashTable:;7
5
_user_specified_nameAdam/m/embedding/embeddings:;7
5
_user_specified_nameAdam/v/embedding/embeddings:51
/
_user_specified_nameAdam/m/dense_9/kernel:51
/
_user_specified_nameAdam/v/dense_9/kernel:3/
-
_user_specified_nameAdam/m/dense_9/bias:3/
-
_user_specified_nameAdam/v/dense_9/bias:62
0
_user_specified_nameAdam/m/dense_10/kernel:62
0
_user_specified_nameAdam/v/dense_10/kernel:40
.
_user_specified_nameAdam/m/dense_10/bias:40
.
_user_specified_nameAdam/v/dense_10/bias:62
0
_user_specified_nameAdam/m/dense_11/kernel:62
0
_user_specified_nameAdam/v/dense_11/kernel:40
.
_user_specified_nameAdam/m/dense_11/bias:40
.
_user_specified_nameAdam/v/dense_11/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount
�
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_50008

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�w
�
B__inference_model_3_layer_call_and_return_conditional_losses_49815
review_text_xfY
Utext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_3_string_lookup_3_equal_y3
/text_vectorization_3_string_lookup_3_selectv2_t	"
embedding_49762:	�N
dense_9_49777:@
dense_9_49779:@ 
dense_10_49793:@ 
dense_10_49795:  
dense_11_49809: 
dense_11_49811:
identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�dense_9/StatefulPartitionedCall�!embedding/StatefulPartitionedCall�Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2m
tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
tf.reshape_3/ReshapeReshapereview_text_xf#tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:���������s
 text_vectorization_3/StringLowerStringLowertf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
'text_vectorization_3/StaticRegexReplaceStaticRegexReplace)text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite g
&text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
.text_vectorization_3/StringSplit/StringSplitV2StringSplitV20text_vectorization_3/StaticRegexReplace:output:0/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
4text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
6text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
6text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
.text_vectorization_3/StringSplit/strided_sliceStridedSlice8text_vectorization_3/StringSplit/StringSplitV2:indices:0=text_vectorization_3/StringSplit/strided_slice/stack:output:0?text_vectorization_3/StringSplit/strided_slice/stack_1:output:0?text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
6text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0text_vectorization_3/StringSplit/strided_slice_1StridedSlice6text_vectorization_3/StringSplit/StringSplitV2:shape:0?text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
Wtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::���
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
etext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
`text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
atext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
itext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
ctext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshape[text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
dtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
btext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
^text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ytext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_3/StringSplit/StringSplitV2:values:0Vtext_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
*text_vectorization_3/string_lookup_3/EqualEqual7text_vectorization_3/StringSplit/StringSplitV2:values:0,text_vectorization_3_string_lookup_3_equal_y*
T0*#
_output_shapes
:����������
-text_vectorization_3/string_lookup_3/SelectV2SelectV2.text_vectorization_3/string_lookup_3/Equal:z:0/text_vectorization_3_string_lookup_3_selectv2_tQtext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
-text_vectorization_3/string_lookup_3/IdentityIdentity6text_vectorization_3/string_lookup_3/SelectV2:output:0*
T0	*#
_output_shapes
:���������s
1text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
)text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
8text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_3/RaggedToTensor/Const:output:06text_vectorization_3/string_lookup_3/Identity:output:0:text_vectorization_3/RaggedToTensor/default_value:output:09text_vectorization_3/StringSplit/strided_slice_1:output:07text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
!embedding/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0embedding_49762*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_49761�
*global_average_pooling1d_3/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_49669�
dense_9/StatefulPartitionedCallStatefulPartitionedCall3global_average_pooling1d_3/PartitionedCall:output:0dense_9_49777dense_9_49779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_49776�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0dense_10_49793dense_10_49795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_49792�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_49809dense_11_49811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_49808x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^embedding/StatefulPartitionedCallI^text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2�
Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2Htext_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:W S
'
_output_shapes
:���������
(
_user_specified_namereview_text_xf:,(
&
_user_specified_nametable_handle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49762:%!

_user_specified_name49777:%!

_user_specified_name49779:%!

_user_specified_name49793:%	!

_user_specified_name49795:%
!

_user_specified_name49809:%!

_user_specified_name49811
�

�
C__inference_dense_11_layer_call_and_return_conditional_losses_50068

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�	
&__inference_serve_tf_examples_fn_49553
examplesa
]model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handleb
^model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value	8
4model_3_text_vectorization_3_string_lookup_3_equal_y;
7model_3_text_vectorization_3_string_lookup_3_selectv2_t	;
(model_3_embedding_embedding_lookup_49525:	�N@
.model_3_dense_9_matmul_readvariableop_resource:@=
/model_3_dense_9_biasadd_readvariableop_resource:@A
/model_3_dense_10_matmul_readvariableop_resource:@ >
0model_3_dense_10_biasadd_readvariableop_resource: A
/model_3_dense_11_matmul_readvariableop_resource: >
0model_3_dense_11_biasadd_readvariableop_resource:
identity��'model_3/dense_10/BiasAdd/ReadVariableOp�&model_3/dense_10/MatMul/ReadVariableOp�'model_3/dense_11/BiasAdd/ReadVariableOp�&model_3/dense_11/MatMul/ReadVariableOp�&model_3/dense_9/BiasAdd/ReadVariableOp�%model_3/dense_9/MatMul/ReadVariableOp�"model_3/embedding/embedding_lookup�Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB z
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0* 
valueBBreview_textj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB �
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0*
Tdense
2*'
_output_shapes
:���������*
dense_shapes
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 �
 transform_features_layer_3/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
::��x
.transform_features_layer_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
(transform_features_layer_3/strided_sliceStridedSlice)transform_features_layer_3/Shape:output:07transform_features_layer_3/strided_slice/stack:output:09transform_features_layer_3/strided_slice/stack_1:output:09transform_features_layer_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
"transform_features_layer_3/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0*
_output_shapes
::��z
0transform_features_layer_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2transform_features_layer_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2transform_features_layer_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*transform_features_layer_3/strided_slice_1StridedSlice+transform_features_layer_3/Shape_1:output:09transform_features_layer_3/strided_slice_1/stack:output:0;transform_features_layer_3/strided_slice_1/stack_1:output:0;transform_features_layer_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)transform_features_layer_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
'transform_features_layer_3/zeros/packedPack3transform_features_layer_3/strided_slice_1:output:02transform_features_layer_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
&transform_features_layer_3/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R �
 transform_features_layer_3/zerosFill0transform_features_layer_3/zeros/packed:output:0/transform_features_layer_3/zeros/Const:output:0*
T0	*'
_output_shapes
:����������
1transform_features_layer_3/PlaceholderWithDefaultPlaceholderWithDefault)transform_features_layer_3/zeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
*transform_features_layer_3/PartitionedCallPartitionedCall:transform_features_layer_3/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:0*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_49420u
"model_3/tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model_3/tf.reshape_3/ReshapeReshape3transform_features_layer_3/PartitionedCall:output:1+model_3/tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
(model_3/text_vectorization_3/StringLowerStringLower%model_3/tf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
/model_3/text_vectorization_3/StaticRegexReplaceStaticRegexReplace1model_3/text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite o
.model_3/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
6model_3/text_vectorization_3/StringSplit/StringSplitV2StringSplitV28model_3/text_vectorization_3/StaticRegexReplace:output:07model_3/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
<model_3/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6model_3/text_vectorization_3/StringSplit/strided_sliceStridedSlice@model_3/text_vectorization_3/StringSplit/StringSplitV2:indices:0Emodel_3/text_vectorization_3/StringSplit/strided_slice/stack:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
>model_3/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8model_3/text_vectorization_3/StringSplit/strided_slice_1StridedSlice>model_3/text_vectorization_3/StringSplit/StringSplitV2:shape:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_model_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::���
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
mmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
qmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
lmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
jmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2LookupTableFindV2]model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handle?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:0^model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
2model_3/text_vectorization_3/string_lookup_3/EqualEqual?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:04model_3_text_vectorization_3_string_lookup_3_equal_y*
T0*#
_output_shapes
:����������
5model_3/text_vectorization_3/string_lookup_3/SelectV2SelectV26model_3/text_vectorization_3/string_lookup_3/Equal:z:07model_3_text_vectorization_3_string_lookup_3_selectv2_tYmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
5model_3/text_vectorization_3/string_lookup_3/IdentityIdentity>model_3/text_vectorization_3/string_lookup_3/SelectV2:output:0*
T0	*#
_output_shapes
:���������{
9model_3/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
1model_3/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
@model_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_3/text_vectorization_3/RaggedToTensor/Const:output:0>model_3/text_vectorization_3/string_lookup_3/Identity:output:0Bmodel_3/text_vectorization_3/RaggedToTensor/default_value:output:0Amodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"model_3/embedding/embedding_lookupResourceGather(model_3_embedding_embedding_lookup_49525Imodel_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_3/embedding/embedding_lookup/49525*+
_output_shapes
:���������d*
dtype0�
+model_3/embedding/embedding_lookup/IdentityIdentity+model_3/embedding/embedding_lookup:output:0*
T0*+
_output_shapes
:���������d{
9model_3/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_3/global_average_pooling1d_3/MeanMean4model_3/embedding/embedding_lookup/Identity:output:0Bmodel_3/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
%model_3/dense_9/MatMul/ReadVariableOpReadVariableOp.model_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_3/dense_9/MatMulMatMul0model_3/global_average_pooling1d_3/Mean:output:0-model_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_3/dense_9/BiasAddBiasAdd model_3/dense_9/MatMul:product:0.model_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_3/dense_9/ReluRelu model_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_10/MatMul/ReadVariableOpReadVariableOp/model_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_3/dense_10/MatMulMatMul"model_3/dense_9/Relu:activations:0.model_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_10/BiasAddBiasAdd!model_3/dense_10/MatMul:product:0/model_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_3/dense_10/ReluRelu!model_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&model_3/dense_11/MatMul/ReadVariableOpReadVariableOp/model_3_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_11/MatMulMatMul#model_3/dense_10/Relu:activations:0.model_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_3/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_11/BiasAddBiasAdd!model_3/dense_11/MatMul:product:0/model_3/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_3/dense_11/SigmoidSigmoid!model_3/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentitymodel_3/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^model_3/dense_10/BiasAdd/ReadVariableOp'^model_3/dense_10/MatMul/ReadVariableOp(^model_3/dense_11/BiasAdd/ReadVariableOp'^model_3/dense_11/MatMul/ReadVariableOp'^model_3/dense_9/BiasAdd/ReadVariableOp&^model_3/dense_9/MatMul/ReadVariableOp#^model_3/embedding/embedding_lookupQ^model_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������: : : : : : : : : : : 2R
'model_3/dense_10/BiasAdd/ReadVariableOp'model_3/dense_10/BiasAdd/ReadVariableOp2P
&model_3/dense_10/MatMul/ReadVariableOp&model_3/dense_10/MatMul/ReadVariableOp2R
'model_3/dense_11/BiasAdd/ReadVariableOp'model_3/dense_11/BiasAdd/ReadVariableOp2P
&model_3/dense_11/MatMul/ReadVariableOp&model_3/dense_11/MatMul/ReadVariableOp2P
&model_3/dense_9/BiasAdd/ReadVariableOp&model_3/dense_9/BiasAdd/ReadVariableOp2N
%model_3/dense_9/MatMul/ReadVariableOp%model_3/dense_9/MatMul/ReadVariableOp2H
"model_3/embedding/embedding_lookup"model_3/embedding/embedding_lookup2�
Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:���������
"
_user_specified_name
examples:,(
&
_user_specified_nametable_handle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49525:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
__inference__traced_save_50318
file_prefix>
+read_disablecopyonread_embedding_embeddings:	�N9
'read_1_disablecopyonread_dense_9_kernel:@3
%read_2_disablecopyonread_dense_9_bias:@:
(read_3_disablecopyonread_dense_10_kernel:@ 4
&read_4_disablecopyonread_dense_10_bias: :
(read_5_disablecopyonread_dense_11_kernel: 4
&read_6_disablecopyonread_dense_11_bias:,
"read_7_disablecopyonread_iteration:	 0
&read_8_disablecopyonread_learning_rate: G
4read_9_disablecopyonread_adam_m_embedding_embeddings:	�NH
5read_10_disablecopyonread_adam_v_embedding_embeddings:	�NA
/read_11_disablecopyonread_adam_m_dense_9_kernel:@A
/read_12_disablecopyonread_adam_v_dense_9_kernel:@;
-read_13_disablecopyonread_adam_m_dense_9_bias:@;
-read_14_disablecopyonread_adam_v_dense_9_bias:@B
0read_15_disablecopyonread_adam_m_dense_10_kernel:@ B
0read_16_disablecopyonread_adam_v_dense_10_kernel:@ <
.read_17_disablecopyonread_adam_m_dense_10_bias: <
.read_18_disablecopyonread_adam_v_dense_10_bias: B
0read_19_disablecopyonread_adam_m_dense_11_kernel: B
0read_20_disablecopyonread_adam_v_dense_11_kernel: <
.read_21_disablecopyonread_adam_m_dense_11_bias:<
.read_22_disablecopyonread_adam_v_dense_11_bias:+
!read_23_disablecopyonread_total_1: +
!read_24_disablecopyonread_count_1: )
read_25_disablecopyonread_total: )
read_26_disablecopyonread_count: J
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	
savev2_const_6
identity_55��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�N*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�Nb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�N{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_9_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:@y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_9_bias"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_9_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_3/DisableCopyOnReadDisableCopyOnRead(read_3_disablecopyonread_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp(read_3_disablecopyonread_dense_10_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:@ z
Read_4/DisableCopyOnReadDisableCopyOnRead&read_4_disablecopyonread_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp&read_4_disablecopyonread_dense_10_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_5/DisableCopyOnReadDisableCopyOnRead(read_5_disablecopyonread_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp(read_5_disablecopyonread_dense_11_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes

: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_dense_11_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_7/DisableCopyOnReadDisableCopyOnRead"read_7_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp"read_7_disablecopyonread_iteration^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_8/DisableCopyOnReadDisableCopyOnRead&read_8_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp&read_8_disablecopyonread_learning_rate^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_adam_m_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_adam_m_embedding_embeddings^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�N*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�Nf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	�N�
Read_10/DisableCopyOnReadDisableCopyOnRead5read_10_disablecopyonread_adam_v_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp5read_10_disablecopyonread_adam_v_embedding_embeddings^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�N*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�Nf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�N�
Read_11/DisableCopyOnReadDisableCopyOnRead/read_11_disablecopyonread_adam_m_dense_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp/read_11_disablecopyonread_adam_m_dense_9_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_adam_v_dense_9_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_adam_v_dense_9_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_13/DisableCopyOnReadDisableCopyOnRead-read_13_disablecopyonread_adam_m_dense_9_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp-read_13_disablecopyonread_adam_m_dense_9_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_adam_v_dense_9_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_adam_v_dense_9_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_15/DisableCopyOnReadDisableCopyOnRead0read_15_disablecopyonread_adam_m_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp0read_15_disablecopyonread_adam_m_dense_10_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_16/DisableCopyOnReadDisableCopyOnRead0read_16_disablecopyonread_adam_v_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp0read_16_disablecopyonread_adam_v_dense_10_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_adam_m_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_adam_m_dense_10_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead.read_18_disablecopyonread_adam_v_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp.read_18_disablecopyonread_adam_v_dense_10_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_m_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_m_dense_11_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_20/DisableCopyOnReadDisableCopyOnRead0read_20_disablecopyonread_adam_v_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp0read_20_disablecopyonread_adam_v_dense_11_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_m_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_m_dense_11_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_adam_v_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_adam_v_dense_11_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_23/DisableCopyOnReadDisableCopyOnRead!read_23_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp!read_23_disablecopyonread_total_1^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_24/DisableCopyOnReadDisableCopyOnRead!read_24_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp!read_24_disablecopyonread_count_1^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_25/DisableCopyOnReadDisableCopyOnReadread_25_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOpread_25_disablecopyonread_total^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_26/DisableCopyOnReadDisableCopyOnReadread_26_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOpread_26_disablecopyonread_count^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0savev2_const_6"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *,
dtypes"
 2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_54Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_55IdentityIdentity_54:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : ::: 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:40
.
_user_specified_nameembedding/embeddings:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:/+
)
_user_specified_namedense_10/kernel:-)
'
_user_specified_namedense_10/bias:/+
)
_user_specified_namedense_11/kernel:-)
'
_user_specified_namedense_11/bias:)%
#
_user_specified_name	iteration:-	)
'
_user_specified_namelearning_rate:;
7
5
_user_specified_nameAdam/m/embedding/embeddings:;7
5
_user_specified_nameAdam/v/embedding/embeddings:51
/
_user_specified_nameAdam/m/dense_9/kernel:51
/
_user_specified_nameAdam/v/dense_9/kernel:3/
-
_user_specified_nameAdam/m/dense_9/bias:3/
-
_user_specified_nameAdam/v/dense_9/bias:62
0
_user_specified_nameAdam/m/dense_10/kernel:62
0
_user_specified_nameAdam/v/dense_10/kernel:40
.
_user_specified_nameAdam/m/dense_10/bias:40
.
_user_specified_nameAdam/v/dense_10/bias:62
0
_user_specified_nameAdam/m/dense_11/kernel:62
0
_user_specified_nameAdam/v/dense_11/kernel:40
.
_user_specified_nameAdam/m/dense_11/bias:40
.
_user_specified_nameAdam/v/dense_11/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount:yu

_output_shapes
:
Y
_user_specified_nameA?MutableHashTable_lookup_table_export_values/LookupTableExportV2:yu

_output_shapes
:
Y
_user_specified_nameA?MutableHashTable_lookup_table_export_values/LookupTableExportV2:?;

_output_shapes
: 
!
_user_specified_name	Const_6
�
]
#__inference_signature_wrapper_49428

inputs	
inputs_1
identity	

identity_1�
PartitionedCallPartitionedCallinputsinputs_1*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_49420`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:���������b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs_1
�
:
__inference__creator_50072
identity��
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name37413*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: /
NoOpNoOp^hash_table*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
'__inference_dense_9_layer_call_fn_50017

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_49776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:%!

_user_specified_name50011:%!

_user_specified_name50013
�
[
:__inference_transform_features_layer_3_layer_call_fn_49700
review_text
identity�
PartitionedCallPartitionedCallreview_text*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_49695`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:T P
'
_output_shapes
:���������
%
_user_specified_namereview_text
�
q
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_49669

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�F
�
__inference_adapt_step_41100
iterator9
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	��IteratorGetNext�(None_lookup_table_find/LookupTableFindV2�,None_lookup_table_insert/LookupTableInsertV2�
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:���������*"
output_shapes
:���������*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:����������
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::���
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
TStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0]StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountWStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:���������:���������:���������*
out_idx0	�
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:�
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:,(
&
_user_specified_nametable_handle:

_output_shapes
: 
�
,
__inference__destroyer_50095
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�

�
B__inference_dense_9_layer_call_and_return_conditional_losses_49776

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ό
�	
 __inference__wrapped_model_49663
review_text_xfa
]model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handleb
^model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value	8
4model_3_text_vectorization_3_string_lookup_3_equal_y;
7model_3_text_vectorization_3_string_lookup_3_selectv2_t	;
(model_3_embedding_embedding_lookup_49635:	�N@
.model_3_dense_9_matmul_readvariableop_resource:@=
/model_3_dense_9_biasadd_readvariableop_resource:@A
/model_3_dense_10_matmul_readvariableop_resource:@ >
0model_3_dense_10_biasadd_readvariableop_resource: A
/model_3_dense_11_matmul_readvariableop_resource: >
0model_3_dense_11_biasadd_readvariableop_resource:
identity��'model_3/dense_10/BiasAdd/ReadVariableOp�&model_3/dense_10/MatMul/ReadVariableOp�'model_3/dense_11/BiasAdd/ReadVariableOp�&model_3/dense_11/MatMul/ReadVariableOp�&model_3/dense_9/BiasAdd/ReadVariableOp�%model_3/dense_9/MatMul/ReadVariableOp�"model_3/embedding/embedding_lookup�Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2u
"model_3/tf.reshape_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
model_3/tf.reshape_3/ReshapeReshapereview_text_xf+model_3/tf.reshape_3/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
(model_3/text_vectorization_3/StringLowerStringLower%model_3/tf.reshape_3/Reshape:output:0*#
_output_shapes
:����������
/model_3/text_vectorization_3/StaticRegexReplaceStaticRegexReplace1model_3/text_vectorization_3/StringLower:output:0*#
_output_shapes
:���������*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite o
.model_3/text_vectorization_3/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B �
6model_3/text_vectorization_3/StringSplit/StringSplitV2StringSplitV28model_3/text_vectorization_3/StaticRegexReplace:output:07model_3/text_vectorization_3/StringSplit/Const:output:0*<
_output_shapes*
(:���������:���������:�
<model_3/text_vectorization_3/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
>model_3/text_vectorization_3/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
6model_3/text_vectorization_3/StringSplit/strided_sliceStridedSlice@model_3/text_vectorization_3/StringSplit/StringSplitV2:indices:0Emodel_3/text_vectorization_3/StringSplit/strided_slice/stack:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_1:output:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
>model_3/text_vectorization_3/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
@model_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
8model_3/text_vectorization_3/StringSplit/strided_slice_1StridedSlice>model_3/text_vectorization_3/StringSplit/StringSplitV2:shape:0Gmodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_1:output:0Imodel_3/text_vectorization_3/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask�
_model_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:����������
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
::���
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: �
mmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: �
hmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: �
imodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: �
gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: �
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 �
qmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
kmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ReshapeReshapecmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0zmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape/shape:output:0*
T0*#
_output_shapes
:����������
lmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincounttmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Reshape:output:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:����������
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:����������
jmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R �
fmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
amodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_3/text_vectorization_3/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:����������
Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2LookupTableFindV2]model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_table_handle?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:0^model_3_text_vectorization_3_string_lookup_3_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
2model_3/text_vectorization_3/string_lookup_3/EqualEqual?model_3/text_vectorization_3/StringSplit/StringSplitV2:values:04model_3_text_vectorization_3_string_lookup_3_equal_y*
T0*#
_output_shapes
:����������
5model_3/text_vectorization_3/string_lookup_3/SelectV2SelectV26model_3/text_vectorization_3/string_lookup_3/Equal:z:07model_3_text_vectorization_3_string_lookup_3_selectv2_tYmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
5model_3/text_vectorization_3/string_lookup_3/IdentityIdentity>model_3/text_vectorization_3/string_lookup_3/SelectV2:output:0*
T0	*#
_output_shapes
:���������{
9model_3/text_vectorization_3/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R �
1model_3/text_vectorization_3/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"��������d       �
@model_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_3/text_vectorization_3/RaggedToTensor/Const:output:0>model_3/text_vectorization_3/string_lookup_3/Identity:output:0Bmodel_3/text_vectorization_3/RaggedToTensor/default_value:output:0Amodel_3/text_vectorization_3/StringSplit/strided_slice_1:output:0?model_3/text_vectorization_3/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:���������d*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS�
"model_3/embedding/embedding_lookupResourceGather(model_3_embedding_embedding_lookup_49635Imodel_3/text_vectorization_3/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*;
_class1
/-loc:@model_3/embedding/embedding_lookup/49635*+
_output_shapes
:���������d*
dtype0�
+model_3/embedding/embedding_lookup/IdentityIdentity+model_3/embedding/embedding_lookup:output:0*
T0*+
_output_shapes
:���������d{
9model_3/global_average_pooling1d_3/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
'model_3/global_average_pooling1d_3/MeanMean4model_3/embedding/embedding_lookup/Identity:output:0Bmodel_3/global_average_pooling1d_3/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
%model_3/dense_9/MatMul/ReadVariableOpReadVariableOp.model_3_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_3/dense_9/MatMulMatMul0model_3/global_average_pooling1d_3/Mean:output:0-model_3/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_3/dense_9/BiasAddBiasAdd model_3/dense_9/MatMul:product:0.model_3/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@p
model_3/dense_9/ReluRelu model_3/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_3/dense_10/MatMul/ReadVariableOpReadVariableOp/model_3_dense_10_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_3/dense_10/MatMulMatMul"model_3/dense_9/Relu:activations:0.model_3/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_3/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_3/dense_10/BiasAddBiasAdd!model_3/dense_10/MatMul:product:0/model_3/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_3/dense_10/ReluRelu!model_3/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&model_3/dense_11/MatMul/ReadVariableOpReadVariableOp/model_3_dense_11_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_3/dense_11/MatMulMatMul#model_3/dense_10/Relu:activations:0.model_3/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_3/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_3/dense_11/BiasAddBiasAdd!model_3/dense_11/MatMul:product:0/model_3/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_3/dense_11/SigmoidSigmoid!model_3/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentitymodel_3/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp(^model_3/dense_10/BiasAdd/ReadVariableOp'^model_3/dense_10/MatMul/ReadVariableOp(^model_3/dense_11/BiasAdd/ReadVariableOp'^model_3/dense_11/MatMul/ReadVariableOp'^model_3/dense_9/BiasAdd/ReadVariableOp&^model_3/dense_9/MatMul/ReadVariableOp#^model_3/embedding/embedding_lookupQ^model_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 2R
'model_3/dense_10/BiasAdd/ReadVariableOp'model_3/dense_10/BiasAdd/ReadVariableOp2P
&model_3/dense_10/MatMul/ReadVariableOp&model_3/dense_10/MatMul/ReadVariableOp2R
'model_3/dense_11/BiasAdd/ReadVariableOp'model_3/dense_11/BiasAdd/ReadVariableOp2P
&model_3/dense_11/MatMul/ReadVariableOp&model_3/dense_11/MatMul/ReadVariableOp2P
&model_3/dense_9/BiasAdd/ReadVariableOp&model_3/dense_9/BiasAdd/ReadVariableOp2N
%model_3/dense_9/MatMul/ReadVariableOp%model_3/dense_9/MatMul/ReadVariableOp2H
"model_3/embedding/embedding_lookup"model_3/embedding/embedding_lookup2�
Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2Pmodel_3/text_vectorization_3/string_lookup_3/hash_table_Lookup/LookupTableFindV2:W S
'
_output_shapes
:���������
(
_user_specified_namereview_text_xf:,(
&
_user_specified_nametable_handle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49635:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
(__inference_dense_11_layer_call_fn_50057

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_11_layer_call_and_return_conditional_losses_49808o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:%!

_user_specified_name50051:%!

_user_specified_name50053
�
�
'__inference_model_3_layer_call_fn_49916
review_text_xf
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	�N
	unknown_4:@
	unknown_5:@
	unknown_6:@ 
	unknown_7: 
	unknown_8: 
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallreview_text_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_49815o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������
(
_user_specified_namereview_text_xf:%!

_user_specified_name49892:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_user_specified_name49900:%!

_user_specified_name49902:%!

_user_specified_name49904:%!

_user_specified_name49906:%	!

_user_specified_name49908:%
!

_user_specified_name49910:%!

_user_specified_name49912
�

�
C__inference_dense_10_layer_call_and_return_conditional_losses_50048

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
R
__inference_pruned_49420

inputs	
inputs_1
identity	

identity_1Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:���������\
IdentityIdentityinputs_copy:output:0*
T0	*'
_output_shapes
:���������U
inputs_1_copyIdentityinputs_1*
T0*'
_output_shapes
:���������[
StringLowerStringLowerinputs_1_copy:output:0*'
_output_shapes
:���������^

Identity_1IdentityStringLower:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
�
__inference__initializer_500798
4key_value_init37412_lookuptableimportv2_table_handle0
,key_value_init37412_lookuptableimportv2_keys2
.key_value_init37412_lookuptableimportv2_values	
identity��'key_value_init37412/LookupTableImportV2�
'key_value_init37412/LookupTableImportV2LookupTableImportV24key_value_init37412_lookuptableimportv2_table_handle,key_value_init37412_lookuptableimportv2_keys.key_value_init37412_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: L
NoOpNoOp(^key_value_init37412/LookupTableImportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :�:�2R
'key_value_init37412/LookupTableImportV2'key_value_init37412/LookupTableImportV2:, (
&
_user_specified_nametable_handle:A=

_output_shapes	
:�

_user_specified_namekeys:C?

_output_shapes	
:�
 
_user_specified_namevalues
�
V
:__inference_global_average_pooling1d_3_layer_call_fn_50002

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_49669i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�

�
C__inference_dense_11_layer_call_and_return_conditional_losses_49808

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
C__inference_dense_10_layer_call_and_return_conditional_losses_49792

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
__inference_restore_fn_50120
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity��2MutableHashTable_table_restore/LookupTableImportV2�
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: W
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1:,(
&
_user_specified_nametable_handle
�
�
__inference_save_fn_50113
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	��?MutableHashTable_lookup_table_export_values/LookupTableExportV2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:d
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key:,(
&
_user_specified_nametable_handle
�
F
__inference__creator_50087
identity: ��MutableHashTable�
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_34139*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 5
NoOpNoOp^MutableHashTable*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
�
,
__inference__destroyer_50083
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
(__inference_dense_10_layer_call_fn_50037

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_49792o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:%!

_user_specified_name50031:%!

_user_specified_name50033
�
v
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_49695
review_text
identityN
ShapeShapereview_text*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
Shape_1Shapereview_text*
T0*
_output_shapes
::��_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:����������
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:���������*
dtype0	*
shape:����������
PartitionedCallPartitionedCallPlaceholderWithDefault:output:0review_text*
Tin
2	*
Tout
2	*:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference_pruned_49420`
IdentityIdentityPartitionedCall:output:1*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:T P
'
_output_shapes
:���������
%
_user_specified_namereview_text
�
~
)__inference_embedding_layer_call_fn_49989

inputs	
unknown:	�N
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_49761s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:%!

_user_specified_name49985
�
�
D__inference_embedding_layer_call_and_return_conditional_losses_49761

inputs	)
embedding_lookup_49756:	�N
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_49756inputs*
Tindices0	*)
_class
loc:@embedding_lookup/49756*+
_output_shapes
:���������d*
dtype0v
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_output_shapes
:���������du
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*+
_output_shapes
:���������d5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:%!

_user_specified_name49756
�
.
__inference__initializer_50091
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�

�
B__inference_dense_9_layer_call_and_return_conditional_losses_50028

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
9
examples-
serving_default_examples:0���������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
		tft_layer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
P
	keras_api
_lookup_layer
_adapt_function"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
$B _saved_model_loader_tracked_dict"
_tf_keras_model
Q
1
*2
+3
24
35
:6
;7"
trackable_list_wrapper
Q
0
*1
+2
23
34
:5
;6"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_0
Itrace_12�
'__inference_model_3_layer_call_fn_49916
'__inference_model_3_layer_call_fn_49943�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0zItrace_1
�
Jtrace_0
Ktrace_12�
B__inference_model_3_layer_call_and_return_conditional_losses_49815
B__inference_model_3_layer_call_and_return_conditional_losses_49889�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zJtrace_0zKtrace_1
�
L	capture_1
M	capture_2
N	capture_3B�
 __inference__wrapped_model_49663review_text_xf"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zL	capture_1zM	capture_2zN	capture_3
�
O
_variables
P_iterations
Q_learning_rate
R_index_dict
S
_momentums
T_velocities
U_update_step_xla"
experimentalOptimizer
,
Vserving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
L
W	keras_api
Xlookup_table
Ytoken_counts"
_tf_keras_layer
�
Ztrace_02�
__inference_adapt_step_41100�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zZtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
`trace_02�
)__inference_embedding_layer_call_fn_49989�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z`trace_0
�
atrace_02�
D__inference_embedding_layer_call_and_return_conditional_losses_49997�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zatrace_0
':%	�N2embedding/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
gtrace_02�
:__inference_global_average_pooling1d_3_layer_call_fn_50002�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0
�
htrace_02�
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_50008�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zhtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_02�
'__inference_dense_9_layer_call_fn_50017�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0
�
otrace_02�
B__inference_dense_9_layer_call_and_return_conditional_losses_50028�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zotrace_0
 :@2dense_9/kernel
:@2dense_9/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
utrace_02�
(__inference_dense_10_layer_call_fn_50037�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zutrace_0
�
vtrace_02�
C__inference_dense_10_layer_call_and_return_conditional_losses_50048�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zvtrace_0
!:@ 2dense_10/kernel
: 2dense_10/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
|trace_02�
(__inference_dense_11_layer_call_fn_50057�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z|trace_0
�
}trace_02�
C__inference_dense_11_layer_call_and_return_conditional_losses_50068�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
!: 2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
:__inference_transform_features_layer_3_layer_call_fn_49700�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_49695�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	_imported
�_wrapped_function
�_structured_inputs
�_structured_outputs
�_output_to_inputs_map"
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
L	capture_1
M	capture_2
N	capture_3B�
'__inference_model_3_layer_call_fn_49916review_text_xf"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zL	capture_1zM	capture_2zN	capture_3
�
L	capture_1
M	capture_2
N	capture_3B�
'__inference_model_3_layer_call_fn_49943review_text_xf"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zL	capture_1zM	capture_2zN	capture_3
�
L	capture_1
M	capture_2
N	capture_3B�
B__inference_model_3_layer_call_and_return_conditional_losses_49815review_text_xf"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zL	capture_1zM	capture_2zN	capture_3
�
L	capture_1
M	capture_2
N	capture_3B�
B__inference_model_3_layer_call_and_return_conditional_losses_49889review_text_xf"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zL	capture_1zM	capture_2zN	capture_3
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
�
P0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
X
�0
�1
�2
�3
�4
�5
�6"
trackable_list_wrapper
X
�0
�1
�2
�3
�4
�5
�6"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
L	capture_1
M	capture_2
N	capture_3B�
#__inference_signature_wrapper_49581examples"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zL	capture_1zM	capture_2zN	capture_3
"
_generic_user_object
j
�_initializer
�_create_resource
�_initialize
�_destroy_resourceR jtf.StaticHashTable
T
�_create_resource
�_initialize
�_destroy_resourceR Z
table��
�
�	capture_1B�
__inference_adapt_step_41100iterator"�
���
FullArgSpec
args�

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_embedding_layer_call_fn_49989inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_embedding_layer_call_and_return_conditional_losses_49997inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_global_average_pooling1d_3_layer_call_fn_50002inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_50008inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_9_layer_call_fn_50017inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_9_layer_call_and_return_conditional_losses_50028inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_10_layer_call_fn_50037inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_10_layer_call_and_return_conditional_losses_50048inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_11_layer_call_fn_50057inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_11_layer_call_and_return_conditional_losses_50068inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
:__inference_transform_features_layer_3_layer_call_fn_49700review_text"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_49695review_text"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�created_variables
�	resources
�trackable_objects
�initializers
�assets
�
signatures
$�_self_saveable_object_factories
�transform_fn"
_generic_user_object
0B.
__inference_pruned_49420inputsinputs_1
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
,:*	�N2Adam/m/embedding/embeddings
,:*	�N2Adam/v/embedding/embeddings
%:#@2Adam/m/dense_9/kernel
%:#@2Adam/v/dense_9/kernel
:@2Adam/m/dense_9/bias
:@2Adam/v/dense_9/bias
&:$@ 2Adam/m/dense_10/kernel
&:$@ 2Adam/v/dense_10/kernel
 : 2Adam/m/dense_10/bias
 : 2Adam/v/dense_10/bias
&:$ 2Adam/m/dense_11/kernel
&:$ 2Adam/v/dense_11/kernel
 :2Adam/m/dense_11/bias
 :2Adam/v/dense_11/bias
"
_generic_user_object
�
�trace_02�
__inference__creator_50072�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_50079�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_50083�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__creator_50087�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__initializer_50091�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference__destroyer_50095�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
!J	
Const_2jtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
�B�
__inference__creator_50072"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�
�	capture_1
�	capture_2B�
__inference__initializer_50079"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�	capture_1z�	capture_2
�B�
__inference__destroyer_50083"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__creator_50087"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_50091"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_50095"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
#__inference_signature_wrapper_49428inputsinputs_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�B�
__inference_save_fn_50113checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_50120restored_tensors_0restored_tensors_1"�
���
FullArgSpec7
args/�,
jrestored_tensors_0
jrestored_tensors_1
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	�	?
__inference__creator_50072!�

� 
� "�
unknown ?
__inference__creator_50087!�

� 
� "�
unknown A
__inference__destroyer_50083!�

� 
� "�
unknown A
__inference__destroyer_50095!�

� 
� "�
unknown J
__inference__initializer_50079(X���

� 
� "�
unknown C
__inference__initializer_50091!�

� 
� "�
unknown �
 __inference__wrapped_model_49663{XLMN*+23:;7�4
-�*
(�%
review_text_xf���������
� "3�0
.
dense_11"�
dense_11���������j
__inference_adapt_step_41100JY�?�<
5�2
0�-�
����������IteratorSpec 
� "
 �
C__inference_dense_10_layer_call_and_return_conditional_losses_50048c23/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
(__inference_dense_10_layer_call_fn_50037X23/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
C__inference_dense_11_layer_call_and_return_conditional_losses_50068c:;/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
(__inference_dense_11_layer_call_fn_50057X:;/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
B__inference_dense_9_layer_call_and_return_conditional_losses_50028c*+/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������@
� �
'__inference_dense_9_layer_call_fn_50017X*+/�,
%�"
 �
inputs���������
� "!�
unknown���������@�
D__inference_embedding_layer_call_and_return_conditional_losses_49997f/�,
%�"
 �
inputs���������d	
� "0�-
&�#
tensor_0���������d
� �
)__inference_embedding_layer_call_fn_49989[/�,
%�"
 �
inputs���������d	
� "%�"
unknown���������d�
U__inference_global_average_pooling1d_3_layer_call_and_return_conditional_losses_50008�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
:__inference_global_average_pooling1d_3_layer_call_fn_50002wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
B__inference_model_3_layer_call_and_return_conditional_losses_49815|XLMN*+23:;?�<
5�2
(�%
review_text_xf���������
p

 
� ",�)
"�
tensor_0���������
� �
B__inference_model_3_layer_call_and_return_conditional_losses_49889|XLMN*+23:;?�<
5�2
(�%
review_text_xf���������
p 

 
� ",�)
"�
tensor_0���������
� �
'__inference_model_3_layer_call_fn_49916qXLMN*+23:;?�<
5�2
(�%
review_text_xf���������
p

 
� "!�
unknown����������
'__inference_model_3_layer_call_fn_49943qXLMN*+23:;?�<
5�2
(�%
review_text_xf���������
p 

 
� "!�
unknown����������
__inference_pruned_49420����
���
���
C
recommended_ind0�-
inputs_recommended_ind���������	
;
review_text,�)
inputs_review_text���������
� "���
B
recommended_ind_xf,�)
recommended_ind_xf���������	
:
review_text_xf(�%
review_text_xf����������
__inference_restore_fn_50120bYK�H
A�>
�
restored_tensors_0
�
restored_tensors_1	
� "�
unknown �
__inference_save_fn_50113�Y&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor	�
#__inference_signature_wrapper_49428�i�f
� 
_�\
*
inputs �
inputs���������	
.
inputs_1"�
inputs_1���������"���
B
recommended_ind_xf,�)
recommended_ind_xf���������	
:
review_text_xf(�%
review_text_xf����������
#__inference_signature_wrapper_49581}XLMN*+23:;9�6
� 
/�,
*
examples�
examples���������"3�0
.
output_0"�
output_0����������
U__inference_transform_features_layer_3_layer_call_and_return_conditional_losses_49695�H�E
>�;
9�6
4
review_text%�"
review_text���������
� "R�O
H�E
C
review_text_xf1�.
tensor_0_review_text_xf���������
� �
:__inference_transform_features_layer_3_layer_call_fn_49700�H�E
>�;
9�6
4
review_text%�"
review_text���������
� "?�<
:
review_text_xf(�%
review_text_xf���������
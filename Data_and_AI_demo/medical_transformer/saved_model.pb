��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��
�
layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelayer_normalization/gamma
�
-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namelayer_normalization/beta
�
,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes	
:�*
dtype0
|
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*
shared_nameconv1d/kernel
u
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*$
_output_shapes
:��*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelayer_normalization_1/gamma
�
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_normalization_1/beta
�
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv1d_1/kernel
y
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*$
_output_shapes
:��*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelayer_normalization_2/gamma
�
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_normalization_2/beta
�
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes	
:�*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *2
shared_name#!multi_head_attention/query/kernel
�
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*#
_output_shapes
:� *
dtype0
�
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!multi_head_attention/query/bias
�
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

: *
dtype0
�
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *0
shared_name!multi_head_attention/key/kernel
�
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*#
_output_shapes
:� *
dtype0
�
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_namemulti_head_attention/key/bias
�
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

: *
dtype0
�
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *2
shared_name#!multi_head_attention/value/kernel
�
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*#
_output_shapes
:� *
dtype0
�
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!multi_head_attention/value/bias
�
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

: *
dtype0
�
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*=
shared_name.,multi_head_attention/attention_output/kernel
�
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*#
_output_shapes
: �*
dtype0
�
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*multi_head_attention/attention_output/bias
�
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes	
:�*
dtype0
�
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *4
shared_name%#multi_head_attention_1/query/kernel
�
7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*#
_output_shapes
:� *
dtype0
�
!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!multi_head_attention_1/query/bias
�
5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

: *
dtype0
�
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *2
shared_name#!multi_head_attention_1/key/kernel
�
5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*#
_output_shapes
:� *
dtype0
�
multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!multi_head_attention_1/key/bias
�
3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

: *
dtype0
�
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *4
shared_name%#multi_head_attention_1/value/kernel
�
7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*#
_output_shapes
:� *
dtype0
�
!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!multi_head_attention_1/value/bias
�
5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

: *
dtype0
�
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*?
shared_name0.multi_head_attention_1/attention_output/kernel
�
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*#
_output_shapes
: �*
dtype0
�
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,multi_head_attention_1/attention_output/bias
�
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes	
:�*
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
z
correct_predictionsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namecorrect_predictions
s
'correct_predictions/Read/ReadVariableOpReadVariableOpcorrect_predictions*
_output_shapes
: *
dtype0
v
total_predictionsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nametotal_predictions
o
%total_predictions/Read/ReadVariableOpReadVariableOptotal_predictions*
_output_shapes
: *
dtype0
n
accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator
g
accumulator/Read/ReadVariableOpReadVariableOpaccumulator*
_output_shapes
:*
dtype0
r
accumulator_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_1
k
!accumulator_1/Read/ReadVariableOpReadVariableOpaccumulator_1*
_output_shapes
:*
dtype0
r
accumulator_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_2
k
!accumulator_2/Read/ReadVariableOpReadVariableOpaccumulator_2*
_output_shapes
:*
dtype0
r
accumulator_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_3
k
!accumulator_3/Read/ReadVariableOpReadVariableOpaccumulator_3*
_output_shapes
:*
dtype0
r
accumulator_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_4
k
!accumulator_4/Read/ReadVariableOpReadVariableOpaccumulator_4*
_output_shapes
:*
dtype0
r
accumulator_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_5
k
!accumulator_5/Read/ReadVariableOpReadVariableOpaccumulator_5*
_output_shapes
:*
dtype0
r
accumulator_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_6
k
!accumulator_6/Read/ReadVariableOpReadVariableOpaccumulator_6*
_output_shapes
:*
dtype0
r
accumulator_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_7
k
!accumulator_7/Read/ReadVariableOpReadVariableOpaccumulator_7*
_output_shapes
:*
dtype0
r
accumulator_8VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_8
k
!accumulator_8/Read/ReadVariableOpReadVariableOpaccumulator_8*
_output_shapes
:*
dtype0
r
accumulator_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_9
k
!accumulator_9/Read/ReadVariableOpReadVariableOpaccumulator_9*
_output_shapes
:*
dtype0
t
accumulator_10VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_10
m
"accumulator_10/Read/ReadVariableOpReadVariableOpaccumulator_10*
_output_shapes
:*
dtype0
t
accumulator_11VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_11
m
"accumulator_11/Read/ReadVariableOpReadVariableOpaccumulator_11*
_output_shapes
:*
dtype0
t
accumulator_12VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_12
m
"accumulator_12/Read/ReadVariableOpReadVariableOpaccumulator_12*
_output_shapes
:*
dtype0
t
accumulator_13VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_13
m
"accumulator_13/Read/ReadVariableOpReadVariableOpaccumulator_13*
_output_shapes
:*
dtype0
t
accumulator_14VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_14
m
"accumulator_14/Read/ReadVariableOpReadVariableOpaccumulator_14*
_output_shapes
:*
dtype0
t
accumulator_15VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_15
m
"accumulator_15/Read/ReadVariableOpReadVariableOpaccumulator_15*
_output_shapes
:*
dtype0
t
accumulator_16VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_16
m
"accumulator_16/Read/ReadVariableOpReadVariableOpaccumulator_16*
_output_shapes
:*
dtype0
t
accumulator_17VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameaccumulator_17
m
"accumulator_17/Read/ReadVariableOpReadVariableOpaccumulator_17*
_output_shapes
:*
dtype0
�
 Adam/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/layer_normalization/gamma/m
�
4Adam/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/layer_normalization/gamma/m*
_output_shapes	
:�*
dtype0
�
Adam/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!Adam/layer_normalization/beta/m
�
3Adam/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/layer_normalization/beta/m*
_output_shapes	
:�*
dtype0
�
Adam/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*%
shared_nameAdam/conv1d/kernel/m
�
(Adam/conv1d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/m*$
_output_shapes
:��*
dtype0
}
Adam/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/conv1d/bias/m
v
&Adam/conv1d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/layer_normalization_1/gamma/m
�
6Adam/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_1/gamma/m*
_output_shapes	
:�*
dtype0
�
!Adam/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/layer_normalization_1/beta/m
�
5Adam/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_1/beta/m*
_output_shapes	
:�*
dtype0
�
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv1d_1/kernel/m
�
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*$
_output_shapes
:��*
dtype0
�
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv1d_1/bias/m
z
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/layer_normalization_2/gamma/m
�
6Adam/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_2/gamma/m*
_output_shapes	
:�*
dtype0
�
!Adam/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/layer_normalization_2/beta/m
�
5Adam/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_2/beta/m*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	�*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
�
(Adam/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *9
shared_name*(Adam/multi_head_attention/query/kernel/m
�
<Adam/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/query/kernel/m*#
_output_shapes
:� *
dtype0
�
&Adam/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/multi_head_attention/query/bias/m
�
:Adam/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/query/bias/m*
_output_shapes

: *
dtype0
�
&Adam/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *7
shared_name(&Adam/multi_head_attention/key/kernel/m
�
:Adam/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/key/kernel/m*#
_output_shapes
:� *
dtype0
�
$Adam/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *5
shared_name&$Adam/multi_head_attention/key/bias/m
�
8Adam/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp$Adam/multi_head_attention/key/bias/m*
_output_shapes

: *
dtype0
�
(Adam/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *9
shared_name*(Adam/multi_head_attention/value/kernel/m
�
<Adam/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/value/kernel/m*#
_output_shapes
:� *
dtype0
�
&Adam/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/multi_head_attention/value/bias/m
�
:Adam/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/value/bias/m*
_output_shapes

: *
dtype0
�
3Adam/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*D
shared_name53Adam/multi_head_attention/attention_output/kernel/m
�
GAdam/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention/attention_output/kernel/m*#
_output_shapes
: �*
dtype0
�
1Adam/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31Adam/multi_head_attention/attention_output/bias/m
�
EAdam/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOp1Adam/multi_head_attention/attention_output/bias/m*
_output_shapes	
:�*
dtype0
�
*Adam/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *;
shared_name,*Adam/multi_head_attention_1/query/kernel/m
�
>Adam/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/query/kernel/m*#
_output_shapes
:� *
dtype0
�
(Adam/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/multi_head_attention_1/query/bias/m
�
<Adam/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/query/bias/m*
_output_shapes

: *
dtype0
�
(Adam/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *9
shared_name*(Adam/multi_head_attention_1/key/kernel/m
�
<Adam/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/key/kernel/m*#
_output_shapes
:� *
dtype0
�
&Adam/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/multi_head_attention_1/key/bias/m
�
:Adam/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention_1/key/bias/m*
_output_shapes

: *
dtype0
�
*Adam/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *;
shared_name,*Adam/multi_head_attention_1/value/kernel/m
�
>Adam/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/value/kernel/m*#
_output_shapes
:� *
dtype0
�
(Adam/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/multi_head_attention_1/value/bias/m
�
<Adam/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/value/bias/m*
_output_shapes

: *
dtype0
�
5Adam/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*F
shared_name75Adam/multi_head_attention_1/attention_output/kernel/m
�
IAdam/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp5Adam/multi_head_attention_1/attention_output/kernel/m*#
_output_shapes
: �*
dtype0
�
3Adam/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53Adam/multi_head_attention_1/attention_output/bias/m
�
GAdam/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention_1/attention_output/bias/m*
_output_shapes	
:�*
dtype0
�
 Adam/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/layer_normalization/gamma/v
�
4Adam/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/layer_normalization/gamma/v*
_output_shapes	
:�*
dtype0
�
Adam/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!Adam/layer_normalization/beta/v
�
3Adam/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/layer_normalization/beta/v*
_output_shapes	
:�*
dtype0
�
Adam/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*%
shared_nameAdam/conv1d/kernel/v
�
(Adam/conv1d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/kernel/v*$
_output_shapes
:��*
dtype0
}
Adam/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/conv1d/bias/v
v
&Adam/conv1d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/layer_normalization_1/gamma/v
�
6Adam/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_1/gamma/v*
_output_shapes	
:�*
dtype0
�
!Adam/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/layer_normalization_1/beta/v
�
5Adam/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_1/beta/v*
_output_shapes	
:�*
dtype0
�
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*'
shared_nameAdam/conv1d_1/kernel/v
�
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*$
_output_shapes
:��*
dtype0
�
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv1d_1/bias/v
z
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/layer_normalization_2/gamma/v
�
6Adam/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_2/gamma/v*
_output_shapes	
:�*
dtype0
�
!Adam/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/layer_normalization_2/beta/v
�
5Adam/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_2/beta/v*
_output_shapes	
:�*
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	�*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
�
(Adam/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *9
shared_name*(Adam/multi_head_attention/query/kernel/v
�
<Adam/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/query/kernel/v*#
_output_shapes
:� *
dtype0
�
&Adam/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/multi_head_attention/query/bias/v
�
:Adam/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/query/bias/v*
_output_shapes

: *
dtype0
�
&Adam/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *7
shared_name(&Adam/multi_head_attention/key/kernel/v
�
:Adam/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/key/kernel/v*#
_output_shapes
:� *
dtype0
�
$Adam/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *5
shared_name&$Adam/multi_head_attention/key/bias/v
�
8Adam/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp$Adam/multi_head_attention/key/bias/v*
_output_shapes

: *
dtype0
�
(Adam/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *9
shared_name*(Adam/multi_head_attention/value/kernel/v
�
<Adam/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/value/kernel/v*#
_output_shapes
:� *
dtype0
�
&Adam/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/multi_head_attention/value/bias/v
�
:Adam/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/value/bias/v*
_output_shapes

: *
dtype0
�
3Adam/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*D
shared_name53Adam/multi_head_attention/attention_output/kernel/v
�
GAdam/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention/attention_output/kernel/v*#
_output_shapes
: �*
dtype0
�
1Adam/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31Adam/multi_head_attention/attention_output/bias/v
�
EAdam/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOp1Adam/multi_head_attention/attention_output/bias/v*
_output_shapes	
:�*
dtype0
�
*Adam/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *;
shared_name,*Adam/multi_head_attention_1/query/kernel/v
�
>Adam/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/query/kernel/v*#
_output_shapes
:� *
dtype0
�
(Adam/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/multi_head_attention_1/query/bias/v
�
<Adam/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/query/bias/v*
_output_shapes

: *
dtype0
�
(Adam/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *9
shared_name*(Adam/multi_head_attention_1/key/kernel/v
�
<Adam/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/key/kernel/v*#
_output_shapes
:� *
dtype0
�
&Adam/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/multi_head_attention_1/key/bias/v
�
:Adam/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention_1/key/bias/v*
_output_shapes

: *
dtype0
�
*Adam/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:� *;
shared_name,*Adam/multi_head_attention_1/value/kernel/v
�
>Adam/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/value/kernel/v*#
_output_shapes
:� *
dtype0
�
(Adam/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/multi_head_attention_1/value/bias/v
�
<Adam/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/value/bias/v*
_output_shapes

: *
dtype0
�
5Adam/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: �*F
shared_name75Adam/multi_head_attention_1/attention_output/kernel/v
�
IAdam/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp5Adam/multi_head_attention_1/attention_output/kernel/v*#
_output_shapes
: �*
dtype0
�
3Adam/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53Adam/multi_head_attention_1/attention_output/bias/v
�
GAdam/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention_1/attention_output/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
�
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
q
%axis
	&gamma
'beta
(	variables
)trainable_variables
*regularization_losses
+	keras_api
h

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
R
2	variables
3trainable_variables
4regularization_losses
5	keras_api
R
6	variables
7trainable_variables
8regularization_losses
9	keras_api
�
:_query_dense
;
_key_dense
<_value_dense
=_softmax
>_dropout_layer
?_output_dense
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
R
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
q
Haxis
	Igamma
Jbeta
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
h

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
R
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
R
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
q
]axis
	^gamma
_beta
`	variables
atrainable_variables
bregularization_losses
c	keras_api
R
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
�
niter

obeta_1

pbeta_2
	qdecay
rlearning_rate&m�'m�,m�-m�Im�Jm�Om�Pm�^m�_m�hm�im�sm�tm�um�vm�wm�xm�ym�zm�{m�|m�}m�~m�m�	�m�	�m�	�m�&v�'v�,v�-v�Iv�Jv�Ov�Pv�^v�_v�hv�iv�sv�tv�uv�vv�wv�xv�yv�zv�{v�|v�}v�~v�v�	�v�	�v�	�v�
�
s0
t1
u2
v3
w4
x5
y6
z7
&8
'9
,10
-11
{12
|13
}14
~15
16
�17
�18
�19
I20
J21
O22
P23
^24
_25
h26
i27
�
s0
t1
u2
v3
w4
x5
y6
z7
&8
'9
,10
-11
{12
|13
}14
~15
16
�17
�18
�19
I20
J21
O22
P23
^24
_25
h26
i27
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 
�
�partial_output_shape
�full_output_shape

skernel
tbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

ukernel
vbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

wkernel
xbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

ykernel
zbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
8
s0
t1
u2
v3
w4
x5
y6
z7
8
s0
t1
u2
v3
w4
x5
y6
z7
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
 
db
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE

&0
'1

&0
'1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
YW
VARIABLE_VALUEconv1d/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv1d/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
�
�partial_output_shape
�full_output_shape

{kernel
|bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

}kernel
~bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
;
{0
|1
}2
~3
4
�5
�6
�7
;
{0
|1
}2
~3
4
�5
�6
�7
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
 
fd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

I0
J1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
[Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1

O0
P1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
 
fd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE

^0
_1

^0
_1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

h0
i1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!multi_head_attention/query/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmulti_head_attention/query/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmulti_head_attention/key/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEmulti_head_attention/key/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!multi_head_attention/value/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEmulti_head_attention/value/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE,multi_head_attention/attention_output/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*multi_head_attention/attention_output/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#multi_head_attention_1/query/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!multi_head_attention_1/query/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!multi_head_attention_1/key/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEmulti_head_attention_1/key/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE#multi_head_attention_1/value/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!multi_head_attention_1/value/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.multi_head_attention_1/attention_output/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,multi_head_attention_1/attention_output/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
 
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15

�0
�1
�2
 
 
 
 

s0
t1

s0
t1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

u0
v1

u0
v1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

w0
x1

w0
x1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

y0
z1

y0
z1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
*
0
1
2
3
4
5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

{0
|1

{0
|1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

}0
~1

}0
~1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

0
�1

0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

�0
�1

�0
�1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
*
:0
;1
<2
=3
>4
?5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
R
�correct_predictions
�total_predictions
�	variables
�	keras_api
a
�true_positives
�false_positives
�false_negatives
�	variables
�	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
ki
VARIABLE_VALUEcorrect_predictionsBkeras_api/metrics/1/correct_predictions/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEtotal_predictions@keras_api/metrics/1/total_predictions/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
0
�0
�1
�2
�3
�4
�5
0
�0
�1
�2
�3
�4
�5
0
�0
�1
�2
�3
�4
�5
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17

�	variables
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
C
�
thresholds
�accumulator
�	variables
�	keras_api
[Y
VARIABLE_VALUEaccumulator:keras_api/metrics/2/variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_1:keras_api/metrics/2/variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_2:keras_api/metrics/2/variables/2/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_3:keras_api/metrics/2/variables/3/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_4:keras_api/metrics/2/variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_5:keras_api/metrics/2/variables/5/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_6:keras_api/metrics/2/variables/6/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_7:keras_api/metrics/2/variables/7/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_8:keras_api/metrics/2/variables/8/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEaccumulator_9:keras_api/metrics/2/variables/9/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_10;keras_api/metrics/2/variables/10/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_11;keras_api/metrics/2/variables/11/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_12;keras_api/metrics/2/variables/12/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_13;keras_api/metrics/2/variables/13/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_14;keras_api/metrics/2/variables/14/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_15;keras_api/metrics/2/variables/15/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_16;keras_api/metrics/2/variables/16/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEaccumulator_17;keras_api/metrics/2/variables/17/.ATTRIBUTES/VARIABLE_VALUE
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
 

�0

�	variables
��
VARIABLE_VALUE Adam/layer_normalization/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/layer_normalization/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_1/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/layer_normalization_1/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_2/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/layer_normalization_2/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE(Adam/multi_head_attention/query/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/multi_head_attention/query/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/multi_head_attention/key/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/multi_head_attention/key/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE(Adam/multi_head_attention/value/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/multi_head_attention/value/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE3Adam/multi_head_attention/attention_output/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE1Adam/multi_head_attention/attention_output/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/multi_head_attention_1/query/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE(Adam/multi_head_attention_1/query/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE(Adam/multi_head_attention_1/key/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE&Adam/multi_head_attention_1/key/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/multi_head_attention_1/value/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE(Adam/multi_head_attention_1/value/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE5Adam/multi_head_attention_1/attention_output/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE3Adam/multi_head_attention_1/attention_output/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/layer_normalization/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/layer_normalization/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv1d/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv1d/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_1/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/layer_normalization_1/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/layer_normalization_2/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE!Adam/layer_normalization_2/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE(Adam/multi_head_attention/query/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/multi_head_attention/query/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/multi_head_attention/key/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/multi_head_attention/key/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE(Adam/multi_head_attention/value/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/multi_head_attention/value/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE3Adam/multi_head_attention/attention_output/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE1Adam/multi_head_attention/attention_output/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/multi_head_attention_1/query/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE(Adam/multi_head_attention_1/query/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE(Adam/multi_head_attention_1/key/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE&Adam/multi_head_attention_1/key/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*Adam/multi_head_attention_1/value/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE(Adam/multi_head_attention_1/value/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE5Adam/multi_head_attention_1/attention_output/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE3Adam/multi_head_attention_1/attention_output/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*,
_output_shapes
:���������
�*
dtype0*!
shape:���������
�
�	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biaslayer_normalization/gammalayer_normalization/betaconv1d/kernelconv1d/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biaslayer_normalization_1/gammalayer_normalization_1/betaconv1d_1/kernelconv1d_1/biaslayer_normalization_2/gammalayer_normalization_2/betadense/kernel
dense/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_4340463
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�.
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-layer_normalization/gamma/Read/ReadVariableOp,layer_normalization/beta/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp/layer_normalization_1/gamma/Read/ReadVariableOp.layer_normalization_1/beta/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp5multi_head_attention/query/kernel/Read/ReadVariableOp3multi_head_attention/query/bias/Read/ReadVariableOp3multi_head_attention/key/kernel/Read/ReadVariableOp1multi_head_attention/key/bias/Read/ReadVariableOp5multi_head_attention/value/kernel/Read/ReadVariableOp3multi_head_attention/value/bias/Read/ReadVariableOp@multi_head_attention/attention_output/kernel/Read/ReadVariableOp>multi_head_attention/attention_output/bias/Read/ReadVariableOp7multi_head_attention_1/query/kernel/Read/ReadVariableOp5multi_head_attention_1/query/bias/Read/ReadVariableOp5multi_head_attention_1/key/kernel/Read/ReadVariableOp3multi_head_attention_1/key/bias/Read/ReadVariableOp7multi_head_attention_1/value/kernel/Read/ReadVariableOp5multi_head_attention_1/value/bias/Read/ReadVariableOpBmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOp@multi_head_attention_1/attention_output/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp'correct_predictions/Read/ReadVariableOp%total_predictions/Read/ReadVariableOpaccumulator/Read/ReadVariableOp!accumulator_1/Read/ReadVariableOp!accumulator_2/Read/ReadVariableOp!accumulator_3/Read/ReadVariableOp!accumulator_4/Read/ReadVariableOp!accumulator_5/Read/ReadVariableOp!accumulator_6/Read/ReadVariableOp!accumulator_7/Read/ReadVariableOp!accumulator_8/Read/ReadVariableOp!accumulator_9/Read/ReadVariableOp"accumulator_10/Read/ReadVariableOp"accumulator_11/Read/ReadVariableOp"accumulator_12/Read/ReadVariableOp"accumulator_13/Read/ReadVariableOp"accumulator_14/Read/ReadVariableOp"accumulator_15/Read/ReadVariableOp"accumulator_16/Read/ReadVariableOp"accumulator_17/Read/ReadVariableOp4Adam/layer_normalization/gamma/m/Read/ReadVariableOp3Adam/layer_normalization/beta/m/Read/ReadVariableOp(Adam/conv1d/kernel/m/Read/ReadVariableOp&Adam/conv1d/bias/m/Read/ReadVariableOp6Adam/layer_normalization_1/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_1/beta/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp6Adam/layer_normalization_2/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_2/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp<Adam/multi_head_attention/query/kernel/m/Read/ReadVariableOp:Adam/multi_head_attention/query/bias/m/Read/ReadVariableOp:Adam/multi_head_attention/key/kernel/m/Read/ReadVariableOp8Adam/multi_head_attention/key/bias/m/Read/ReadVariableOp<Adam/multi_head_attention/value/kernel/m/Read/ReadVariableOp:Adam/multi_head_attention/value/bias/m/Read/ReadVariableOpGAdam/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpEAdam/multi_head_attention/attention_output/bias/m/Read/ReadVariableOp>Adam/multi_head_attention_1/query/kernel/m/Read/ReadVariableOp<Adam/multi_head_attention_1/query/bias/m/Read/ReadVariableOp<Adam/multi_head_attention_1/key/kernel/m/Read/ReadVariableOp:Adam/multi_head_attention_1/key/bias/m/Read/ReadVariableOp>Adam/multi_head_attention_1/value/kernel/m/Read/ReadVariableOp<Adam/multi_head_attention_1/value/bias/m/Read/ReadVariableOpIAdam/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpGAdam/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOp4Adam/layer_normalization/gamma/v/Read/ReadVariableOp3Adam/layer_normalization/beta/v/Read/ReadVariableOp(Adam/conv1d/kernel/v/Read/ReadVariableOp&Adam/conv1d/bias/v/Read/ReadVariableOp6Adam/layer_normalization_1/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_1/beta/v/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp6Adam/layer_normalization_2/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_2/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp<Adam/multi_head_attention/query/kernel/v/Read/ReadVariableOp:Adam/multi_head_attention/query/bias/v/Read/ReadVariableOp:Adam/multi_head_attention/key/kernel/v/Read/ReadVariableOp8Adam/multi_head_attention/key/bias/v/Read/ReadVariableOp<Adam/multi_head_attention/value/kernel/v/Read/ReadVariableOp:Adam/multi_head_attention/value/bias/v/Read/ReadVariableOpGAdam/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpEAdam/multi_head_attention/attention_output/bias/v/Read/ReadVariableOp>Adam/multi_head_attention_1/query/kernel/v/Read/ReadVariableOp<Adam/multi_head_attention_1/query/bias/v/Read/ReadVariableOp<Adam/multi_head_attention_1/key/kernel/v/Read/ReadVariableOp:Adam/multi_head_attention_1/key/bias/v/Read/ReadVariableOp>Adam/multi_head_attention_1/value/kernel/v/Read/ReadVariableOp<Adam/multi_head_attention_1/value/bias/v/Read/ReadVariableOpIAdam/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpGAdam/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpConst*|
Tinu
s2q	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_4341812
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization/gammalayer_normalization/betaconv1d/kernelconv1d/biaslayer_normalization_1/gammalayer_normalization_1/betaconv1d_1/kernelconv1d_1/biaslayer_normalization_2/gammalayer_normalization_2/betadense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biastotalcountcorrect_predictionstotal_predictionsaccumulatoraccumulator_1accumulator_2accumulator_3accumulator_4accumulator_5accumulator_6accumulator_7accumulator_8accumulator_9accumulator_10accumulator_11accumulator_12accumulator_13accumulator_14accumulator_15accumulator_16accumulator_17 Adam/layer_normalization/gamma/mAdam/layer_normalization/beta/mAdam/conv1d/kernel/mAdam/conv1d/bias/m"Adam/layer_normalization_1/gamma/m!Adam/layer_normalization_1/beta/mAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/m"Adam/layer_normalization_2/gamma/m!Adam/layer_normalization_2/beta/mAdam/dense/kernel/mAdam/dense/bias/m(Adam/multi_head_attention/query/kernel/m&Adam/multi_head_attention/query/bias/m&Adam/multi_head_attention/key/kernel/m$Adam/multi_head_attention/key/bias/m(Adam/multi_head_attention/value/kernel/m&Adam/multi_head_attention/value/bias/m3Adam/multi_head_attention/attention_output/kernel/m1Adam/multi_head_attention/attention_output/bias/m*Adam/multi_head_attention_1/query/kernel/m(Adam/multi_head_attention_1/query/bias/m(Adam/multi_head_attention_1/key/kernel/m&Adam/multi_head_attention_1/key/bias/m*Adam/multi_head_attention_1/value/kernel/m(Adam/multi_head_attention_1/value/bias/m5Adam/multi_head_attention_1/attention_output/kernel/m3Adam/multi_head_attention_1/attention_output/bias/m Adam/layer_normalization/gamma/vAdam/layer_normalization/beta/vAdam/conv1d/kernel/vAdam/conv1d/bias/v"Adam/layer_normalization_1/gamma/v!Adam/layer_normalization_1/beta/vAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/v"Adam/layer_normalization_2/gamma/v!Adam/layer_normalization_2/beta/vAdam/dense/kernel/vAdam/dense/bias/v(Adam/multi_head_attention/query/kernel/v&Adam/multi_head_attention/query/bias/v&Adam/multi_head_attention/key/kernel/v$Adam/multi_head_attention/key/bias/v(Adam/multi_head_attention/value/kernel/v&Adam/multi_head_attention/value/bias/v3Adam/multi_head_attention/attention_output/kernel/v1Adam/multi_head_attention/attention_output/bias/v*Adam/multi_head_attention_1/query/kernel/v(Adam/multi_head_attention_1/query/bias/v(Adam/multi_head_attention_1/key/kernel/v&Adam/multi_head_attention_1/key/bias/v*Adam/multi_head_attention_1/value/kernel/v(Adam/multi_head_attention_1/value/bias/v5Adam/multi_head_attention_1/attention_output/kernel/v3Adam/multi_head_attention_1/attention_output/bias/v*{
Tint
r2p*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_4342155��
�
�
C__inference_conv1d_layer_call_and_return_conditional_losses_4339414

inputsC
+conv1d_expanddims_1_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������
�f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4339392

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:���������
�l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:���������

batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
n
B__inference_add_2_layer_call_and_return_conditional_losses_4341288
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
�
'__inference_dense_layer_call_fn_4341445

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4339607o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�N
#__inference__traced_restore_4342155
file_prefix9
*assignvariableop_layer_normalization_gamma:	�:
+assignvariableop_1_layer_normalization_beta:	�8
 assignvariableop_2_conv1d_kernel:��-
assignvariableop_3_conv1d_bias:	�=
.assignvariableop_4_layer_normalization_1_gamma:	�<
-assignvariableop_5_layer_normalization_1_beta:	�:
"assignvariableop_6_conv1d_1_kernel:��/
 assignvariableop_7_conv1d_1_bias:	�=
.assignvariableop_8_layer_normalization_2_gamma:	�<
-assignvariableop_9_layer_normalization_2_beta:	�3
 assignvariableop_10_dense_kernel:	�,
assignvariableop_11_dense_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: L
5assignvariableop_17_multi_head_attention_query_kernel:� E
3assignvariableop_18_multi_head_attention_query_bias: J
3assignvariableop_19_multi_head_attention_key_kernel:� C
1assignvariableop_20_multi_head_attention_key_bias: L
5assignvariableop_21_multi_head_attention_value_kernel:� E
3assignvariableop_22_multi_head_attention_value_bias: W
@assignvariableop_23_multi_head_attention_attention_output_kernel: �M
>assignvariableop_24_multi_head_attention_attention_output_bias:	�N
7assignvariableop_25_multi_head_attention_1_query_kernel:� G
5assignvariableop_26_multi_head_attention_1_query_bias: L
5assignvariableop_27_multi_head_attention_1_key_kernel:� E
3assignvariableop_28_multi_head_attention_1_key_bias: N
7assignvariableop_29_multi_head_attention_1_value_kernel:� G
5assignvariableop_30_multi_head_attention_1_value_bias: Y
Bassignvariableop_31_multi_head_attention_1_attention_output_kernel: �O
@assignvariableop_32_multi_head_attention_1_attention_output_bias:	�#
assignvariableop_33_total: #
assignvariableop_34_count: 1
'assignvariableop_35_correct_predictions: /
%assignvariableop_36_total_predictions: -
assignvariableop_37_accumulator:/
!assignvariableop_38_accumulator_1:/
!assignvariableop_39_accumulator_2:/
!assignvariableop_40_accumulator_3:/
!assignvariableop_41_accumulator_4:/
!assignvariableop_42_accumulator_5:/
!assignvariableop_43_accumulator_6:/
!assignvariableop_44_accumulator_7:/
!assignvariableop_45_accumulator_8:/
!assignvariableop_46_accumulator_9:0
"assignvariableop_47_accumulator_10:0
"assignvariableop_48_accumulator_11:0
"assignvariableop_49_accumulator_12:0
"assignvariableop_50_accumulator_13:0
"assignvariableop_51_accumulator_14:0
"assignvariableop_52_accumulator_15:0
"assignvariableop_53_accumulator_16:0
"assignvariableop_54_accumulator_17:C
4assignvariableop_55_adam_layer_normalization_gamma_m:	�B
3assignvariableop_56_adam_layer_normalization_beta_m:	�@
(assignvariableop_57_adam_conv1d_kernel_m:��5
&assignvariableop_58_adam_conv1d_bias_m:	�E
6assignvariableop_59_adam_layer_normalization_1_gamma_m:	�D
5assignvariableop_60_adam_layer_normalization_1_beta_m:	�B
*assignvariableop_61_adam_conv1d_1_kernel_m:��7
(assignvariableop_62_adam_conv1d_1_bias_m:	�E
6assignvariableop_63_adam_layer_normalization_2_gamma_m:	�D
5assignvariableop_64_adam_layer_normalization_2_beta_m:	�:
'assignvariableop_65_adam_dense_kernel_m:	�3
%assignvariableop_66_adam_dense_bias_m:S
<assignvariableop_67_adam_multi_head_attention_query_kernel_m:� L
:assignvariableop_68_adam_multi_head_attention_query_bias_m: Q
:assignvariableop_69_adam_multi_head_attention_key_kernel_m:� J
8assignvariableop_70_adam_multi_head_attention_key_bias_m: S
<assignvariableop_71_adam_multi_head_attention_value_kernel_m:� L
:assignvariableop_72_adam_multi_head_attention_value_bias_m: ^
Gassignvariableop_73_adam_multi_head_attention_attention_output_kernel_m: �T
Eassignvariableop_74_adam_multi_head_attention_attention_output_bias_m:	�U
>assignvariableop_75_adam_multi_head_attention_1_query_kernel_m:� N
<assignvariableop_76_adam_multi_head_attention_1_query_bias_m: S
<assignvariableop_77_adam_multi_head_attention_1_key_kernel_m:� L
:assignvariableop_78_adam_multi_head_attention_1_key_bias_m: U
>assignvariableop_79_adam_multi_head_attention_1_value_kernel_m:� N
<assignvariableop_80_adam_multi_head_attention_1_value_bias_m: `
Iassignvariableop_81_adam_multi_head_attention_1_attention_output_kernel_m: �V
Gassignvariableop_82_adam_multi_head_attention_1_attention_output_bias_m:	�C
4assignvariableop_83_adam_layer_normalization_gamma_v:	�B
3assignvariableop_84_adam_layer_normalization_beta_v:	�@
(assignvariableop_85_adam_conv1d_kernel_v:��5
&assignvariableop_86_adam_conv1d_bias_v:	�E
6assignvariableop_87_adam_layer_normalization_1_gamma_v:	�D
5assignvariableop_88_adam_layer_normalization_1_beta_v:	�B
*assignvariableop_89_adam_conv1d_1_kernel_v:��7
(assignvariableop_90_adam_conv1d_1_bias_v:	�E
6assignvariableop_91_adam_layer_normalization_2_gamma_v:	�D
5assignvariableop_92_adam_layer_normalization_2_beta_v:	�:
'assignvariableop_93_adam_dense_kernel_v:	�3
%assignvariableop_94_adam_dense_bias_v:S
<assignvariableop_95_adam_multi_head_attention_query_kernel_v:� L
:assignvariableop_96_adam_multi_head_attention_query_bias_v: Q
:assignvariableop_97_adam_multi_head_attention_key_kernel_v:� J
8assignvariableop_98_adam_multi_head_attention_key_bias_v: S
<assignvariableop_99_adam_multi_head_attention_value_kernel_v:� M
;assignvariableop_100_adam_multi_head_attention_value_bias_v: _
Hassignvariableop_101_adam_multi_head_attention_attention_output_kernel_v: �U
Fassignvariableop_102_adam_multi_head_attention_attention_output_bias_v:	�V
?assignvariableop_103_adam_multi_head_attention_1_query_kernel_v:� O
=assignvariableop_104_adam_multi_head_attention_1_query_bias_v: T
=assignvariableop_105_adam_multi_head_attention_1_key_kernel_v:� M
;assignvariableop_106_adam_multi_head_attention_1_key_bias_v: V
?assignvariableop_107_adam_multi_head_attention_1_value_kernel_v:� O
=assignvariableop_108_adam_multi_head_attention_1_value_bias_v: a
Jassignvariableop_109_adam_multi_head_attention_1_attention_output_kernel_v: �W
Hassignvariableop_110_adam_multi_head_attention_1_attention_output_bias_v:	�
identity_112��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�8
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*�7
value�7B�7pB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBkeras_api/metrics/1/correct_predictions/.ATTRIBUTES/VARIABLE_VALUEB@keras_api/metrics/1/total_predictions/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/0/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/1/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/2/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/3/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/4/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/5/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/6/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/7/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/8/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/9/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/10/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/11/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/12/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/13/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/14/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/15/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/16/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/17/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*�
value�B�pB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*~
dtypest
r2p	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_layer_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_layer_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv1d_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv1d_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_layer_normalization_1_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp-assignvariableop_5_layer_normalization_1_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv1d_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv1d_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_layer_normalization_2_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_layer_normalization_2_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp5assignvariableop_17_multi_head_attention_query_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp3assignvariableop_18_multi_head_attention_query_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp3assignvariableop_19_multi_head_attention_key_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp1assignvariableop_20_multi_head_attention_key_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp5assignvariableop_21_multi_head_attention_value_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp3assignvariableop_22_multi_head_attention_value_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp@assignvariableop_23_multi_head_attention_attention_output_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp>assignvariableop_24_multi_head_attention_attention_output_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp7assignvariableop_25_multi_head_attention_1_query_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp5assignvariableop_26_multi_head_attention_1_query_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp5assignvariableop_27_multi_head_attention_1_key_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp3assignvariableop_28_multi_head_attention_1_key_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp7assignvariableop_29_multi_head_attention_1_value_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp5assignvariableop_30_multi_head_attention_1_value_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpBassignvariableop_31_multi_head_attention_1_attention_output_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp@assignvariableop_32_multi_head_attention_1_attention_output_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_totalIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_countIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp'assignvariableop_35_correct_predictionsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp%assignvariableop_36_total_predictionsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_accumulatorIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp!assignvariableop_38_accumulator_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp!assignvariableop_39_accumulator_2Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp!assignvariableop_40_accumulator_3Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp!assignvariableop_41_accumulator_4Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp!assignvariableop_42_accumulator_5Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp!assignvariableop_43_accumulator_6Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp!assignvariableop_44_accumulator_7Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp!assignvariableop_45_accumulator_8Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp!assignvariableop_46_accumulator_9Identity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp"assignvariableop_47_accumulator_10Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp"assignvariableop_48_accumulator_11Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp"assignvariableop_49_accumulator_12Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp"assignvariableop_50_accumulator_13Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp"assignvariableop_51_accumulator_14Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp"assignvariableop_52_accumulator_15Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp"assignvariableop_53_accumulator_16Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp"assignvariableop_54_accumulator_17Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp4assignvariableop_55_adam_layer_normalization_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_layer_normalization_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_conv1d_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_conv1d_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_layer_normalization_1_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_layer_normalization_1_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_conv1d_1_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_conv1d_1_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_layer_normalization_2_gamma_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp5assignvariableop_64_adam_layer_normalization_2_beta_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_dense_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp%assignvariableop_66_adam_dense_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp<assignvariableop_67_adam_multi_head_attention_query_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp:assignvariableop_68_adam_multi_head_attention_query_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp:assignvariableop_69_adam_multi_head_attention_key_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp8assignvariableop_70_adam_multi_head_attention_key_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp<assignvariableop_71_adam_multi_head_attention_value_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp:assignvariableop_72_adam_multi_head_attention_value_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpGassignvariableop_73_adam_multi_head_attention_attention_output_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpEassignvariableop_74_adam_multi_head_attention_attention_output_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp>assignvariableop_75_adam_multi_head_attention_1_query_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp<assignvariableop_76_adam_multi_head_attention_1_query_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp<assignvariableop_77_adam_multi_head_attention_1_key_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp:assignvariableop_78_adam_multi_head_attention_1_key_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp>assignvariableop_79_adam_multi_head_attention_1_value_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp<assignvariableop_80_adam_multi_head_attention_1_value_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOpIassignvariableop_81_adam_multi_head_attention_1_attention_output_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOpGassignvariableop_82_adam_multi_head_attention_1_attention_output_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp4assignvariableop_83_adam_layer_normalization_gamma_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_layer_normalization_beta_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp(assignvariableop_85_adam_conv1d_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp&assignvariableop_86_adam_conv1d_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adam_layer_normalization_1_gamma_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp5assignvariableop_88_adam_layer_normalization_1_beta_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_conv1d_1_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_conv1d_1_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp6assignvariableop_91_adam_layer_normalization_2_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp5assignvariableop_92_adam_layer_normalization_2_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp'assignvariableop_93_adam_dense_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp%assignvariableop_94_adam_dense_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp<assignvariableop_95_adam_multi_head_attention_query_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp:assignvariableop_96_adam_multi_head_attention_query_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp:assignvariableop_97_adam_multi_head_attention_key_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp8assignvariableop_98_adam_multi_head_attention_key_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp<assignvariableop_99_adam_multi_head_attention_value_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp;assignvariableop_100_adam_multi_head_attention_value_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOpHassignvariableop_101_adam_multi_head_attention_attention_output_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOpFassignvariableop_102_adam_multi_head_attention_attention_output_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp?assignvariableop_103_adam_multi_head_attention_1_query_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp=assignvariableop_104_adam_multi_head_attention_1_query_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp=assignvariableop_105_adam_multi_head_attention_1_key_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp;assignvariableop_106_adam_multi_head_attention_1_key_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp?assignvariableop_107_adam_multi_head_attention_1_value_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp=assignvariableop_108_adam_multi_head_attention_1_value_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOpJassignvariableop_109_adam_multi_head_attention_1_attention_output_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOpHassignvariableop_110_adam_multi_head_attention_1_attention_output_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_111Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_112IdentityIdentity_111:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_112Identity_112:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102*
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
B__inference_model_layer_call_and_return_conditional_losses_4340927

inputsW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:� H
6multi_head_attention_query_add_readvariableop_resource: U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:� F
4multi_head_attention_key_add_readvariableop_resource: W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:� H
6multi_head_attention_value_add_readvariableop_resource: b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource: �P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�J
2conv1d_conv1d_expanddims_1_readvariableop_resource:��5
&conv1d_biasadd_readvariableop_resource:	�Y
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:� J
8multi_head_attention_1_query_add_readvariableop_resource: W
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:� H
6multi_head_attention_1_key_add_readvariableop_resource: Y
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:� J
8multi_head_attention_1_value_add_readvariableop_resource: d
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource: �R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�J
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_2_batchnorm_readvariableop_resource:	�7
$dense_matmul_readvariableop_resource:	�3
%dense_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�.layer_normalization_2/batchnorm/ReadVariableOp�2layer_normalization_2/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp�:multi_head_attention_1/attention_output/add/ReadVariableOp�Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_1/key/add/ReadVariableOp�7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/query/add/ReadVariableOp�9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/value/add/ReadVariableOp�9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 _
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbe�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:���������

o
*multi_head_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
(multi_head_attention/dropout/dropout/MulMul.multi_head_attention/softmax/Softmax:softmax:03multi_head_attention/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������

�
*multi_head_attention/dropout/dropout/ShapeShape.multi_head_attention/softmax/Softmax:softmax:0*
T0*
_output_shapes
:�
Amulti_head_attention/dropout/dropout/random_uniform/RandomUniformRandomUniform3multi_head_attention/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������

*
dtype0x
3multi_head_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
1multi_head_attention/dropout/dropout/GreaterEqualGreaterEqualJmulti_head_attention/dropout/dropout/random_uniform/RandomUniform:output:0<multi_head_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������

�
)multi_head_attention/dropout/dropout/CastCast5multi_head_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������

�
*multi_head_attention/dropout/dropout/Mul_1Mul,multi_head_attention/dropout/dropout/Mul:z:0-multi_head_attention/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������

�
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/dropout/Mul_1:z:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�~
add/addAddV2inputs-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:���������
�|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd/add:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd/add:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
#layer_normalization/batchnorm/mul_1Muladd/add:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDims'layer_normalization/batchnorm/add_1:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������
�Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulconv1d/Relu:activations:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:���������
�^
dropout/dropout/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:���������
�*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:���������
��
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:���������
��
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:���������
��
	add_1/addAddV2'layer_normalization/batchnorm/add_1:z:0dropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:���������
��
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
*multi_head_attention_1/query/einsum/EinsumEinsumadd_1/add:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
(multi_head_attention_1/key/einsum/EinsumEinsumadd_1/add:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
*multi_head_attention_1/value/einsum/EinsumEinsumadd_1/add:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbe�
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:���������

q
,multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
*multi_head_attention_1/dropout/dropout/MulMul0multi_head_attention_1/softmax/Softmax:softmax:05multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������

�
,multi_head_attention_1/dropout/dropout/ShapeShape0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:�
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������

*
dtype0z
5multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
3multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������

�
+multi_head_attention_1/dropout/dropout/CastCast7multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������

�
,multi_head_attention_1/dropout/dropout/Mul_1Mul.multi_head_attention_1/dropout/dropout/Mul:z:0/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������

�
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
	add_2/addAddV2add_1/add:z:0/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:���������
�~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanadd_2/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_2/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_1/batchnorm/mul_1Muladd_2/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDims)layer_normalization_1/batchnorm/add_1:z:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:���������
�\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout_1/dropout/MulMulconv1d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:���������
�b
dropout_1/dropout/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:���������
�*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:���������
��
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:���������
��
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:���������
��
	add_3/addAddV2)layer_normalization_1/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:���������
�~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_2/moments/meanMeanadd_3/add:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_2/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean)layer_normalization_2/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�

�
B__inference_dense_layer_call_and_return_conditional_losses_4341456

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_conv1d_layer_call_fn_4341100

inputs
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_4339414t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
Q
%__inference_add_layer_call_fn_4341054
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4339368e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
�
8__inference_multi_head_attention_1_layer_call_fn_4341199	
query	
value
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339823t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
l
B__inference_add_2_layer_call_and_return_conditional_losses_4339494

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs:TP
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�1
�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339823	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������

^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������

*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������

�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������

�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
G
+__inference_dropout_1_layer_call_fn_4341349

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339551e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
E
)__inference_dropout_layer_call_fn_4341121

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4339425e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
8__inference_multi_head_attention_1_layer_call_fn_4341177	
query	
value
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339470t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
j
@__inference_add_layer_call_and_return_conditional_losses_4339368

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs:TP
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_4341359

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:���������
�`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:���������
�"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
V
:__inference_global_average_pooling1d_layer_call_fn_4341419

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
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339299i
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
�L
�
B__inference_model_layer_call_and_return_conditional_losses_4339614

inputs3
multi_head_attention_4339345:� .
multi_head_attention_4339347: 3
multi_head_attention_4339349:� .
multi_head_attention_4339351: 3
multi_head_attention_4339353:� .
multi_head_attention_4339355: 3
multi_head_attention_4339357: �+
multi_head_attention_4339359:	�*
layer_normalization_4339393:	�*
layer_normalization_4339395:	�&
conv1d_4339415:��
conv1d_4339417:	�5
multi_head_attention_1_4339471:� 0
multi_head_attention_1_4339473: 5
multi_head_attention_1_4339475:� 0
multi_head_attention_1_4339477: 5
multi_head_attention_1_4339479:� 0
multi_head_attention_1_4339481: 5
multi_head_attention_1_4339483: �-
multi_head_attention_1_4339485:	�,
layer_normalization_1_4339519:	�,
layer_normalization_1_4339521:	�(
conv1d_1_4339541:��
conv1d_1_4339543:	�,
layer_normalization_2_4339584:	�,
layer_normalization_2_4339586:	� 
dense_4339608:	�
dense_4339610:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCallinputsinputsmulti_head_attention_4339345multi_head_attention_4339347multi_head_attention_4339349multi_head_attention_4339351multi_head_attention_4339353multi_head_attention_4339355multi_head_attention_4339357multi_head_attention_4339359*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339344�
add/PartitionedCallPartitionedCallinputs5multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4339368�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_4339393layer_normalization_4339395*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4339392�
conv1d/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0conv1d_4339415conv1d_4339417*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_4339414�
dropout/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4339425�
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0 dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4339433�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0add_1/PartitionedCall:output:0multi_head_attention_1_4339471multi_head_attention_1_4339473multi_head_attention_1_4339475multi_head_attention_1_4339477multi_head_attention_1_4339479multi_head_attention_1_4339481multi_head_attention_1_4339483multi_head_attention_1_4339485*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339470�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_4339494�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_1_4339519layer_normalization_1_4339521*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4339518�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0conv1d_1_4339541conv1d_1_4339543*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4339540�
dropout_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339551�
add_3/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_3_layer_call_and_return_conditional_losses_4339559�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_2_4339584layer_normalization_2_4339586*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4339583�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339594�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4339608dense_4339610*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4339607u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339299

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
�

c
D__inference_dropout_layer_call_and_return_conditional_losses_4339869

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:���������
�C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:���������
�*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:���������
�t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:���������
�n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:���������
�^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
7__inference_layer_normalization_1_layer_call_fn_4341297

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4339518t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
'__inference_model_layer_call_fn_4340244
input_1
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�!

unknown_11:� 

unknown_12: !

unknown_13:� 

unknown_14: !

unknown_15:� 

unknown_16: !

unknown_17: �

unknown_18:	�

unknown_19:	�

unknown_20:	�"

unknown_21:��

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4340124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:���������
�
!
_user_specified_name	input_1
�
S
'__inference_add_3_layer_call_fn_4341377
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_3_layer_call_and_return_conditional_losses_4339559e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
�
'__inference_model_layer_call_fn_4340524

inputs
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�!

unknown_11:� 

unknown_12: !

unknown_13:� 

unknown_14: !

unknown_15:� 

unknown_16: !

unknown_17: �

unknown_18:	�

unknown_19:	�

unknown_20:	�"

unknown_21:��

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4339614o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
n
B__inference_add_3_layer_call_and_return_conditional_losses_4341383
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339551

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:���������
�`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:���������
�"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
n
B__inference_add_1_layer_call_and_return_conditional_losses_4341155
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339725

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:���������
�C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:���������
�*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:���������
�t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:���������
�n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:���������
�^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4341319

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:���������
�l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:���������

batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_4341371

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:���������
�C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:���������
�*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:���������
�t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:���������
�n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:���������
�^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�

�
B__inference_dense_layer_call_and_return_conditional_losses_4339607

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�5
 __inference__traced_save_4341812
file_prefix8
4savev2_layer_normalization_gamma_read_readvariableop7
3savev2_layer_normalization_beta_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop:
6savev2_layer_normalization_1_gamma_read_readvariableop9
5savev2_layer_normalization_1_beta_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop@
<savev2_multi_head_attention_query_kernel_read_readvariableop>
:savev2_multi_head_attention_query_bias_read_readvariableop>
:savev2_multi_head_attention_key_kernel_read_readvariableop<
8savev2_multi_head_attention_key_bias_read_readvariableop@
<savev2_multi_head_attention_value_kernel_read_readvariableop>
:savev2_multi_head_attention_value_bias_read_readvariableopK
Gsavev2_multi_head_attention_attention_output_kernel_read_readvariableopI
Esavev2_multi_head_attention_attention_output_bias_read_readvariableopB
>savev2_multi_head_attention_1_query_kernel_read_readvariableop@
<savev2_multi_head_attention_1_query_bias_read_readvariableop@
<savev2_multi_head_attention_1_key_kernel_read_readvariableop>
:savev2_multi_head_attention_1_key_bias_read_readvariableopB
>savev2_multi_head_attention_1_value_kernel_read_readvariableop@
<savev2_multi_head_attention_1_value_bias_read_readvariableopM
Isavev2_multi_head_attention_1_attention_output_kernel_read_readvariableopK
Gsavev2_multi_head_attention_1_attention_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop2
.savev2_correct_predictions_read_readvariableop0
,savev2_total_predictions_read_readvariableop*
&savev2_accumulator_read_readvariableop,
(savev2_accumulator_1_read_readvariableop,
(savev2_accumulator_2_read_readvariableop,
(savev2_accumulator_3_read_readvariableop,
(savev2_accumulator_4_read_readvariableop,
(savev2_accumulator_5_read_readvariableop,
(savev2_accumulator_6_read_readvariableop,
(savev2_accumulator_7_read_readvariableop,
(savev2_accumulator_8_read_readvariableop,
(savev2_accumulator_9_read_readvariableop-
)savev2_accumulator_10_read_readvariableop-
)savev2_accumulator_11_read_readvariableop-
)savev2_accumulator_12_read_readvariableop-
)savev2_accumulator_13_read_readvariableop-
)savev2_accumulator_14_read_readvariableop-
)savev2_accumulator_15_read_readvariableop-
)savev2_accumulator_16_read_readvariableop-
)savev2_accumulator_17_read_readvariableop?
;savev2_adam_layer_normalization_gamma_m_read_readvariableop>
:savev2_adam_layer_normalization_beta_m_read_readvariableop3
/savev2_adam_conv1d_kernel_m_read_readvariableop1
-savev2_adam_conv1d_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_1_beta_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_2_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopG
Csavev2_adam_multi_head_attention_query_kernel_m_read_readvariableopE
Asavev2_adam_multi_head_attention_query_bias_m_read_readvariableopE
Asavev2_adam_multi_head_attention_key_kernel_m_read_readvariableopC
?savev2_adam_multi_head_attention_key_bias_m_read_readvariableopG
Csavev2_adam_multi_head_attention_value_kernel_m_read_readvariableopE
Asavev2_adam_multi_head_attention_value_bias_m_read_readvariableopR
Nsavev2_adam_multi_head_attention_attention_output_kernel_m_read_readvariableopP
Lsavev2_adam_multi_head_attention_attention_output_bias_m_read_readvariableopI
Esavev2_adam_multi_head_attention_1_query_kernel_m_read_readvariableopG
Csavev2_adam_multi_head_attention_1_query_bias_m_read_readvariableopG
Csavev2_adam_multi_head_attention_1_key_kernel_m_read_readvariableopE
Asavev2_adam_multi_head_attention_1_key_bias_m_read_readvariableopI
Esavev2_adam_multi_head_attention_1_value_kernel_m_read_readvariableopG
Csavev2_adam_multi_head_attention_1_value_bias_m_read_readvariableopT
Psavev2_adam_multi_head_attention_1_attention_output_kernel_m_read_readvariableopR
Nsavev2_adam_multi_head_attention_1_attention_output_bias_m_read_readvariableop?
;savev2_adam_layer_normalization_gamma_v_read_readvariableop>
:savev2_adam_layer_normalization_beta_v_read_readvariableop3
/savev2_adam_conv1d_kernel_v_read_readvariableop1
-savev2_adam_conv1d_bias_v_read_readvariableopA
=savev2_adam_layer_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_1_beta_v_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableopA
=savev2_adam_layer_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_2_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableopG
Csavev2_adam_multi_head_attention_query_kernel_v_read_readvariableopE
Asavev2_adam_multi_head_attention_query_bias_v_read_readvariableopE
Asavev2_adam_multi_head_attention_key_kernel_v_read_readvariableopC
?savev2_adam_multi_head_attention_key_bias_v_read_readvariableopG
Csavev2_adam_multi_head_attention_value_kernel_v_read_readvariableopE
Asavev2_adam_multi_head_attention_value_bias_v_read_readvariableopR
Nsavev2_adam_multi_head_attention_attention_output_kernel_v_read_readvariableopP
Lsavev2_adam_multi_head_attention_attention_output_bias_v_read_readvariableopI
Esavev2_adam_multi_head_attention_1_query_kernel_v_read_readvariableopG
Csavev2_adam_multi_head_attention_1_query_bias_v_read_readvariableopG
Csavev2_adam_multi_head_attention_1_key_kernel_v_read_readvariableopE
Asavev2_adam_multi_head_attention_1_key_bias_v_read_readvariableopI
Esavev2_adam_multi_head_attention_1_value_kernel_v_read_readvariableopG
Csavev2_adam_multi_head_attention_1_value_bias_v_read_readvariableopT
Psavev2_adam_multi_head_attention_1_attention_output_kernel_v_read_readvariableopR
Nsavev2_adam_multi_head_attention_1_attention_output_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: �8
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*�7
value�7B�7pB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBkeras_api/metrics/1/correct_predictions/.ATTRIBUTES/VARIABLE_VALUEB@keras_api/metrics/1/total_predictions/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/0/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/1/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/2/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/3/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/4/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/5/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/6/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/7/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/8/.ATTRIBUTES/VARIABLE_VALUEB:keras_api/metrics/2/variables/9/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/10/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/11/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/12/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/13/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/14/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/15/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/16/.ATTRIBUTES/VARIABLE_VALUEB;keras_api/metrics/2/variables/17/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:p*
dtype0*�
value�B�pB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �3
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_layer_normalization_gamma_read_readvariableop3savev2_layer_normalization_beta_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop6savev2_layer_normalization_1_gamma_read_readvariableop5savev2_layer_normalization_1_beta_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop<savev2_multi_head_attention_query_kernel_read_readvariableop:savev2_multi_head_attention_query_bias_read_readvariableop:savev2_multi_head_attention_key_kernel_read_readvariableop8savev2_multi_head_attention_key_bias_read_readvariableop<savev2_multi_head_attention_value_kernel_read_readvariableop:savev2_multi_head_attention_value_bias_read_readvariableopGsavev2_multi_head_attention_attention_output_kernel_read_readvariableopEsavev2_multi_head_attention_attention_output_bias_read_readvariableop>savev2_multi_head_attention_1_query_kernel_read_readvariableop<savev2_multi_head_attention_1_query_bias_read_readvariableop<savev2_multi_head_attention_1_key_kernel_read_readvariableop:savev2_multi_head_attention_1_key_bias_read_readvariableop>savev2_multi_head_attention_1_value_kernel_read_readvariableop<savev2_multi_head_attention_1_value_bias_read_readvariableopIsavev2_multi_head_attention_1_attention_output_kernel_read_readvariableopGsavev2_multi_head_attention_1_attention_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop.savev2_correct_predictions_read_readvariableop,savev2_total_predictions_read_readvariableop&savev2_accumulator_read_readvariableop(savev2_accumulator_1_read_readvariableop(savev2_accumulator_2_read_readvariableop(savev2_accumulator_3_read_readvariableop(savev2_accumulator_4_read_readvariableop(savev2_accumulator_5_read_readvariableop(savev2_accumulator_6_read_readvariableop(savev2_accumulator_7_read_readvariableop(savev2_accumulator_8_read_readvariableop(savev2_accumulator_9_read_readvariableop)savev2_accumulator_10_read_readvariableop)savev2_accumulator_11_read_readvariableop)savev2_accumulator_12_read_readvariableop)savev2_accumulator_13_read_readvariableop)savev2_accumulator_14_read_readvariableop)savev2_accumulator_15_read_readvariableop)savev2_accumulator_16_read_readvariableop)savev2_accumulator_17_read_readvariableop;savev2_adam_layer_normalization_gamma_m_read_readvariableop:savev2_adam_layer_normalization_beta_m_read_readvariableop/savev2_adam_conv1d_kernel_m_read_readvariableop-savev2_adam_conv1d_bias_m_read_readvariableop=savev2_adam_layer_normalization_1_gamma_m_read_readvariableop<savev2_adam_layer_normalization_1_beta_m_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop=savev2_adam_layer_normalization_2_gamma_m_read_readvariableop<savev2_adam_layer_normalization_2_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableopCsavev2_adam_multi_head_attention_query_kernel_m_read_readvariableopAsavev2_adam_multi_head_attention_query_bias_m_read_readvariableopAsavev2_adam_multi_head_attention_key_kernel_m_read_readvariableop?savev2_adam_multi_head_attention_key_bias_m_read_readvariableopCsavev2_adam_multi_head_attention_value_kernel_m_read_readvariableopAsavev2_adam_multi_head_attention_value_bias_m_read_readvariableopNsavev2_adam_multi_head_attention_attention_output_kernel_m_read_readvariableopLsavev2_adam_multi_head_attention_attention_output_bias_m_read_readvariableopEsavev2_adam_multi_head_attention_1_query_kernel_m_read_readvariableopCsavev2_adam_multi_head_attention_1_query_bias_m_read_readvariableopCsavev2_adam_multi_head_attention_1_key_kernel_m_read_readvariableopAsavev2_adam_multi_head_attention_1_key_bias_m_read_readvariableopEsavev2_adam_multi_head_attention_1_value_kernel_m_read_readvariableopCsavev2_adam_multi_head_attention_1_value_bias_m_read_readvariableopPsavev2_adam_multi_head_attention_1_attention_output_kernel_m_read_readvariableopNsavev2_adam_multi_head_attention_1_attention_output_bias_m_read_readvariableop;savev2_adam_layer_normalization_gamma_v_read_readvariableop:savev2_adam_layer_normalization_beta_v_read_readvariableop/savev2_adam_conv1d_kernel_v_read_readvariableop-savev2_adam_conv1d_bias_v_read_readvariableop=savev2_adam_layer_normalization_1_gamma_v_read_readvariableop<savev2_adam_layer_normalization_1_beta_v_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop=savev2_adam_layer_normalization_2_gamma_v_read_readvariableop<savev2_adam_layer_normalization_2_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopCsavev2_adam_multi_head_attention_query_kernel_v_read_readvariableopAsavev2_adam_multi_head_attention_query_bias_v_read_readvariableopAsavev2_adam_multi_head_attention_key_kernel_v_read_readvariableop?savev2_adam_multi_head_attention_key_bias_v_read_readvariableopCsavev2_adam_multi_head_attention_value_kernel_v_read_readvariableopAsavev2_adam_multi_head_attention_value_bias_v_read_readvariableopNsavev2_adam_multi_head_attention_attention_output_kernel_v_read_readvariableopLsavev2_adam_multi_head_attention_attention_output_bias_v_read_readvariableopEsavev2_adam_multi_head_attention_1_query_kernel_v_read_readvariableopCsavev2_adam_multi_head_attention_1_query_bias_v_read_readvariableopCsavev2_adam_multi_head_attention_1_key_kernel_v_read_readvariableopAsavev2_adam_multi_head_attention_1_key_bias_v_read_readvariableopEsavev2_adam_multi_head_attention_1_value_kernel_v_read_readvariableopCsavev2_adam_multi_head_attention_1_value_bias_v_read_readvariableopPsavev2_adam_multi_head_attention_1_attention_output_kernel_v_read_readvariableopNsavev2_adam_multi_head_attention_1_attention_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *~
dtypest
r2p	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :�:�:��:�:�:�:��:�:�:�:	�:: : : : : :� : :� : :� : : �:�:� : :� : :� : : �:�: : : : :::::::::::::::::::�:�:��:�:�:�:��:�:�:�:	�::� : :� : :� : : �:�:� : :� : :� : : �:�:�:�:��:�:�:�:��:�:�:�:	�::� : :� : :� : : �:�:� : :� : :� : : �:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:�:!

_output_shapes	
:�:*&
$
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:*&
$
_output_shapes
:��:!

_output_shapes	
:�:!	

_output_shapes	
:�:!


_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
:� :$ 

_output_shapes

: :)%
#
_output_shapes
:� :$ 

_output_shapes

: :)%
#
_output_shapes
:� :$ 

_output_shapes

: :)%
#
_output_shapes
: �:!

_output_shapes	
:�:)%
#
_output_shapes
:� :$ 

_output_shapes

: :)%
#
_output_shapes
:� :$ 

_output_shapes

: :)%
#
_output_shapes
:� :$ 

_output_shapes

: :) %
#
_output_shapes
: �:!!

_output_shapes	
:�:"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: : &

_output_shapes
:: '

_output_shapes
:: (

_output_shapes
:: )

_output_shapes
:: *

_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::!8

_output_shapes	
:�:!9

_output_shapes	
:�:*:&
$
_output_shapes
:��:!;

_output_shapes	
:�:!<

_output_shapes	
:�:!=

_output_shapes	
:�:*>&
$
_output_shapes
:��:!?

_output_shapes	
:�:!@

_output_shapes	
:�:!A

_output_shapes	
:�:%B!

_output_shapes
:	�: C

_output_shapes
::)D%
#
_output_shapes
:� :$E 

_output_shapes

: :)F%
#
_output_shapes
:� :$G 

_output_shapes

: :)H%
#
_output_shapes
:� :$I 

_output_shapes

: :)J%
#
_output_shapes
: �:!K

_output_shapes	
:�:)L%
#
_output_shapes
:� :$M 

_output_shapes

: :)N%
#
_output_shapes
:� :$O 

_output_shapes

: :)P%
#
_output_shapes
:� :$Q 

_output_shapes

: :)R%
#
_output_shapes
: �:!S

_output_shapes	
:�:!T

_output_shapes	
:�:!U

_output_shapes	
:�:*V&
$
_output_shapes
:��:!W

_output_shapes	
:�:!X

_output_shapes	
:�:!Y

_output_shapes	
:�:*Z&
$
_output_shapes
:��:![

_output_shapes	
:�:!\

_output_shapes	
:�:!]

_output_shapes	
:�:%^!

_output_shapes
:	�: _

_output_shapes
::)`%
#
_output_shapes
:� :$a 

_output_shapes

: :)b%
#
_output_shapes
:� :$c 

_output_shapes

: :)d%
#
_output_shapes
:� :$e 

_output_shapes

: :)f%
#
_output_shapes
: �:!g

_output_shapes	
:�:)h%
#
_output_shapes
:� :$i 

_output_shapes

: :)j%
#
_output_shapes
:� :$k 

_output_shapes

: :)l%
#
_output_shapes
:� :$m 

_output_shapes

: :)n%
#
_output_shapes
: �:!o

_output_shapes	
:�:p

_output_shapes
: 
�
V
:__inference_global_average_pooling1d_layer_call_fn_4341424

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339594a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4339583

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:���������
�l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:���������

batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4339518

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:���������
�l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:���������

batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
*__inference_conv1d_1_layer_call_fn_4341328

inputs
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4339540t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�

c
D__inference_dropout_layer_call_and_return_conditional_losses_4341143

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:���������
�C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:���������
�*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:���������
�t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:���������
�n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:���������
�^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�*
�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4341234	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
�
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4341091

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:���������
�l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:���������

batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
b
)__inference_dropout_layer_call_fn_4341126

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4339869t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
S
'__inference_add_2_layer_call_fn_4341282
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_4339494e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
�
'__inference_model_layer_call_fn_4340585

inputs
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�!

unknown_11:� 

unknown_12: !

unknown_13:� 

unknown_14: !

unknown_15:� 

unknown_16: !

unknown_17: �

unknown_18:	�

unknown_19:	�

unknown_20:	�"

unknown_21:��

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4340124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4341344

inputsC
+conv1d_expanddims_1_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������
�f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
l
B__inference_add_1_layer_call_and_return_conditional_losses_4339433

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs:TP
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
b
D__inference_dropout_layer_call_and_return_conditional_losses_4339425

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:���������
�`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:���������
�"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
l
B__inference_add_3_layer_call_and_return_conditional_losses_4339559

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs:TP
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
��
�
"__inference__wrapped_model_4339289
input_1]
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:� N
<model_multi_head_attention_query_add_readvariableop_resource: [
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:� L
:model_multi_head_attention_key_add_readvariableop_resource: ]
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:� N
<model_multi_head_attention_value_add_readvariableop_resource: h
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource: �V
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:	�N
?model_layer_normalization_batchnorm_mul_readvariableop_resource:	�J
;model_layer_normalization_batchnorm_readvariableop_resource:	�P
8model_conv1d_conv1d_expanddims_1_readvariableop_resource:��;
,model_conv1d_biasadd_readvariableop_resource:	�_
Hmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:� P
>model_multi_head_attention_1_query_add_readvariableop_resource: ]
Fmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:� N
<model_multi_head_attention_1_key_add_readvariableop_resource: _
Hmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:� P
>model_multi_head_attention_1_value_add_readvariableop_resource: j
Smodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource: �X
Imodel_multi_head_attention_1_attention_output_add_readvariableop_resource:	�P
Amodel_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�L
=model_layer_normalization_1_batchnorm_readvariableop_resource:	�R
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��=
.model_conv1d_1_biasadd_readvariableop_resource:	�P
Amodel_layer_normalization_2_batchnorm_mul_readvariableop_resource:	�L
=model_layer_normalization_2_batchnorm_readvariableop_resource:	�=
*model_dense_matmul_readvariableop_resource:	�9
+model_dense_biasadd_readvariableop_resource:
identity��#model/conv1d/BiasAdd/ReadVariableOp�/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�%model/conv1d_1/BiasAdd/ReadVariableOp�1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�2model/layer_normalization/batchnorm/ReadVariableOp�6model/layer_normalization/batchnorm/mul/ReadVariableOp�4model/layer_normalization_1/batchnorm/ReadVariableOp�8model/layer_normalization_1/batchnorm/mul/ReadVariableOp�4model/layer_normalization_2/batchnorm/ReadVariableOp�8model/layer_normalization_2/batchnorm/mul/ReadVariableOp�>model/multi_head_attention/attention_output/add/ReadVariableOp�Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�1model/multi_head_attention/key/add/ReadVariableOp�;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/query/add/ReadVariableOp�=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/value/add/ReadVariableOp�=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_1/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_1/key/add/ReadVariableOp�=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/query/add/ReadVariableOp�?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/value/add/ReadVariableOp�?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
.model/multi_head_attention/query/einsum/EinsumEinsuminput_1Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
$model/multi_head_attention/query/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
,model/multi_head_attention/key/einsum/EinsumEinsuminput_1Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
"model/multi_head_attention/key/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
.model/multi_head_attention/value/einsum/EinsumEinsuminput_1Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
$model/multi_head_attention/value/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
model/multi_head_attention/MulMul(model/multi_head_attention/query/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
(model/multi_head_attention/einsum/EinsumEinsum&model/multi_head_attention/key/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbe�
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:���������

�
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0(model/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
/model/multi_head_attention/attention_output/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
model/add/addAddV2input_13model/multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:���������
��
8model/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&model/layer_normalization/moments/meanMeanmodel/add/add:z:0Amodel/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
.model/layer_normalization/moments/StopGradientStopGradient/model/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
3model/layer_normalization/moments/SquaredDifferenceSquaredDifferencemodel/add/add:z:07model/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
<model/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
*model/layer_normalization/moments/varianceMean7model/layer_normalization/moments/SquaredDifference:z:0Emodel/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(n
)model/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
'model/layer_normalization/batchnorm/addAddV23model/layer_normalization/moments/variance:output:02model/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
)model/layer_normalization/batchnorm/RsqrtRsqrt+model/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
6model/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'model/layer_normalization/batchnorm/mulMul-model/layer_normalization/batchnorm/Rsqrt:y:0>model/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
)model/layer_normalization/batchnorm/mul_1Mulmodel/add/add:z:0+model/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
)model/layer_normalization/batchnorm/mul_2Mul/model/layer_normalization/moments/mean:output:0+model/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
2model/layer_normalization/batchnorm/ReadVariableOpReadVariableOp;model_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'model/layer_normalization/batchnorm/subSub:model/layer_normalization/batchnorm/ReadVariableOp:value:0-model/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
)model/layer_normalization/batchnorm/add_1AddV2-model/layer_normalization/batchnorm/mul_1:z:0+model/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�m
"model/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
model/conv1d/Conv1D/ExpandDims
ExpandDims-model/layer_normalization/batchnorm/add_1:z:0+model/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0f
$model/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
 model/conv1d/Conv1D/ExpandDims_1
ExpandDims7model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
model/conv1d/Conv1DConv2D'model/conv1d/Conv1D/ExpandDims:output:0)model/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
model/conv1d/Conv1D/SqueezeSqueezemodel/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

����������
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv1d/BiasAddBiasAdd$model/conv1d/Conv1D/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�o
model/conv1d/ReluRelumodel/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������
�z
model/dropout/IdentityIdentitymodel/conv1d/Relu:activations:0*
T0*,
_output_shapes
:���������
��
model/add_1/addAddV2-model/layer_normalization/batchnorm/add_1:z:0model/dropout/Identity:output:0*
T0*,
_output_shapes
:���������
��
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
0model/multi_head_attention_1/query/einsum/EinsumEinsummodel/add_1/add:z:0Gmodel/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
5model/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
&model/multi_head_attention_1/query/addAddV29model/multi_head_attention_1/query/einsum/Einsum:output:0=model/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
.model/multi_head_attention_1/key/einsum/EinsumEinsummodel/add_1/add:z:0Emodel/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
3model/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
$model/multi_head_attention_1/key/addAddV27model/multi_head_attention_1/key/einsum/Einsum:output:0;model/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
0model/multi_head_attention_1/value/einsum/EinsumEinsummodel/add_1/add:z:0Gmodel/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
5model/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
&model/multi_head_attention_1/value/addAddV29model/multi_head_attention_1/value/einsum/Einsum:output:0=model/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 g
"model/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
 model/multi_head_attention_1/MulMul*model/multi_head_attention_1/query/add:z:0+model/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
*model/multi_head_attention_1/einsum/EinsumEinsum(model/multi_head_attention_1/key/add:z:0$model/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbe�
,model/multi_head_attention_1/softmax/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:���������

�
-model/multi_head_attention_1/dropout/IdentityIdentity6model/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
,model/multi_head_attention_1/einsum_1/EinsumEinsum6model/multi_head_attention_1/dropout/Identity:output:0*model/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
;model/multi_head_attention_1/attention_output/einsum/EinsumEinsum5model/multi_head_attention_1/einsum_1/Einsum:output:0Rmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
@model/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/multi_head_attention_1/attention_output/addAddV2Dmodel/multi_head_attention_1/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
model/add_2/addAddV2model/add_1/add:z:05model/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:���������
��
:model/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_1/moments/meanMeanmodel/add_2/add:z:0Cmodel/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
0model/layer_normalization_1/moments/StopGradientStopGradient1model/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
5model/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencemodel/add_2/add:z:09model/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
>model/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_1/moments/varianceMean9model/layer_normalization_1/moments/SquaredDifference:z:0Gmodel/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(p
+model/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_1/batchnorm/addAddV25model/layer_normalization_1/moments/variance:output:04model/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
+model/layer_normalization_1/batchnorm/RsqrtRsqrt-model/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
8model/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)model/layer_normalization_1/batchnorm/mulMul/model/layer_normalization_1/batchnorm/Rsqrt:y:0@model/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
+model/layer_normalization_1/batchnorm/mul_1Mulmodel/add_2/add:z:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
+model/layer_normalization_1/batchnorm/mul_2Mul1model/layer_normalization_1/moments/mean:output:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
4model/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)model/layer_normalization_1/batchnorm/subSub<model/layer_normalization_1/batchnorm/ReadVariableOp:value:0/model/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
+model/layer_normalization_1/batchnorm/add_1AddV2/model/layer_normalization_1/batchnorm/mul_1:z:0-model/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�o
$model/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
 model/conv1d_1/Conv1D/ExpandDims
ExpandDims/model/layer_normalization_1/batchnorm/add_1:z:0-model/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0h
&model/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
"model/conv1d_1/Conv1D/ExpandDims_1
ExpandDims9model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
model/conv1d_1/Conv1DConv2D)model/conv1d_1/Conv1D/ExpandDims:output:0+model/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
model/conv1d_1/Conv1D/SqueezeSqueezemodel/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

����������
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/Conv1D/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�s
model/conv1d_1/ReluRelumodel/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:���������
�~
model/dropout_1/IdentityIdentity!model/conv1d_1/Relu:activations:0*
T0*,
_output_shapes
:���������
��
model/add_3/addAddV2/model/layer_normalization_1/batchnorm/add_1:z:0!model/dropout_1/Identity:output:0*
T0*,
_output_shapes
:���������
��
:model/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_2/moments/meanMeanmodel/add_3/add:z:0Cmodel/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
0model/layer_normalization_2/moments/StopGradientStopGradient1model/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
5model/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencemodel/add_3/add:z:09model/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
>model/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_2/moments/varianceMean9model/layer_normalization_2/moments/SquaredDifference:z:0Gmodel/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(p
+model/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_2/batchnorm/addAddV25model/layer_normalization_2/moments/variance:output:04model/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
+model/layer_normalization_2/batchnorm/RsqrtRsqrt-model/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
8model/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)model/layer_normalization_2/batchnorm/mulMul/model/layer_normalization_2/batchnorm/Rsqrt:y:0@model/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
+model/layer_normalization_2/batchnorm/mul_1Mulmodel/add_3/add:z:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
+model/layer_normalization_2/batchnorm/mul_2Mul1model/layer_normalization_2/moments/mean:output:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
4model/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)model/layer_normalization_2/batchnorm/subSub<model/layer_normalization_2/batchnorm/ReadVariableOp:value:0/model/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
+model/layer_normalization_2/batchnorm/add_1AddV2/model/layer_normalization_2/batchnorm/mul_1:z:0-model/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMean/model/layer_normalization_2/batchnorm/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model/dense/MatMulMatMul,model/global_average_pooling1d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������f
IdentityIdentitymodel/dense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp3^model/layer_normalization/batchnorm/ReadVariableOp7^model/layer_normalization/batchnorm/mul/ReadVariableOp5^model/layer_normalization_1/batchnorm/ReadVariableOp9^model/layer_normalization_1/batchnorm/mul/ReadVariableOp5^model/layer_normalization_2/batchnorm/ReadVariableOp9^model/layer_normalization_2/batchnorm/mul/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_1/attention_output/add/ReadVariableOpK^model/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_1/key/add/ReadVariableOp>^model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/query/add/ReadVariableOp@^model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/value/add/ReadVariableOp@^model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp/model/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp1model/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2h
2model/layer_normalization/batchnorm/ReadVariableOp2model/layer_normalization/batchnorm/ReadVariableOp2p
6model/layer_normalization/batchnorm/mul/ReadVariableOp6model/layer_normalization/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_1/batchnorm/ReadVariableOp4model/layer_normalization_1/batchnorm/ReadVariableOp2t
8model/layer_normalization_1/batchnorm/mul/ReadVariableOp8model/layer_normalization_1/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_2/batchnorm/ReadVariableOp4model/layer_normalization_2/batchnorm/ReadVariableOp2t
8model/layer_normalization_2/batchnorm/mul/ReadVariableOp8model/layer_normalization_2/batchnorm/mul/ReadVariableOp2�
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2�
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_1/attention_output/add/ReadVariableOp@model/multi_head_attention_1/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_1/key/add/ReadVariableOp3model/multi_head_attention_1/key/add/ReadVariableOp2~
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/query/add/ReadVariableOp5model/multi_head_attention_1/query/add/ReadVariableOp2�
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/value/add/ReadVariableOp5model/multi_head_attention_1/value/add/ReadVariableOp2�
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:U Q
,
_output_shapes
:���������
�
!
_user_specified_name	input_1
�
�
'__inference_model_layer_call_fn_4339673
input_1
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�!

unknown_11:� 

unknown_12: !

unknown_13:� 

unknown_14: !

unknown_15:� 

unknown_16: !

unknown_17: �

unknown_18:	�

unknown_19:	�

unknown_20:	�"

unknown_21:��

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_4339614o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:���������
�
!
_user_specified_name	input_1
�
�
7__inference_layer_normalization_2_layer_call_fn_4341392

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4339583t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_4340463
input_1
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�!

unknown_11:� 

unknown_12: !

unknown_13:� 

unknown_14: !

unknown_15:� 

unknown_16: !

unknown_17: �

unknown_18:	�

unknown_19:	�

unknown_20:	�"

unknown_21:��

unknown_22:	�

unknown_23:	�

unknown_24:	�

unknown_25:	�

unknown_26:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_4339289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:���������
�
!
_user_specified_name	input_1
�L
�
B__inference_model_layer_call_and_return_conditional_losses_4340319
input_13
multi_head_attention_4340247:� .
multi_head_attention_4340249: 3
multi_head_attention_4340251:� .
multi_head_attention_4340253: 3
multi_head_attention_4340255:� .
multi_head_attention_4340257: 3
multi_head_attention_4340259: �+
multi_head_attention_4340261:	�*
layer_normalization_4340265:	�*
layer_normalization_4340267:	�&
conv1d_4340270:��
conv1d_4340272:	�5
multi_head_attention_1_4340277:� 0
multi_head_attention_1_4340279: 5
multi_head_attention_1_4340281:� 0
multi_head_attention_1_4340283: 5
multi_head_attention_1_4340285:� 0
multi_head_attention_1_4340287: 5
multi_head_attention_1_4340289: �-
multi_head_attention_1_4340291:	�,
layer_normalization_1_4340295:	�,
layer_normalization_1_4340297:	�(
conv1d_1_4340300:��
conv1d_1_4340302:	�,
layer_normalization_2_4340307:	�,
layer_normalization_2_4340309:	� 
dense_4340313:	�
dense_4340315:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCallinput_1input_1multi_head_attention_4340247multi_head_attention_4340249multi_head_attention_4340251multi_head_attention_4340253multi_head_attention_4340255multi_head_attention_4340257multi_head_attention_4340259multi_head_attention_4340261*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339344�
add/PartitionedCallPartitionedCallinput_15multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4339368�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_4340265layer_normalization_4340267*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4339392�
conv1d/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0conv1d_4340270conv1d_4340272*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_4339414�
dropout/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4339425�
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0 dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4339433�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0add_1/PartitionedCall:output:0multi_head_attention_1_4340277multi_head_attention_1_4340279multi_head_attention_1_4340281multi_head_attention_1_4340283multi_head_attention_1_4340285multi_head_attention_1_4340287multi_head_attention_1_4340289multi_head_attention_1_4340291*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339470�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_4339494�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_1_4340295layer_normalization_1_4340297*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4339518�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0conv1d_1_4340300conv1d_1_4340302*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4339540�
dropout_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339551�
add_3/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_3_layer_call_and_return_conditional_losses_4339559�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_2_4340307layer_normalization_2_4340309*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4339583�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339594�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4340313dense_4340315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4339607u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall:U Q
,
_output_shapes
:���������
�
!
_user_specified_name	input_1
�*
�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339470	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�O
�
B__inference_model_layer_call_and_return_conditional_losses_4340124

inputs3
multi_head_attention_4340052:� .
multi_head_attention_4340054: 3
multi_head_attention_4340056:� .
multi_head_attention_4340058: 3
multi_head_attention_4340060:� .
multi_head_attention_4340062: 3
multi_head_attention_4340064: �+
multi_head_attention_4340066:	�*
layer_normalization_4340070:	�*
layer_normalization_4340072:	�&
conv1d_4340075:��
conv1d_4340077:	�5
multi_head_attention_1_4340082:� 0
multi_head_attention_1_4340084: 5
multi_head_attention_1_4340086:� 0
multi_head_attention_1_4340088: 5
multi_head_attention_1_4340090:� 0
multi_head_attention_1_4340092: 5
multi_head_attention_1_4340094: �-
multi_head_attention_1_4340096:	�,
layer_normalization_1_4340100:	�,
layer_normalization_1_4340102:	�(
conv1d_1_4340105:��
conv1d_1_4340107:	�,
layer_normalization_2_4340112:	�,
layer_normalization_2_4340114:	� 
dense_4340118:	�
dense_4340120:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCallinputsinputsmulti_head_attention_4340052multi_head_attention_4340054multi_head_attention_4340056multi_head_attention_4340058multi_head_attention_4340060multi_head_attention_4340062multi_head_attention_4340064multi_head_attention_4340066*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339967�
add/PartitionedCallPartitionedCallinputs5multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4339368�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_4340070layer_normalization_4340072*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4339392�
conv1d/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0conv1d_4340075conv1d_4340077*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_4339414�
dropout/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4339869�
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4339433�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0add_1/PartitionedCall:output:0multi_head_attention_1_4340082multi_head_attention_1_4340084multi_head_attention_1_4340086multi_head_attention_1_4340088multi_head_attention_1_4340090multi_head_attention_1_4340092multi_head_attention_1_4340094multi_head_attention_1_4340096*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339823�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_4339494�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_1_4340100layer_normalization_1_4340102*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4339518�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0conv1d_1_4340105conv1d_1_4340107*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4339540�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339725�
add_3/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_3_layer_call_and_return_conditional_losses_4339559�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_2_4340112layer_normalization_2_4340114*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4339583�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339594�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4340118dense_4340120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4339607u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4341414

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:���������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:���������
�l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
a
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:���������

batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
�w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
C__inference_conv1d_layer_call_and_return_conditional_losses_4341116

inputsC
+conv1d_expanddims_1_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������
�f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339594

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :h
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:����������V
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�O
�
B__inference_model_layer_call_and_return_conditional_losses_4340394
input_13
multi_head_attention_4340322:� .
multi_head_attention_4340324: 3
multi_head_attention_4340326:� .
multi_head_attention_4340328: 3
multi_head_attention_4340330:� .
multi_head_attention_4340332: 3
multi_head_attention_4340334: �+
multi_head_attention_4340336:	�*
layer_normalization_4340340:	�*
layer_normalization_4340342:	�&
conv1d_4340345:��
conv1d_4340347:	�5
multi_head_attention_1_4340352:� 0
multi_head_attention_1_4340354: 5
multi_head_attention_1_4340356:� 0
multi_head_attention_1_4340358: 5
multi_head_attention_1_4340360:� 0
multi_head_attention_1_4340362: 5
multi_head_attention_1_4340364: �-
multi_head_attention_1_4340366:	�,
layer_normalization_1_4340370:	�,
layer_normalization_1_4340372:	�(
conv1d_1_4340375:��
conv1d_1_4340377:	�,
layer_normalization_2_4340382:	�,
layer_normalization_2_4340384:	� 
dense_4340388:	�
dense_4340390:
identity��conv1d/StatefulPartitionedCall� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCallinput_1input_1multi_head_attention_4340322multi_head_attention_4340324multi_head_attention_4340326multi_head_attention_4340328multi_head_attention_4340330multi_head_attention_4340332multi_head_attention_4340334multi_head_attention_4340336*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339967�
add/PartitionedCallPartitionedCallinput_15multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_4339368�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_4340340layer_normalization_4340342*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4339392�
conv1d/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0conv1d_4340345conv1d_4340347*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_4339414�
dropout/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_4339869�
add_1/PartitionedCallPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4339433�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0add_1/PartitionedCall:output:0multi_head_attention_1_4340352multi_head_attention_1_4340354multi_head_attention_1_4340356multi_head_attention_1_4340358multi_head_attention_1_4340360multi_head_attention_1_4340362multi_head_attention_1_4340364multi_head_attention_1_4340366*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4339823�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:07multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_4339494�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_1_4340370layer_normalization_1_4340372*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4339518�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0conv1d_1_4340375conv1d_1_4340377*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4339540�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339725�
add_3/PartitionedCallPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_3_layer_call_and_return_conditional_losses_4339559�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_2_4340382layer_normalization_2_4340384*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *[
fVRT
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4339583�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4339594�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4340388dense_4340390*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_4339607u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall:U Q
,
_output_shapes
:���������
�
!
_user_specified_name	input_1
�
�
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4339540

inputsC
+conv1d_expanddims_1_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

���������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�U
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������
�f
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
�
6__inference_multi_head_attention_layer_call_fn_4340949	
query	
value
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339344t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�*
�
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339344	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�*
�
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4341006	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

q
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
l
@__inference_add_layer_call_and_return_conditional_losses_4341060
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:���������
�T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
S
'__inference_add_1_layer_call_fn_4341149
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_4339433e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:���������
�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������
�:���������
�:V R
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:���������
�
"
_user_specified_name
inputs/1
�
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4341436

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :h
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:����������V
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�
d
+__inference_dropout_1_layer_call_fn_4341354

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_4339725t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
��
�
B__inference_model_layer_call_and_return_conditional_losses_4340742

inputsW
@multi_head_attention_query_einsum_einsum_readvariableop_resource:� H
6multi_head_attention_query_add_readvariableop_resource: U
>multi_head_attention_key_einsum_einsum_readvariableop_resource:� F
4multi_head_attention_key_add_readvariableop_resource: W
@multi_head_attention_value_einsum_einsum_readvariableop_resource:� H
6multi_head_attention_value_add_readvariableop_resource: b
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource: �P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�J
2conv1d_conv1d_expanddims_1_readvariableop_resource:��5
&conv1d_biasadd_readvariableop_resource:	�Y
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:� J
8multi_head_attention_1_query_add_readvariableop_resource: W
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:� H
6multi_head_attention_1_key_add_readvariableop_resource: Y
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:� J
8multi_head_attention_1_value_add_readvariableop_resource: d
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource: �R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�J
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_2_batchnorm_readvariableop_resource:	�7
$dense_matmul_readvariableop_resource:	�3
%dense_biasadd_readvariableop_resource:
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�.layer_normalization_2/batchnorm/ReadVariableOp�2layer_normalization_2/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp�:multi_head_attention_1/attention_output/add/ReadVariableOp�Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_1/key/add/ReadVariableOp�7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/query/add/ReadVariableOp�9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/value/add/ReadVariableOp�9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
(multi_head_attention/query/einsum/EinsumEinsuminputs?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
&multi_head_attention/key/einsum/EinsumEinsuminputs=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
(multi_head_attention/value/einsum/EinsumEinsuminputs?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 _
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbe�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:���������

�
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�~
add/addAddV2inputs-multi_head_attention/attention_output/add:z:0*
T0*,
_output_shapes
:���������
�|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd/add:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd/add:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
#layer_normalization/batchnorm/mul_1Muladd/add:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDims'layer_normalization/batchnorm/add_1:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:���������
�n
dropout/IdentityIdentityconv1d/Relu:activations:0*
T0*,
_output_shapes
:���������
��
	add_1/addAddV2'layer_normalization/batchnorm/add_1:z:0dropout/Identity:output:0*
T0*,
_output_shapes
:���������
��
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
*multi_head_attention_1/query/einsum/EinsumEinsumadd_1/add:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
(multi_head_attention_1/key/einsum/EinsumEinsumadd_1/add:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
*multi_head_attention_1/value/einsum/EinsumEinsumadd_1/add:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abde�
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbe�
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:���������

�
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:���������

�
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
	add_2/addAddV2add_1/add:z:0/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:���������
�~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanadd_2/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_2/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_1/batchnorm/mul_1Muladd_2/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDims)layer_normalization_1/batchnorm/add_1:z:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:���������
��
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������
�*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:���������
�*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�g
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:���������
�r
dropout_1/IdentityIdentityconv1d_1/Relu:activations:0*
T0*,
_output_shapes
:���������
��
	add_3/addAddV2)layer_normalization_1/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*,
_output_shapes
:���������
�~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_2/moments/meanMeanadd_3/add:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(�
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:���������
�
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:���������
��
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������
*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:���������
�
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:���������
�
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_2/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:���������
��
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:���������
��
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:���������
�q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean)layer_normalization_2/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������b
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitydense/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:���������
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�1
�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4341276	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������

^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������

*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������

�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������

�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�1
�
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4341048	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������

^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������

*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������

�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������

�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4341430

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
�
b
D__inference_dropout_layer_call_and_return_conditional_losses_4341131

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:���������
�`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:���������
�"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������
�:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs
�1
�
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339967	
query	
valueB
+query_einsum_einsum_readvariableop_resource:� 3
!query_add_readvariableop_resource: @
)key_einsum_einsum_readvariableop_resource:� 1
key_add_readvariableop_resource: B
+value_einsum_einsum_readvariableop_resource:� 3
!value_add_readvariableop_resource: M
6attention_output_einsum_einsum_readvariableop_resource: �;
,attention_output_add_readvariableop_resource:	�
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*#
_output_shapes
:� *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:���������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:���������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:���������

*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:���������

Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������

^
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������

*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������

�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������

�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������

�
einsum_1/EinsumEinsumdropout/dropout/Mul_1:z:0value/add:z:0*
N*
T0*/
_output_shapes
:���������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*#
_output_shapes
: �*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:���������
�*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������
�l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:���������
��
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
�
6__inference_multi_head_attention_layer_call_fn_4340971	
query	
value
unknown:� 
	unknown_0:  
	unknown_1:� 
	unknown_2:  
	unknown_3:� 
	unknown_4:  
	unknown_5: �
	unknown_6:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4339967t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:���������
�:���������
�: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:���������
�

_user_specified_namequery:SO
,
_output_shapes
:���������
�

_user_specified_namevalue
�
�
5__inference_layer_normalization_layer_call_fn_4341069

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4339392t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������
�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:���������
�
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
input_15
serving_default_input_1:0���������
�9
dense0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer-14
layer_with_weights-7
layer-15
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
�
_query_dense

_key_dense
_value_dense
_softmax
_dropout_layer
_output_dense
	variables
trainable_variables
regularization_losses
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
%axis
	&gamma
'beta
(	variables
)trainable_variables
*regularization_losses
+	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
:_query_dense
;
_key_dense
<_value_dense
=_softmax
>_dropout_layer
?_output_dense
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Haxis
	Igamma
Jbeta
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
]axis
	^gamma
_beta
`	variables
atrainable_variables
bregularization_losses
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
niter

obeta_1

pbeta_2
	qdecay
rlearning_rate&m�'m�,m�-m�Im�Jm�Om�Pm�^m�_m�hm�im�sm�tm�um�vm�wm�xm�ym�zm�{m�|m�}m�~m�m�	�m�	�m�	�m�&v�'v�,v�-v�Iv�Jv�Ov�Pv�^v�_v�hv�iv�sv�tv�uv�vv�wv�xv�yv�zv�{v�|v�}v�~v�v�	�v�	�v�	�v�"
	optimizer
�
s0
t1
u2
v3
w4
x5
y6
z7
&8
'9
,10
-11
{12
|13
}14
~15
16
�17
�18
�19
I20
J21
O22
P23
^24
_25
h26
i27"
trackable_list_wrapper
�
s0
t1
u2
v3
w4
x5
y6
z7
&8
'9
,10
-11
{12
|13
}14
~15
16
�17
�18
�19
I20
J21
O22
P23
^24
_25
h26
i27"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
�partial_output_shape
�full_output_shape

skernel
tbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

ukernel
vbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

wkernel
xbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

ykernel
zbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
X
s0
t1
u2
v3
w4
x5
y6
z7"
trackable_list_wrapper
X
s0
t1
u2
v3
w4
x5
y6
z7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
(:&�2layer_normalization/gamma
':%�2layer_normalization/beta
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:#��2conv1d/kernel
:�2conv1d/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
.	variables
/trainable_variables
0regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�partial_output_shape
�full_output_shape

{kernel
|bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

}kernel
~bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape
�kernel
	�bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
[
{0
|1
}2
~3
4
�5
�6
�7"
trackable_list_wrapper
[
{0
|1
}2
~3
4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(�2layer_normalization_1/gamma
):'�2layer_normalization_1/beta
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
':%��2conv1d_1/kernel
:�2conv1d_1/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(�2layer_normalization_2/gamma
):'�2layer_normalization_2/beta
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	�2dense/kernel
:2
dense/bias
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
8:6� 2!multi_head_attention/query/kernel
1:/ 2multi_head_attention/query/bias
6:4� 2multi_head_attention/key/kernel
/:- 2multi_head_attention/key/bias
8:6� 2!multi_head_attention/value/kernel
1:/ 2multi_head_attention/value/bias
C:A �2,multi_head_attention/attention_output/kernel
9:7�2*multi_head_attention/attention_output/bias
::8� 2#multi_head_attention_1/query/kernel
3:1 2!multi_head_attention_1/query/bias
8:6� 2!multi_head_attention_1/key/kernel
1:/ 2multi_head_attention_1/key/bias
::8� 2#multi_head_attention_1/value/kernel
3:1 2!multi_head_attention_1/value/bias
E:C �2.multi_head_attention_1/attention_output/kernel
;:9�2,multi_head_attention_1/attention_output/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
l
�correct_predictions
�total_predictions
�	variables
�	keras_api"
_tf_keras_metric
{
�true_positives
�false_positives
�false_negatives
�	variables
�	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2correct_predictions
:  (2total_predictions
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
.
�	variables"
_generic_user_object
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
]
�
thresholds
�accumulator
�	variables
�	keras_api"
_tf_keras_metric
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
: (2accumulator
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
�	variables"
_generic_user_object
-:+�2 Adam/layer_normalization/gamma/m
,:*�2Adam/layer_normalization/beta/m
*:(��2Adam/conv1d/kernel/m
:�2Adam/conv1d/bias/m
/:-�2"Adam/layer_normalization_1/gamma/m
.:,�2!Adam/layer_normalization_1/beta/m
,:*��2Adam/conv1d_1/kernel/m
!:�2Adam/conv1d_1/bias/m
/:-�2"Adam/layer_normalization_2/gamma/m
.:,�2!Adam/layer_normalization_2/beta/m
$:"	�2Adam/dense/kernel/m
:2Adam/dense/bias/m
=:;� 2(Adam/multi_head_attention/query/kernel/m
6:4 2&Adam/multi_head_attention/query/bias/m
;:9� 2&Adam/multi_head_attention/key/kernel/m
4:2 2$Adam/multi_head_attention/key/bias/m
=:;� 2(Adam/multi_head_attention/value/kernel/m
6:4 2&Adam/multi_head_attention/value/bias/m
H:F �23Adam/multi_head_attention/attention_output/kernel/m
>:<�21Adam/multi_head_attention/attention_output/bias/m
?:=� 2*Adam/multi_head_attention_1/query/kernel/m
8:6 2(Adam/multi_head_attention_1/query/bias/m
=:;� 2(Adam/multi_head_attention_1/key/kernel/m
6:4 2&Adam/multi_head_attention_1/key/bias/m
?:=� 2*Adam/multi_head_attention_1/value/kernel/m
8:6 2(Adam/multi_head_attention_1/value/bias/m
J:H �25Adam/multi_head_attention_1/attention_output/kernel/m
@:>�23Adam/multi_head_attention_1/attention_output/bias/m
-:+�2 Adam/layer_normalization/gamma/v
,:*�2Adam/layer_normalization/beta/v
*:(��2Adam/conv1d/kernel/v
:�2Adam/conv1d/bias/v
/:-�2"Adam/layer_normalization_1/gamma/v
.:,�2!Adam/layer_normalization_1/beta/v
,:*��2Adam/conv1d_1/kernel/v
!:�2Adam/conv1d_1/bias/v
/:-�2"Adam/layer_normalization_2/gamma/v
.:,�2!Adam/layer_normalization_2/beta/v
$:"	�2Adam/dense/kernel/v
:2Adam/dense/bias/v
=:;� 2(Adam/multi_head_attention/query/kernel/v
6:4 2&Adam/multi_head_attention/query/bias/v
;:9� 2&Adam/multi_head_attention/key/kernel/v
4:2 2$Adam/multi_head_attention/key/bias/v
=:;� 2(Adam/multi_head_attention/value/kernel/v
6:4 2&Adam/multi_head_attention/value/bias/v
H:F �23Adam/multi_head_attention/attention_output/kernel/v
>:<�21Adam/multi_head_attention/attention_output/bias/v
?:=� 2*Adam/multi_head_attention_1/query/kernel/v
8:6 2(Adam/multi_head_attention_1/query/bias/v
=:;� 2(Adam/multi_head_attention_1/key/kernel/v
6:4 2&Adam/multi_head_attention_1/key/bias/v
?:=� 2*Adam/multi_head_attention_1/value/kernel/v
8:6 2(Adam/multi_head_attention_1/value/bias/v
J:H �25Adam/multi_head_attention_1/attention_output/kernel/v
@:>�23Adam/multi_head_attention_1/attention_output/bias/v
�2�
'__inference_model_layer_call_fn_4339673
'__inference_model_layer_call_fn_4340524
'__inference_model_layer_call_fn_4340585
'__inference_model_layer_call_fn_4340244�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_model_layer_call_and_return_conditional_losses_4340742
B__inference_model_layer_call_and_return_conditional_losses_4340927
B__inference_model_layer_call_and_return_conditional_losses_4340319
B__inference_model_layer_call_and_return_conditional_losses_4340394�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_4339289input_1"�
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
 
�2�
6__inference_multi_head_attention_layer_call_fn_4340949
6__inference_multi_head_attention_layer_call_fn_4340971�
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4341006
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4341048�
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
%__inference_add_layer_call_fn_4341054�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
@__inference_add_layer_call_and_return_conditional_losses_4341060�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
5__inference_layer_normalization_layer_call_fn_4341069�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4341091�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
(__inference_conv1d_layer_call_fn_4341100�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
C__inference_conv1d_layer_call_and_return_conditional_losses_4341116�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
)__inference_dropout_layer_call_fn_4341121
)__inference_dropout_layer_call_fn_4341126�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_layer_call_and_return_conditional_losses_4341131
D__inference_dropout_layer_call_and_return_conditional_losses_4341143�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_add_1_layer_call_fn_4341149�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
B__inference_add_1_layer_call_and_return_conditional_losses_4341155�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
8__inference_multi_head_attention_1_layer_call_fn_4341177
8__inference_multi_head_attention_1_layer_call_fn_4341199�
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4341234
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4341276�
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_add_2_layer_call_fn_4341282�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
B__inference_add_2_layer_call_and_return_conditional_losses_4341288�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
7__inference_layer_normalization_1_layer_call_fn_4341297�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4341319�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
*__inference_conv1d_1_layer_call_fn_4341328�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4341344�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
+__inference_dropout_1_layer_call_fn_4341349
+__inference_dropout_1_layer_call_fn_4341354�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dropout_1_layer_call_and_return_conditional_losses_4341359
F__inference_dropout_1_layer_call_and_return_conditional_losses_4341371�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_add_3_layer_call_fn_4341377�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
B__inference_add_3_layer_call_and_return_conditional_losses_4341383�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
7__inference_layer_normalization_2_layer_call_fn_4341392�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4341414�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
:__inference_global_average_pooling1d_layer_call_fn_4341419
:__inference_global_average_pooling1d_layer_call_fn_4341424�
���
FullArgSpec%
args�
jself
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
annotations� *
 
�2�
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4341430
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4341436�
���
FullArgSpec%
args�
jself
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
annotations� *
 
�2�
'__inference_dense_layer_call_fn_4341445�
���
FullArgSpec
args�
jself
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
annotations� *
 
�2�
B__inference_dense_layer_call_and_return_conditional_losses_4341456�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
%__inference_signature_wrapper_4340463input_1"�
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
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 
�2��
���
FullArgSpec
args�
jself
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
annotations� *
 �
"__inference__wrapped_model_4339289�stuvwxyz&',-{|}~���IJOP^_hi5�2
+�(
&�#
input_1���������
�
� "-�*
(
dense�
dense����������
B__inference_add_1_layer_call_and_return_conditional_losses_4341155�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "*�'
 �
0���������
�
� �
'__inference_add_1_layer_call_fn_4341149�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "����������
��
B__inference_add_2_layer_call_and_return_conditional_losses_4341288�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "*�'
 �
0���������
�
� �
'__inference_add_2_layer_call_fn_4341282�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "����������
��
B__inference_add_3_layer_call_and_return_conditional_losses_4341383�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "*�'
 �
0���������
�
� �
'__inference_add_3_layer_call_fn_4341377�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "����������
��
@__inference_add_layer_call_and_return_conditional_losses_4341060�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "*�'
 �
0���������
�
� �
%__inference_add_layer_call_fn_4341054�d�a
Z�W
U�R
'�$
inputs/0���������
�
'�$
inputs/1���������
�
� "����������
��
E__inference_conv1d_1_layer_call_and_return_conditional_losses_4341344fOP4�1
*�'
%�"
inputs���������
�
� "*�'
 �
0���������
�
� �
*__inference_conv1d_1_layer_call_fn_4341328YOP4�1
*�'
%�"
inputs���������
�
� "����������
��
C__inference_conv1d_layer_call_and_return_conditional_losses_4341116f,-4�1
*�'
%�"
inputs���������
�
� "*�'
 �
0���������
�
� �
(__inference_conv1d_layer_call_fn_4341100Y,-4�1
*�'
%�"
inputs���������
�
� "����������
��
B__inference_dense_layer_call_and_return_conditional_losses_4341456]hi0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� {
'__inference_dense_layer_call_fn_4341445Phi0�-
&�#
!�
inputs����������
� "�����������
F__inference_dropout_1_layer_call_and_return_conditional_losses_4341359f8�5
.�+
%�"
inputs���������
�
p 
� "*�'
 �
0���������
�
� �
F__inference_dropout_1_layer_call_and_return_conditional_losses_4341371f8�5
.�+
%�"
inputs���������
�
p
� "*�'
 �
0���������
�
� �
+__inference_dropout_1_layer_call_fn_4341349Y8�5
.�+
%�"
inputs���������
�
p 
� "����������
��
+__inference_dropout_1_layer_call_fn_4341354Y8�5
.�+
%�"
inputs���������
�
p
� "����������
��
D__inference_dropout_layer_call_and_return_conditional_losses_4341131f8�5
.�+
%�"
inputs���������
�
p 
� "*�'
 �
0���������
�
� �
D__inference_dropout_layer_call_and_return_conditional_losses_4341143f8�5
.�+
%�"
inputs���������
�
p
� "*�'
 �
0���������
�
� �
)__inference_dropout_layer_call_fn_4341121Y8�5
.�+
%�"
inputs���������
�
p 
� "����������
��
)__inference_dropout_layer_call_fn_4341126Y8�5
.�+
%�"
inputs���������
�
p
� "����������
��
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4341430{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_4341436b8�5
.�+
%�"
inputs���������
�

 
� "&�#
�
0����������
� �
:__inference_global_average_pooling1d_layer_call_fn_4341419nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
:__inference_global_average_pooling1d_layer_call_fn_4341424U8�5
.�+
%�"
inputs���������
�

 
� "������������
R__inference_layer_normalization_1_layer_call_and_return_conditional_losses_4341319fIJ4�1
*�'
%�"
inputs���������
�
� "*�'
 �
0���������
�
� �
7__inference_layer_normalization_1_layer_call_fn_4341297YIJ4�1
*�'
%�"
inputs���������
�
� "����������
��
R__inference_layer_normalization_2_layer_call_and_return_conditional_losses_4341414f^_4�1
*�'
%�"
inputs���������
�
� "*�'
 �
0���������
�
� �
7__inference_layer_normalization_2_layer_call_fn_4341392Y^_4�1
*�'
%�"
inputs���������
�
� "����������
��
P__inference_layer_normalization_layer_call_and_return_conditional_losses_4341091f&'4�1
*�'
%�"
inputs���������
�
� "*�'
 �
0���������
�
� �
5__inference_layer_normalization_layer_call_fn_4341069Y&'4�1
*�'
%�"
inputs���������
�
� "����������
��
B__inference_model_layer_call_and_return_conditional_losses_4340319�stuvwxyz&',-{|}~���IJOP^_hi=�:
3�0
&�#
input_1���������
�
p 

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_4340394�stuvwxyz&',-{|}~���IJOP^_hi=�:
3�0
&�#
input_1���������
�
p

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_4340742�stuvwxyz&',-{|}~���IJOP^_hi<�9
2�/
%�"
inputs���������
�
p 

 
� "%�"
�
0���������
� �
B__inference_model_layer_call_and_return_conditional_losses_4340927�stuvwxyz&',-{|}~���IJOP^_hi<�9
2�/
%�"
inputs���������
�
p

 
� "%�"
�
0���������
� �
'__inference_model_layer_call_fn_4339673zstuvwxyz&',-{|}~���IJOP^_hi=�:
3�0
&�#
input_1���������
�
p 

 
� "�����������
'__inference_model_layer_call_fn_4340244zstuvwxyz&',-{|}~���IJOP^_hi=�:
3�0
&�#
input_1���������
�
p

 
� "�����������
'__inference_model_layer_call_fn_4340524ystuvwxyz&',-{|}~���IJOP^_hi<�9
2�/
%�"
inputs���������
�
p 

 
� "�����������
'__inference_model_layer_call_fn_4340585ystuvwxyz&',-{|}~���IJOP^_hi<�9
2�/
%�"
inputs���������
�
p

 
� "�����������
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4341234�{|}~���i�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p 
� "*�'
 �
0���������
�
� �
S__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_4341276�{|}~���i�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p
� "*�'
 �
0���������
�
� �
8__inference_multi_head_attention_1_layer_call_fn_4341177�{|}~���i�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p 
� "����������
��
8__inference_multi_head_attention_1_layer_call_fn_4341199�{|}~���i�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p
� "����������
��
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4341006�stuvwxyzi�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p 
� "*�'
 �
0���������
�
� �
Q__inference_multi_head_attention_layer_call_and_return_conditional_losses_4341048�stuvwxyzi�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p
� "*�'
 �
0���������
�
� �
6__inference_multi_head_attention_layer_call_fn_4340949�stuvwxyzi�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p 
� "����������
��
6__inference_multi_head_attention_layer_call_fn_4340971�stuvwxyzi�f
_�\
$�!
query���������
�
$�!
value���������
�

 

 
p 
p
� "����������
��
%__inference_signature_wrapper_4340463�stuvwxyz&',-{|}~���IJOP^_hi@�=
� 
6�3
1
input_1&�#
input_1���������
�"-�*
(
dense�
dense���������
.class public Lgnu/expr/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CAN_WRITE:I = 0x8

.field public static final CLASS_ACCESS_FLAGS:J = 0x603000000L

.field public static final EARLY_INIT:I = 0x20000000

.field public static final ENUM_ACCESS:J = 0x200000000L

.field public static final EXPORT_SPECIFIED:I = 0x400

.field public static final EXTERNAL_ACCESS:I = 0x80000

.field public static final FIELD_ACCESS_FLAGS:J = 0x78f000000L

.field public static final FIELD_OR_METHOD:I = 0x100000

.field public static final FINAL_ACCESS:J = 0x400000000L

.field static final INDIRECT_BINDING:I = 0x1

.field public static final IS_ALIAS:I = 0x100

.field public static final IS_CONSTANT:I = 0x4000

.field public static final IS_DYNAMIC:I = 0x10000000

.field static final IS_FLUID:I = 0x10

.field public static final IS_IMPORTED:I = 0x20000

.field public static final IS_NAMESPACE_PREFIX:I = 0x200000

.field static final IS_SIMPLE:I = 0x40

.field public static final IS_SINGLE_VALUE:I = 0x40000

.field public static final IS_SYNTAX:I = 0x8000

.field public static final IS_UNKNOWN:I = 0x10000

.field public static final METHOD_ACCESS_FLAGS:J = 0x40f000000L

.field public static final MODULE_REFERENCE:I = 0x40000000

.field public static final NONSTATIC_SPECIFIED:I = 0x1000

.field public static final NOT_DEFINING:I = 0x200

.field public static final PACKAGE_ACCESS:I = 0x8000000

.field static final PRIVATE:I = 0x20

.field public static final PRIVATE_ACCESS:I = 0x1000000

.field public static final PRIVATE_PREFIX:Ljava/lang/String; = "$Prvt$"

.field public static final PRIVATE_SPECIFIED:I = 0x1000000

.field static final PROCEDURE:I = 0x80

.field public static final PROTECTED_ACCESS:I = 0x2000000

.field public static final PUBLIC_ACCESS:I = 0x4000000

.field public static final STATIC_SPECIFIED:I = 0x800

.field public static final TRANSIENT_ACCESS:J = 0x100000000L

.field public static final TYPE_SPECIFIED:I = 0x2000

.field static final UNKNOWN_PREFIX:Ljava/lang/String; = "loc$"

.field public static final VOLATILE_ACCESS:J = 0x80000000L

.field static counter:I


# instance fields
.field public base:Lgnu/expr/Declaration;

.field public context:Lgnu/expr/ScopeExp;

.field evalIndex:I

.field public field:Lgnu/bytecode/Field;

.field filename:Ljava/lang/String;

.field public firstCall:Lgnu/expr/ApplyExp;

.field protected flags:J

.field protected id:I

.field makeLocationMethod:Lgnu/bytecode/Method;

.field next:Lgnu/expr/Declaration;

.field nextCapturedVar:Lgnu/expr/Declaration;

.field position:I

.field symbol:Ljava/lang/Object;

.field protected type:Lgnu/bytecode/Type;

.field protected typeExp:Lgnu/expr/Expression;

.field protected value:Lgnu/expr/Expression;

.field var:Lgnu/bytecode/Variable;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    const-wide/16 v0, 0x40

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 738
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .registers 4
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .prologue
    .line 742
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 743
    iput-object p1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 744
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    const-wide/16 v0, 0x40

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 748
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "field"    # Lgnu/bytecode/Field;

    .prologue
    .line 759
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 760
    iput-object p2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 762
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    const-wide/16 v0, 0x40

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 753
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 754
    invoke-virtual {p0, p2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 755
    return-void
.end method

.method public static followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;
    .registers 5
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 943
    :goto_0
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 945
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 946
    .local v0, "declValue":Lgnu/expr/Expression;
    instance-of v3, v0, Lgnu/expr/ReferenceExp;

    if-nez v3, :cond_11

    .line 954
    .end local v0    # "declValue":Lgnu/expr/Expression;
    :cond_10
    return-object p0

    .restart local v0    # "declValue":Lgnu/expr/Expression;
    :cond_11
    move-object v2, v0

    .line 948
    check-cast v2, Lgnu/expr/ReferenceExp;

    .line 949
    .local v2, "rexp":Lgnu/expr/ReferenceExp;
    iget-object v1, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 950
    .local v1, "orig":Lgnu/expr/Declaration;
    if-eqz v1, :cond_10

    .line 952
    move-object p0, v1

    .line 953
    goto :goto_0
.end method

.method public static getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;
    .registers 2
    .param p0, "proc"    # Lgnu/mapping/Named;

    .prologue
    .line 1097
    invoke-interface {p0}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/expr/Declaration;->getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;
    .registers 10
    .param p0, "proc"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1102
    const/4 v4, 0x0

    .line 1103
    .local v4, "procField":Lgnu/bytecode/Field;
    if-eqz p1, :cond_17

    .line 1130
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .line 1131
    .local v3, "procClass":Ljava/lang/Class;
    if-eqz v3, :cond_17

    .line 1133
    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    .line 1134
    .local v5, "procType":Lgnu/bytecode/ClassType;
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "fname":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    .line 1139
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "procClass":Ljava/lang/Class;
    .end local v5    # "procType":Lgnu/bytecode/ClassType;
    :cond_17
    if-eqz v4, :cond_38

    .line 1141
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v1

    .line 1142
    .local v1, "fflags":I
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_38

    .line 1144
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1145
    .local v0, "decl":Lgnu/expr/Declaration;
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1146
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_37

    .line 1147
    const-wide/16 v6, 0x4000

    invoke-virtual {v0, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1151
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v1    # "fflags":I
    :cond_37
    :goto_37
    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .registers 8
    .param p0, "cname"    # Ljava/lang/String;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 1061
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1062
    .local v0, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    .line 1063
    .local v2, "fld":Lgnu/bytecode/Field;
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, p1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1064
    .local v1, "decl":Lgnu/expr/Declaration;
    const-wide/16 v4, 0x4800

    invoke-virtual {v1, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1065
    return-object v1
.end method

.method public static getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .registers 11
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1077
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1078
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1079
    .local v3, "fld":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1081
    .local v4, "value":Ljava/lang/Object;
    new-instance v1, Lgnu/expr/Declaration;

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-direct {v1, p2, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1085
    .local v1, "decl":Lgnu/expr/Declaration;
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1086
    const-wide/16 v6, 0x4800

    invoke-virtual {v1, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 1087
    return-object v1

    .line 1089
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_28
    move-exception v2

    .line 1091
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Lgnu/mapping/WrappedException;

    invoke-direct {v5, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static final isUnknown(Lgnu/expr/Declaration;)Z
    .registers 3
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .prologue
    .line 711
    if-eqz p0, :cond_b

    const-wide/32 v0, 0x10000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public final allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;
    .registers 6
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 788
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-nez v3, :cond_2e

    .line 790
    :cond_a
    const/4 v2, 0x0

    .line 791
    .local v2, "vname":Ljava/lang/String;
    iget-object v3, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-eqz v3, :cond_17

    .line 792
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    :cond_17
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_34

    .line 795
    invoke-static {p0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 796
    .local v0, "base":Lgnu/expr/Declaration;
    if-nez v0, :cond_31

    const/4 v3, 0x0

    :goto_2c
    iput-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 805
    .end local v0    # "base":Lgnu/expr/Declaration;
    .end local v2    # "vname":Ljava/lang/String;
    :cond_2e
    :goto_2e
    iget-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v3

    .line 796
    .restart local v0    # "base":Lgnu/expr/Declaration;
    .restart local v2    # "vname":Ljava/lang/String;
    :cond_31
    iget-object v3, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_2c

    .line 800
    .end local v0    # "base":Lgnu/expr/Declaration;
    :cond_34
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 802
    .local v1, "type":Lgnu/bytecode/Type;
    :goto_3c
    iget-object v3, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_2e

    .line 800
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_49
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_3c
.end method

.method public compileStore(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 338
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 339
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 340
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 352
    :goto_11
    return-void

    .line 343
    :cond_12
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_27

    .line 345
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 346
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 347
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_11

    .line 350
    :cond_27
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_11
.end method

.method public getAccessFlags(S)S
    .registers 6
    .param p1, "defaultFlags"    # S

    .prologue
    .line 559
    const-wide/32 v2, 0xf000000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "flags":S
    const-wide/32 v2, 0x1000000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 563
    const/4 v1, 0x2

    int-to-short v0, v1

    .line 564
    :cond_15
    const-wide/32 v2, 0x2000000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 565
    or-int/lit8 v1, v0, 0x4

    int-to-short v0, v1

    .line 566
    :cond_21
    const-wide/32 v2, 0x4000000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 567
    or-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 571
    :cond_2d
    :goto_2d
    const-wide v2, 0x80000000L

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 572
    or-int/lit8 v1, v0, 0x40

    int-to-short v0, v1

    .line 573
    :cond_3b
    const-wide v2, 0x100000000L

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 574
    or-int/lit16 v1, v0, 0x80

    int-to-short v0, v1

    .line 575
    :cond_49
    const-wide v2, 0x200000000L

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 576
    or-int/lit16 v1, v0, 0x4000

    int-to-short v0, v1

    .line 577
    :cond_57
    const-wide v2, 0x400000000L

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 578
    or-int/lit8 v1, v0, 0x10

    int-to-short v0, v1

    .line 579
    :cond_65
    return v0

    .line 570
    .end local v0    # "flags":S
    :cond_66
    move v0, p1

    .restart local v0    # "flags":S
    goto :goto_2d
.end method

.method public final getCanCall()Z
    .registers 5

    .prologue
    .line 632
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final getCanRead()Z
    .registers 5

    .prologue
    .line 620
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final getCanWrite()Z
    .registers 5

    .prologue
    .line 642
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lgnu/expr/Declaration;->id:I

    return v0
.end method

.method public final getColumnNumber()I
    .registers 3

    .prologue
    .line 861
    iget v1, p0, Lgnu/expr/Declaration;->position:I

    and-int/lit16 v0, v1, 0xfff

    .line 862
    .local v0, "column":I
    if-nez v0, :cond_7

    const/4 v0, -0x1

    .end local v0    # "column":I
    :cond_7
    return v0
.end method

.method public final getConstantValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 410
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 411
    .local v0, "v":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_c

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_e

    .line 412
    :cond_c
    const/4 v1, 0x0

    .line 413
    .end local v0    # "v":Lgnu/expr/Expression;
    :goto_d
    return-object v1

    .restart local v0    # "v":Lgnu/expr/Expression;
    :cond_e
    check-cast v0, Lgnu/expr/QuoteExp;

    .end local v0    # "v":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_d
.end method

.method public final getContext()Lgnu/expr/ScopeExp;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlag(J)Z
    .registers 8
    .param p1, "flag"    # J

    .prologue
    .line 532
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getLineNumber()I
    .registers 3

    .prologue
    .line 855
    iget v1, p0, Lgnu/expr/Declaration;->position:I

    shr-int/lit8 v0, v1, 0xc

    .line 856
    .local v0, "line":I
    if-nez v0, :cond_7

    const/4 v0, -0x1

    .end local v0    # "line":I
    :cond_7
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_15
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v0, :cond_9

    .line 74
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 75
    :cond_9
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getTypeExp()Lgnu/expr/Expression;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v0, :cond_9

    .line 68
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 69
    :cond_9
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getValue()Lgnu/expr/Expression;
    .registers 6

    .prologue
    .line 371
    iget-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v2, v3, :cond_31

    .line 373
    iget-object v2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_2e

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 380
    :try_start_1c
    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object v3, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2e} :catch_63

    .line 400
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-object v2

    .line 387
    :cond_31
    iget-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_2e

    const-wide/16 v2, 0x2000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    iget-object v3, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eq v2, v3, :cond_2e

    .line 392
    :try_start_49
    iget-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 393
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 394
    .local v0, "t":Lgnu/bytecode/Type;
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    iput-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_60} :catch_61

    goto :goto_2e

    .line 396
    .end local v0    # "t":Lgnu/bytecode/Type;
    .end local v1    # "val":Ljava/lang/Object;
    :catch_61
    move-exception v2

    goto :goto_2e

    .line 382
    :catch_63
    move-exception v2

    goto :goto_2e
.end method

.method public getVariable()Lgnu/bytecode/Variable;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public final hasConstantValue()Z
    .registers 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 419
    .local v0, "v":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_e

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public ignorable()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 667
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 677
    :cond_e
    :goto_e
    return v2

    .line 669
    :cond_f
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-wide/32 v4, 0x10000

    invoke-virtual {p0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-nez v4, :cond_e

    .line 671
    :cond_1e
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v4

    if-nez v4, :cond_26

    move v2, v3

    .line 672
    goto :goto_e

    .line 673
    :cond_26
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 674
    .local v1, "value":Lgnu/expr/Expression;
    if-eqz v1, :cond_e

    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_e

    move-object v0, v1

    .line 676
    check-cast v0, Lgnu/expr/LambdaExp;

    .line 677
    .local v0, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_3f
    move v2, v3

    goto :goto_e
.end method

.method public final isAlias()Z
    .registers 5

    .prologue
    .line 582
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isCompiletimeConstant()Z
    .registers 3

    .prologue
    .line 429
    const-wide/16 v0, 0x4000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final isFluid()Z
    .registers 5

    .prologue
    .line 587
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final isIndirectBinding()Z
    .registers 5

    .prologue
    .line 603
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final isLexical()Z
    .registers 5

    .prologue
    .line 706
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x10010010

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final isNamespaceDecl()Z
    .registers 5

    .prologue
    .line 597
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final isPrivate()Z
    .registers 5

    .prologue
    .line 549
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final isProcedureDecl()Z
    .registers 5

    .prologue
    .line 591
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final isPublic()Z
    .registers 5

    .prologue
    .line 547
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final isSimple()Z
    .registers 5

    .prologue
    .line 124
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isStableSourceLocation()Z
    .registers 2

    .prologue
    .line 865
    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 692
    iget-object v3, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v3, :cond_d

    .line 693
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    .line 700
    :cond_c
    :goto_c
    return v1

    .line 694
    :cond_d
    const-wide/16 v4, 0x800

    invoke-virtual {p0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v3

    if-nez v3, :cond_c

    .line 697
    const-wide/16 v4, 0x1000

    invoke-virtual {p0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_25

    move v1, v2

    .line 698
    goto :goto_c

    .line 699
    :cond_25
    iget-object v3, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 700
    .local v0, "lambda":Lgnu/expr/LambdaExp;
    instance-of v3, v0, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_37

    check-cast v0, Lgnu/expr/ModuleExp;

    .end local v0    # "lambda":Lgnu/expr/LambdaExp;
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_37
    move v1, v2

    goto :goto_c
.end method

.method public final isThisParameter()Z
    .registers 3

    .prologue
    .line 660
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 40
    .param p1, "access"    # Lgnu/expr/AccessExp;
    .param p2, "flags"    # I
    .param p3, "comp"    # Lgnu/expr/Compilation;
    .param p4, "target"    # Lgnu/expr/Target;

    .prologue
    .line 164
    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v32, v0

    if-eqz v32, :cond_9

    .line 332
    :goto_8
    return-void

    .line 166
    :cond_9
    if-nez p1, :cond_51

    const/16 v23, 0x0

    .line 167
    .local v23, "owner":Lgnu/expr/Declaration;
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v32

    if-eqz v32, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v32, v0

    if-eqz v32, :cond_56

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    check-cast v25, Lgnu/expr/ReferenceExp;

    .line 170
    .local v25, "rexp":Lgnu/expr/ReferenceExp;
    move-object/from16 v0, v25

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object/from16 v22, v0

    .line 171
    .local v22, "orig":Lgnu/expr/Declaration;
    if-eqz v22, :cond_56

    and-int/lit8 v32, p2, 0x2

    if-eqz v32, :cond_3b

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v32

    if-eqz v32, :cond_56

    :cond_3b
    if-eqz v23, :cond_43

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v32

    if-nez v32, :cond_56

    .line 176
    :cond_43
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_8

    .line 166
    .end local v22    # "orig":Lgnu/expr/Declaration;
    .end local v23    # "owner":Lgnu/expr/Declaration;
    .end local v25    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_51
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    goto :goto_d

    .line 180
    .restart local v23    # "owner":Lgnu/expr/Declaration;
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v32

    if-eqz v32, :cond_7e

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/FluidLetExp;

    move/from16 v32, v0

    if-eqz v32, :cond_7e

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_8

    .line 188
    :cond_7e
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 189
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v26

    .line 190
    .local v26, "rtype":Lgnu/bytecode/Type;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v32

    if-nez v32, :cond_145

    and-int/lit8 v32, p2, 0x2

    if-eqz v32, :cond_145

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    if-nez v32, :cond_b5

    .line 194
    new-instance v32, Ljava/lang/Error;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "internal error: cannot take location of "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v32

    .line 197
    :cond_b5
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v16, v0

    .line 198
    .local v16, "immediate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v32

    if-eqz v32, :cond_fb

    .line 200
    const-string v32, "gnu.kawa.reflect.StaticFieldLocation"

    invoke-static/range {v32 .. v32}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v20

    .line 201
    .local v20, "ltype":Lgnu/bytecode/ClassType;
    const-string v33, "make"

    if-eqz v16, :cond_f8

    const/16 v32, 0x1

    :goto_d3
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    .line 210
    .local v21, "meth":Lgnu/bytecode/Method;
    :goto_dd
    if-eqz v16, :cond_11e

    .line 211
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 217
    :goto_e6
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 218
    move-object/from16 v26, v20

    .line 331
    .end local v16    # "immediate":Z
    .end local v20    # "ltype":Lgnu/bytecode/ClassType;
    .end local v21    # "meth":Lgnu/bytecode/Method;
    :cond_ed
    :goto_ed
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_8

    .line 201
    .restart local v16    # "immediate":Z
    .restart local v20    # "ltype":Lgnu/bytecode/ClassType;
    :cond_f8
    const/16 v32, 0x2

    goto :goto_d3

    .line 205
    .end local v20    # "ltype":Lgnu/bytecode/ClassType;
    :cond_fb
    const-string v32, "gnu.kawa.reflect.FieldLocation"

    invoke-static/range {v32 .. v32}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v20

    .line 206
    .restart local v20    # "ltype":Lgnu/bytecode/ClassType;
    const-string v33, "make"

    if-eqz v16, :cond_11b

    const/16 v32, 0x2

    :goto_107
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v21

    .line 208
    .restart local v21    # "meth":Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_dd

    .line 206
    .end local v21    # "meth":Lgnu/bytecode/Method;
    :cond_11b
    const/16 v32, 0x3

    goto :goto_107

    .line 214
    .restart local v21    # "meth":Lgnu/bytecode/Method;
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_e6

    .line 223
    .end local v16    # "immediate":Z
    .end local v20    # "ltype":Lgnu/bytecode/ClassType;
    .end local v21    # "meth":Lgnu/bytecode/Method;
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    if-eqz v32, :cond_227

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v32

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v32

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v32

    if-nez v32, :cond_21a

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 280
    :goto_18f
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v32

    if-eqz v32, :cond_ed

    and-int/lit8 v32, p2, 0x2

    if-nez v32, :cond_ed

    .line 286
    if-eqz p1, :cond_35e

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getFileName()Ljava/lang/String;

    move-result-object v12

    .local v12, "filename":Ljava/lang/String;
    if-eqz v12, :cond_35e

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getLineNumber()I

    move-result v18

    .local v18, "line":I
    if-lez v18, :cond_35e

    .line 292
    const-string v32, "gnu.mapping.UnboundLocationException"

    invoke-static/range {v32 .. v32}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v29

    .line 295
    .local v29, "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v17

    .line 296
    .local v17, "isInTry":Z
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getColumnNumber()I

    move-result v8

    .line 297
    .local v8, "column":I
    new-instance v27, Lgnu/bytecode/Label;

    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 298
    .local v27, "startTry":Lgnu/bytecode/Label;
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 299
    sget-object v32, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 300
    new-instance v10, Lgnu/bytecode/Label;

    invoke-direct {v10, v7}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 301
    .local v10, "endTry":Lgnu/bytecode/Label;
    invoke-virtual {v10, v7}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 302
    new-instance v9, Lgnu/bytecode/Label;

    invoke-direct {v9, v7}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 303
    .local v9, "endLabel":Lgnu/bytecode/Label;
    invoke-virtual {v9, v7}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 304
    if-eqz v17, :cond_354

    .line 305
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 308
    :goto_1dd
    const/4 v13, 0x0

    .line 309
    .local v13, "fragment_cookie":I
    if-nez v17, :cond_1e4

    .line 310
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v13

    .line 311
    :cond_1e4
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v10, v1}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 313
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 314
    invoke-virtual {v7, v12}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 315
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 316
    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 317
    const-string v32, "setLine"

    const/16 v33, 0x3

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 319
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 320
    if-eqz v17, :cond_359

    .line 321
    invoke-virtual {v9, v7}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 328
    .end local v8    # "column":I
    .end local v9    # "endLabel":Lgnu/bytecode/Label;
    .end local v10    # "endTry":Lgnu/bytecode/Label;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "fragment_cookie":I
    .end local v17    # "isInTry":Z
    .end local v18    # "line":I
    .end local v27    # "startTry":Lgnu/bytecode/Label;
    .end local v29    # "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    :goto_216
    sget-object v26, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto/16 :goto_ed

    .line 233
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_18f

    .line 235
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v32

    if-eqz v32, :cond_295

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v32, v0

    if-eqz v32, :cond_295

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v32

    if-nez v32, :cond_295

    .line 238
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v11

    .line 239
    .local v11, "env":Lgnu/mapping/Environment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-eqz v32, :cond_284

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lgnu/mapping/Symbol;

    move-object/from16 v28, v32

    .line 241
    .local v28, "sym":Lgnu/mapping/Symbol;
    :goto_257
    const/16 v24, 0x0

    .line 242
    .local v24, "property":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v32

    if-eqz v32, :cond_26b

    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v32

    if-eqz v32, :cond_26b

    .line 244
    sget-object v24, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 245
    .end local v24    # "property":Ljava/lang/Object;
    :cond_26b
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v19

    .line 246
    .local v19, "loc":Lgnu/mapping/Location;
    sget-object v32, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-static/range {v32 .. v32}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v32

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_18f

    .line 239
    .end local v19    # "loc":Lgnu/mapping/Location;
    .end local v28    # "sym":Lgnu/mapping/Symbol;
    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v28

    goto :goto_257

    .line 248
    .end local v11    # "env":Lgnu/mapping/Environment;
    :cond_295
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2ae

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v30

    .local v30, "val":Ljava/lang/Object;
    if-eqz v30, :cond_2ae

    .line 250
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_8

    .line 253
    .end local v30    # "val":Ljava/lang/Object;
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v32, v0

    sget-object v33, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_2f7

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v32

    if-eqz v32, :cond_2f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v32, v0

    if-eqz v32, :cond_2e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v32, v0

    check-cast v32, Lgnu/expr/LambdaExp;

    move-object/from16 v0, v32

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v32, v0

    if-nez v32, :cond_2f7

    .line 257
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_8

    .line 262
    :cond_2f7
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v31

    .line 264
    .local v31, "var":Lgnu/bytecode/Variable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v32, v0

    if-eqz v32, :cond_345

    if-nez v31, :cond_345

    const-wide/16 v32, 0x80

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v32

    if-nez v32, :cond_345

    move-object/from16 v0, p0

    iget-object v6, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/ClassExp;

    .local v6, "cl":Lgnu/expr/ClassExp;
    invoke-virtual {v6}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v32

    if-eqz v32, :cond_345

    .line 268
    const-string v32, "get"

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    .local v14, "getName":Ljava/lang/String;
    iget-object v0, v6, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v14, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v15

    .line 270
    .local v15, "getter":Lgnu/bytecode/Method;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 271
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto/16 :goto_18f

    .line 275
    .end local v6    # "cl":Lgnu/expr/ClassExp;
    .end local v14    # "getName":Ljava/lang/String;
    .end local v15    # "getter":Lgnu/bytecode/Method;
    :cond_345
    if-nez v31, :cond_34d

    .line 276
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v31

    .line 277
    :cond_34d
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_18f

    .line 307
    .end local v31    # "var":Lgnu/bytecode/Variable;
    .restart local v8    # "column":I
    .restart local v9    # "endLabel":Lgnu/bytecode/Label;
    .restart local v10    # "endTry":Lgnu/bytecode/Label;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v17    # "isInTry":Z
    .restart local v18    # "line":I
    .restart local v27    # "startTry":Lgnu/bytecode/Label;
    .restart local v29    # "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    :cond_354
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto/16 :goto_1dd

    .line 323
    .restart local v13    # "fragment_cookie":I
    :cond_359
    invoke-virtual {v7, v13}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto/16 :goto_216

    .line 326
    .end local v8    # "column":I
    .end local v9    # "endLabel":Lgnu/bytecode/Label;
    .end local v10    # "endTry":Lgnu/bytecode/Label;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "fragment_cookie":I
    .end local v17    # "isInTry":Z
    .end local v18    # "line":I
    .end local v27    # "startTry":Lgnu/bytecode/Label;
    .end local v29    # "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    :cond_35e
    sget-object v32, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_216
.end method

.method loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .registers 6
    .param p1, "owner"    # Lgnu/expr/Declaration;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 153
    if-nez p1, :cond_4

    .line 154
    iget-object p1, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 155
    :cond_4
    if-eqz p1, :cond_e

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v0, v1, p2, v2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 159
    :goto_d
    return-void

    .line 158
    :cond_e
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    goto :goto_d
.end method

.method public makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .registers 16
    .param p1, "frameType"    # Lgnu/bytecode/ClassType;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "value"    # Lgnu/expr/Expression;

    .prologue
    .line 965
    invoke-virtual {p0}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v1

    .line 966
    .local v1, "external_access":Z
    const/4 v2, 0x0

    .line 967
    .local v2, "fflags":I
    const-wide/16 v10, 0x4000

    invoke-virtual {p0, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    .line 968
    .local v5, "isConstant":Z
    const-wide/16 v10, 0x2000

    invoke-virtual {p0, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    .line 969
    .local v8, "typeSpecified":Z
    iget-boolean v10, p2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v10, :cond_23

    iget-object v10, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_23

    if-nez v5, :cond_23

    if-nez v8, :cond_23

    .line 971
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 975
    :cond_23
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v10

    if-nez v10, :cond_2f

    if-nez v1, :cond_2f

    iget-boolean v10, p2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v10, :cond_31

    .line 976
    :cond_2f
    or-int/lit8 v2, v2, 0x1

    .line 977
    :cond_31
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v10

    if-nez v10, :cond_59

    const-wide/32 v10, 0x10010010

    invoke-virtual {p0, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v10

    if-eqz v10, :cond_59

    :cond_4c
    instance-of v10, p3, Lgnu/expr/ClassExp;

    if-eqz v10, :cond_5b

    move-object v10, p3

    check-cast v10, Lgnu/expr/LambdaExp;

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v10

    if-nez v10, :cond_5b

    .line 985
    :cond_59
    or-int/lit8 v2, v2, 0x8

    .line 986
    :cond_5b
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-nez v10, :cond_79

    if-eqz v5, :cond_87

    invoke-virtual {p0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v10

    if-nez v10, :cond_79

    iget-object v10, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_87

    iget-object v10, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v10, Lgnu/expr/ModuleExp;

    invoke-virtual {v10}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v10

    if-eqz v10, :cond_87

    :cond_79
    iget-object v10, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ClassExp;

    if-nez v10, :cond_85

    iget-object v10, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_87

    .line 991
    :cond_85
    or-int/lit8 v2, v2, 0x10

    .line 992
    :cond_87
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 993
    .local v4, "ftype":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_9f

    sget-object v10, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v10}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-nez v10, :cond_9f

    .line 994
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 995
    :cond_9f
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v10

    if-nez v10, :cond_158

    .line 997
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, "fname":Ljava/lang/String;
    if-nez v3, :cond_d9

    .line 1001
    const-string v3, "$unnamed$0"

    .line 1002
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    .line 1013
    .local v7, "nlength":I
    :goto_b3
    const/4 v0, 0x0

    .line 1014
    .local v0, "counter":I
    :goto_b4
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    if-eqz v10, :cond_11c

    .line 1015
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x24

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b4

    .line 1006
    .end local v0    # "counter":I
    .end local v7    # "nlength":I
    :cond_d9
    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1007
    const-wide/32 v10, 0x10000

    invoke-virtual {p0, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-eqz v10, :cond_f9

    .line 1008
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loc$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    :cond_f9
    if-eqz v1, :cond_117

    const-wide/32 v10, 0x40000000

    invoke-virtual {p0, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-nez v10, :cond_117

    .line 1010
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "$Prvt$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1011
    :cond_117
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .restart local v7    # "nlength":I
    goto :goto_b3

    .line 1016
    .restart local v0    # "counter":I
    :cond_11c
    invoke-virtual {p1, v3, v4, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v10

    iput-object v10, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 1017
    instance-of v10, p3, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_158

    move-object v10, p3

    .line 1019
    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1020
    .local v9, "val":Ljava/lang/Object;
    iget-object v10, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v10

    if-eqz v10, :cond_16e

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16e

    .line 1023
    iget-object v10, p2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v10, v9}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v6

    .line 1024
    .local v6, "literal":Lgnu/expr/Literal;
    iget-object v10, v6, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v10, :cond_158

    .line 1025
    iget-object v10, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iget-object v11, p2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v6, v10, v11}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 1038
    .end local v0    # "counter":I
    .end local v3    # "fname":Ljava/lang/String;
    .end local v6    # "literal":Lgnu/expr/Literal;
    .end local v7    # "nlength":I
    .end local v9    # "val":Ljava/lang/Object;
    :cond_158
    invoke-virtual {p0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v10

    if-nez v10, :cond_16d

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-nez v10, :cond_16a

    if-eqz p3, :cond_16d

    instance-of v10, p3, Lgnu/expr/ClassExp;

    if-nez v10, :cond_16d

    .line 1042
    :cond_16a
    invoke-static {p0, p3, p2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1044
    :cond_16d
    :goto_16d
    return-void

    .line 1027
    .restart local v0    # "counter":I
    .restart local v3    # "fname":Ljava/lang/String;
    .restart local v7    # "nlength":I
    .restart local v9    # "val":Ljava/lang/Object;
    :cond_16e
    instance-of v10, v4, Lgnu/bytecode/PrimType;

    if-nez v10, :cond_17e

    const-string v10, "java.lang.String"

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_158

    .line 1030
    :cond_17e
    instance-of v10, v9, Lgnu/text/Char;

    if-eqz v10, :cond_18c

    .line 1031
    check-cast v9, Lgnu/text/Char;

    .end local v9    # "val":Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/text/Char;->intValue()I

    move-result v10

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    .line 1032
    :cond_18c
    iget-object v10, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10, v9, p1}, Lgnu/bytecode/Field;->setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V

    goto :goto_16d
.end method

.method public makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "value"    # Lgnu/expr/Expression;

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 960
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 961
    return-void
.end method

.method makeIndirectLocationFor()Lgnu/mapping/Location;
    .registers 4

    .prologue
    .line 1049
    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Symbol;

    move-object v0, v1

    .line 1051
    .local v0, "sym":Lgnu/mapping/Symbol;
    :goto_b
    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v1

    return-object v1

    .line 1049
    .end local v0    # "sym":Lgnu/mapping/Symbol;
    :cond_10
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    iget-object v2, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_b
.end method

.method public maybeIndirectBinding(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 614
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_12

    :cond_c
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v1, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v0, v1, :cond_16

    .line 616
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 617
    :cond_16
    return-void
.end method

.method public final needsContext()Z
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_12

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final needsExternalAccess()Z
    .registers 7

    .prologue
    const-wide/32 v4, 0x200020

    const-wide/32 v2, 0x80020

    .line 485
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public needsInit()Z
    .registers 3

    .prologue
    .line 686
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final nextDecl()Lgnu/expr/Declaration;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public noteValue(Lgnu/expr/Expression;)V
    .registers 5
    .param p1, "value"    # Lgnu/expr/Expression;

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_13

    .line 724
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_10

    move-object v0, p1

    .line 725
    check-cast v0, Lgnu/expr/LambdaExp;

    iput-object p0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 726
    :cond_10
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 734
    :cond_12
    :goto_12
    return-void

    .line 728
    :cond_13
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-eq v0, p1, :cond_12

    .line 730
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_23

    .line 731
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/LambdaExp;

    iput-object v2, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 732
    :cond_23
    iput-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    goto :goto_12
.end method

.method public printInfo(Lgnu/mapping/OutPort;)V
    .registers 4
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .prologue
    .line 869
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 870
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->printInfo(Ljava/lang/StringBuffer;)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public printInfo(Ljava/lang/StringBuffer;)V
    .registers 6
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 876
    iget-object v2, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 888
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    iget v2, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 904
    const-string v2, "/fl:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    iget-wide v2, p0, Lgnu/expr/Declaration;->flags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 907
    const-string v2, "(ignorable)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    :cond_28
    iget-object v1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 909
    .local v1, "tx":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 910
    .local v0, "t":Lgnu/bytecode/Type;
    if-eqz v1, :cond_52

    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_52

    .line 912
    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 920
    :cond_3c
    :goto_3c
    iget-object v2, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v2, :cond_51

    .line 922
    const-string v2, "(base:#"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    iget-object v2, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    iget v2, v2, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 924
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 926
    :cond_51
    return-void

    .line 915
    :cond_52
    iget-object v2, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v2, :cond_3c

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v2, :cond_3c

    .line 917
    const-string v2, "::"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3c
.end method

.method public pushIndirectBinding(Lgnu/expr/Compilation;)V
    .registers 8
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 771
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 772
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    if-nez v2, :cond_2a

    .line 775
    const/4 v2, 0x2

    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 776
    .local v0, "args":[Lgnu/bytecode/Type;
    const/4 v2, 0x0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v3, v0, v2

    .line 777
    const/4 v2, 0x1

    sget-object v3, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v3, v0, v2

    .line 778
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v3, "make"

    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v0, v4, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 783
    .end local v0    # "args":[Lgnu/bytecode/Type;
    :cond_2a
    iget-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 784
    return-void
.end method

.method public final setAlias(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 583
    const-wide/16 v0, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanCall()V
    .registers 5

    .prologue
    .line 636
    const/4 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-virtual {p0, v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 637
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_f

    .line 638
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 639
    :cond_f
    return-void
.end method

.method public final setCanCall(Z)V
    .registers 4
    .param p1, "called"    # Z

    .prologue
    .line 633
    const-wide/16 v0, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanRead()V
    .registers 5

    .prologue
    .line 627
    const/4 v0, 0x1

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 628
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_f

    .line 629
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 630
    :cond_f
    return-void
.end method

.method public final setCanRead(Z)V
    .registers 4
    .param p1, "read"    # Z

    .prologue
    .line 623
    const-wide/16 v0, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 624
    return-void
.end method

.method public final setCanWrite()V
    .registers 5

    .prologue
    .line 652
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 653
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_10

    .line 654
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 655
    :cond_10
    return-void
.end method

.method public final setCanWrite(Z)V
    .registers 6
    .param p1, "written"    # Z

    .prologue
    .line 646
    if-eqz p1, :cond_a

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 648
    :goto_9
    return-void

    .line 647
    :cond_a
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    goto :goto_9
.end method

.method public setCode(I)V
    .registers 4
    .param p1, "code"    # I

    .prologue
    .line 51
    if-ltz p1, :cond_a

    new-instance v0, Ljava/lang/Error;

    const-string v1, "code must be negative"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_a
    iput p1, p0, Lgnu/expr/Declaration;->id:I

    .line 53
    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .registers 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 819
    iput-object p1, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public final setFlag(J)V
    .registers 6
    .param p1, "flag"    # J

    .prologue
    .line 543
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 544
    return-void
.end method

.method public final setFlag(ZJ)V
    .registers 8
    .param p1, "setting"    # Z
    .param p2, "flag"    # J

    .prologue
    .line 537
    if-eqz p1, :cond_8

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    or-long/2addr v0, p2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 539
    :goto_7
    return-void

    .line 538
    :cond_8
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    goto :goto_7
.end method

.method public final setFluid(Z)V
    .registers 4
    .param p1, "fluid"    # Z

    .prologue
    .line 589
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setIndirectBinding(Z)V
    .registers 4
    .param p1, "indirectBinding"    # Z

    .prologue
    .line 609
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 610
    return-void
.end method

.method public final setLine(I)V
    .registers 3
    .param p1, "lineno"    # I

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setLine(II)V

    .line 834
    return-void
.end method

.method public final setLine(II)V
    .registers 4
    .param p1, "lineno"    # I
    .param p2, "colno"    # I

    .prologue
    .line 824
    if-gez p1, :cond_3

    .line 825
    const/4 p1, 0x0

    .line 826
    :cond_3
    if-gez p2, :cond_6

    .line 827
    const/4 p2, 0x0

    .line 828
    :cond_6
    shl-int/lit8 v0, p1, 0xc

    add-int/2addr v0, p2

    iput v0, p0, Lgnu/expr/Declaration;->position:I

    .line 829
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .registers 4
    .param p1, "location"    # Lgnu/text/SourceLocator;

    .prologue
    .line 813
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 814
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setLine(II)V

    .line 815
    return-void
.end method

.method public final setName(Ljava/lang/Object;)V
    .registers 2
    .param p1, "symbol"    # Ljava/lang/Object;

    .prologue
    .line 105
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final setNext(Lgnu/expr/Declaration;)V
    .registers 2
    .param p1, "next"    # Lgnu/expr/Declaration;

    .prologue
    .line 115
    iput-object p1, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setPrivate(Z)V
    .registers 4
    .param p1, "isPrivate"    # Z

    .prologue
    .line 553
    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 554
    return-void
.end method

.method public final setProcedureDecl(Z)V
    .registers 4
    .param p1, "val"    # Z

    .prologue
    .line 593
    const-wide/16 v0, 0x80

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setSimple(Z)V
    .registers 4
    .param p1, "b"    # Z

    .prologue
    .line 128
    const-wide/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 129
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setSimple(Z)V

    .line 130
    :cond_16
    return-void
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .registers 2
    .param p1, "symbol"    # Ljava/lang/Object;

    .prologue
    .line 109
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public final setSyntax()V
    .registers 3

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 135
    const-wide/32 v0, 0x2000c000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 136
    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 79
    iput-object p1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 80
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 81
    :cond_b
    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 82
    return-void
.end method

.method public final setTypeExp(Lgnu/expr/Expression;)V
    .registers 5
    .param p1, "typeExp"    # Lgnu/expr/Expression;

    .prologue
    .line 86
    iput-object p1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "t":Lgnu/bytecode/Type;
    instance-of v1, p1, Lgnu/expr/TypeValue;

    if-eqz v1, :cond_1d

    .line 89
    check-cast p1, Lgnu/expr/TypeValue;

    .end local p1    # "typeExp":Lgnu/expr/Expression;
    invoke-interface {p1}, Lgnu/expr/TypeValue;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 92
    :goto_d
    if-nez v0, :cond_11

    .line 93
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 94
    :cond_11
    iput-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 95
    iget-object v1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 96
    :cond_1c
    return-void

    .line 91
    .restart local p1    # "typeExp":Lgnu/expr/Expression;
    :cond_1d
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_d
.end method

.method public final setValue(Lgnu/expr/Expression;)V
    .registers 2
    .param p1, "value"    # Lgnu/expr/Expression;

    .prologue
    .line 405
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-void
.end method

.method shouldEarlyInit()Z
    .registers 3

    .prologue
    .line 424
    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declaration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

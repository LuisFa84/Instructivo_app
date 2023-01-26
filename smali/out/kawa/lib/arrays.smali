.class public Lkawa/lib/arrays;
.super Lgnu/expr/ModuleBody;
.source "arrays.scm"


# static fields
.field public static final $Lsarray$Gr:Ljava/lang/Class;

.field public static final $instance:Lkawa/lib/arrays;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final array:Lgnu/expr/ModuleMethod;

.field public static final array$Mnend:Lgnu/expr/ModuleMethod;

.field public static final array$Mnrank:Lgnu/expr/ModuleMethod;

.field public static final array$Mnstart:Lgnu/expr/ModuleMethod;

.field public static final array$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final shape:Lgnu/expr/ModuleMethod;

.field public static final share$Mnarray:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x2002

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "share-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "array-end"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "array-start"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "array-rank"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "shape"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "array?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v0, Lgnu/lists/Array;

    sput-object v0, Lkawa/lib/arrays;->$Lsarray$Gr:Ljava/lang/Class;

    new-instance v0, Lkawa/lib/arrays;

    invoke-direct {v0}, Lkawa/lib/arrays;-><init>()V

    sput-object v0, Lkawa/lib/arrays;->$instance:Lkawa/lib/arrays;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/arrays;->$instance:Lkawa/lib/arrays;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/arrays;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->array$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/arrays;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->shape:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/arrays;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->make$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/arrays;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->array:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/arrays;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->array$Mnrank:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/arrays;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->array$Mnstart:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/arrays;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->array$Mnend:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/arrays;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/arrays;->share$Mnarray:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/arrays;->$instance:Lkawa/lib/arrays;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs array(Lgnu/lists/Array;[Ljava/lang/Object;)Lgnu/lists/Array;
    .registers 3
    .param p0, "shape"    # Lgnu/lists/Array;
    .param p1, "vals"    # [Ljava/lang/Object;

    .prologue
    .line 16
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p1}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/Arrays;->makeSimple(Lgnu/lists/Array;Lgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static arrayEnd(Lgnu/lists/Array;I)I
    .registers 4
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "k"    # I

    .prologue
    .line 26
    invoke-interface {p0, p1}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v0

    invoke-interface {p0, p1}, Lgnu/lists/Array;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static arrayRank(Lgnu/lists/Array;)I
    .registers 2
    .param p0, "array"    # Lgnu/lists/Array;

    .prologue
    .line 20
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result v0

    return v0
.end method

.method public static arrayStart(Lgnu/lists/Array;I)I
    .registers 3
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "k"    # I

    .prologue
    .line 23
    invoke-interface {p0, p1}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v0

    return v0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 7
    instance-of v0, p0, Lgnu/lists/Array;

    return v0
.end method

.method public static makeArray(Lgnu/lists/Array;)Lgnu/lists/Array;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/arrays;->makeArray(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static makeArray(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;
    .registers 3
    .param p0, "shape"    # Lgnu/lists/Array;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-static {p0, p1}, Lgnu/kawa/functions/Arrays;->make(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static varargs shape([Ljava/lang/Object;)Lgnu/lists/Array;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 10
    invoke-static {p0}, Lgnu/kawa/functions/Arrays;->shape([Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;
    .registers 4
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "shape"    # Lgnu/lists/Array;
    .param p2, "mapper"    # Lgnu/mapping/Procedure;

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lgnu/kawa/functions/Arrays;->shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_3c

    .line 20
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 7
    :pswitch_b
    invoke-static {p2}, Lkawa/lib/arrays;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 13
    :pswitch_17
    :try_start_17
    check-cast p2, Lgnu/lists/Array;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_29

    invoke-static {p2}, Lkawa/lib/arrays;->makeArray(Lgnu/lists/Array;)Lgnu/lists/Array;

    move-result-object v0

    goto :goto_a

    .line 20
    :pswitch_1e
    :try_start_1e
    check-cast p2, Lgnu/lists/Array;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_32

    invoke-static {p2}, Lkawa/lib/arrays;->arrayRank(Lgnu/lists/Array;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    .line 13
    :catch_29
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-array"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 20
    :catch_32
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "array-rank"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_6
        :pswitch_17
        :pswitch_6
        :pswitch_6
        :pswitch_1e
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_66

    .line 26
    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    return-object v1

    .line 13
    :pswitch_c
    :try_start_c
    check-cast p2, Lgnu/lists/Array;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_39

    invoke-static {p2, p3}, Lkawa/lib/arrays;->makeArray(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v1

    goto :goto_b

    .line 23
    :pswitch_13
    :try_start_13
    check-cast p2, Lgnu/lists/Array;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_15} :catch_42

    :try_start_15
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_1c} :catch_4b

    move-result v1

    invoke-static {p2, v1}, Lkawa/lib/arrays;->arrayStart(Lgnu/lists/Array;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 26
    :pswitch_26
    :try_start_26
    check-cast p2, Lgnu/lists/Array;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_28} :catch_54

    :try_start_28
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2f} :catch_5d

    move-result v1

    invoke-static {p2, v1}, Lkawa/lib/arrays;->arrayEnd(Lgnu/lists/Array;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_b

    .line 13
    :catch_39
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-array"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 23
    :catch_42
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "array-start"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_4b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "array-start"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 26
    :catch_54
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "array-end"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_5d
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "array-end"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :pswitch_data_66
    .packed-switch 0x3
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_13
        :pswitch_26
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    .line 29
    :try_start_6
    check-cast p2, Lgnu/lists/Array;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_16

    :try_start_8
    check-cast p3, Lgnu/lists/Array;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_20

    :try_start_a
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_2a

    invoke-static {p2, p3, p4}, Lkawa/lib/arrays;->shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10

    :catch_16
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "share-array"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_20
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "share-array"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 30
    :catch_2a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "share-array"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_34

    .line 16
    :pswitch_5
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 10
    :pswitch_a
    invoke-static {p2}, Lkawa/lib/arrays;->shape([Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    goto :goto_9

    .line 16
    :pswitch_f
    const/4 v0, 0x0

    aget-object v0, p2, v0

    :try_start_12
    check-cast v0, Lgnu/lists/Array;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_14} :catch_29

    array-length v1, p2

    add-int/lit8 v2, v1, -0x1

    new-array v1, v2, [Ljava/lang/Object;

    :goto_19
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_22

    invoke-static {v0, v1}, Lkawa/lib/arrays;->array(Lgnu/lists/Array;[Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    goto :goto_9

    :cond_22
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_19

    :catch_29
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "array"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    const v0, -0xbffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_30

    .line 7
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 20
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lgnu/lists/Array;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 13
    :pswitch_1b
    instance-of v2, p2, Lgnu/lists/Array;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 7
    :pswitch_27
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_a
        :pswitch_1b
        :pswitch_a
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const v0, -0xbffff

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_3a

    .line 13
    :pswitch_a
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 26
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lgnu/lists/Array;

    if-eqz v2, :cond_e

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 23
    :pswitch_1d
    instance-of v2, p2, Lgnu/lists/Array;

    if-eqz v2, :cond_e

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 13
    :pswitch_2b
    instance-of v2, p2, Lgnu/lists/Array;

    if-eqz v2, :cond_e

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_3a
    .packed-switch 0x3
        :pswitch_2b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1d
        :pswitch_f
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2b

    .line 29
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_e

    const v0, -0xbffff

    :goto_d
    return v0

    :cond_e
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/lists/Array;

    if-nez v0, :cond_18

    const v0, -0xbfffe

    goto :goto_d

    :cond_18
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/mapping/Procedure;

    if-nez v0, :cond_22

    const v0, -0xbfffd

    goto :goto_d

    :cond_22
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x3

    iput v0, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_d

    :cond_2b
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_d
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_1a

    .line 10
    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 16
    :goto_b
    return v0

    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 10
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_13
        :pswitch_7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 3
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method

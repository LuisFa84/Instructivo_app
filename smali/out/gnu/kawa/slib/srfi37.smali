.class public Lgnu/kawa/slib/srfi37;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/option$Mntype;
    }
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi37;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/text/Char;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/text/Char;

.field static final Lit3:Lgnu/math/IntNum;

.field static final Lit4:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final args$Mnfold:Lgnu/expr/ModuleMethod;

.field public static final option:Lgnu/expr/ModuleMethod;

.field public static final option$Mnnames:Lgnu/expr/ModuleMethod;

.field public static final option$Mnoptional$Mnarg$Qu:Lgnu/expr/ModuleMethod;

.field public static final option$Mnprocessor:Lgnu/expr/ModuleMethod;

.field public static final option$Mnrequired$Mnarg$Qu:Lgnu/expr/ModuleMethod;

.field static final option$Mntype:Ljava/lang/Class;

.field public static final option$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "args-fold"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "option-processor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "option-optional-arg?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "option-required-arg?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "option-names"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "option"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "option?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    const/4 v0, 0x3

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    const/16 v0, 0x3d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    const/16 v0, 0x2d

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/srfi37;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37;-><init>()V

    sput-object v0, Lgnu/kawa/slib/srfi37;->$instance:Lgnu/kawa/slib/srfi37;

    const-class v0, Lgnu/kawa/slib/option$Mntype;

    sput-object v0, Lgnu/kawa/slib/srfi37;->option$Mntype:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/srfi37;->$instance:Lgnu/kawa/slib/srfi37;

    const/16 v2, 0x19

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->option$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4004

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->option:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->option$Mnnames:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->option$Mnrequired$Mnarg$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->option$Mnoptional$Mnarg$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1e

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->option$Mnprocessor:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1f

    sget-object v3, Lgnu/kawa/slib/srfi37;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xffc

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi37;->args$Mnfold:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/srfi37;->$instance:Lgnu/kawa/slib/srfi37;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "args"    # Ljava/lang/Object;
    .param p1, "options"    # Ljava/lang/Object;
    .param p2, "unrecognizedOptionProc"    # Ljava/lang/Object;
    .param p3, "operandProc"    # Ljava/lang/Object;
    .param p4, "argsArray"    # [Ljava/lang/Object;

    .prologue
    .line 55
    new-instance v1, Lgnu/kawa/slib/srfi37$frame;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi37$frame;-><init>()V

    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iput-object p2, v1, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    iput-object p3, v1, Lgnu/kawa/slib/srfi37$frame;->operand$Mnproc:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p4, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 61
    .local v0, "seeds":Lgnu/lists/LList;
    invoke-virtual {v1, p0, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isOption(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p0, Lgnu/kawa/slib/option$Mntype;

    return v0
.end method

.method public static isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .prologue
    .line 52
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->optional$Mnarg$Qu:Ljava/lang/Object;

    return-object v0
.end method

.method public static isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .prologue
    .line 51
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->required$Mnarg$Qu:Ljava/lang/Object;

    return-object v0
.end method

.method public static option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;
    .registers 5
    .param p0, "names"    # Ljava/lang/Object;
    .param p1, "required$Mnarg$Qu"    # Ljava/lang/Object;
    .param p2, "optional$Mnarg$Qu"    # Ljava/lang/Object;
    .param p3, "processor"    # Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lgnu/kawa/slib/option$Mntype;

    invoke-direct {v0}, Lgnu/kawa/slib/option$Mntype;-><init>()V

    .local v0, "tmp":Lgnu/kawa/slib/option$Mntype;
    iput-object p0, v0, Lgnu/kawa/slib/option$Mntype;->names:Ljava/lang/Object;

    iput-object p1, v0, Lgnu/kawa/slib/option$Mntype;->required$Mnarg$Qu:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/option$Mntype;->optional$Mnarg$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lgnu/kawa/slib/option$Mntype;->processor:Ljava/lang/Object;

    .line 10000
    return-object v0
.end method

.method public static optionNames(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .prologue
    .line 50
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->names:Ljava/lang/Object;

    return-object v0
.end method

.method public static optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;
    .registers 2
    .param p0, "obj"    # Lgnu/kawa/slib/option$Mntype;

    .prologue
    .line 53
    iget-object v0, p0, Lgnu/kawa/slib/option$Mntype;->processor:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_58

    .line 53
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 49
    :pswitch_b
    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->isOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 50
    :pswitch_17
    :try_start_17
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_33

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->optionNames(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 51
    :pswitch_1e
    :try_start_1e
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_3c

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 52
    :pswitch_25
    :try_start_25
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_27} :catch_45

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 53
    :pswitch_2c
    :try_start_2c
    check-cast p2, Lgnu/kawa/slib/option$Mntype;
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_2c .. :try_end_2e} :catch_4e

    invoke-static {p2}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :catch_33
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "option-names"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3c
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "option-required-arg?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_45
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "option-optional-arg?"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_4e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "option-processor"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    nop

    :pswitch_data_58
    .packed-switch 0x19
        :pswitch_b
        :pswitch_6
        :pswitch_17
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    .line 48
    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_27

    .line 55
    const/4 v0, 0x0

    aget-object v2, p2, v0

    const/4 v0, 0x1

    aget-object v3, p2, v0

    const/4 v0, 0x2

    aget-object v4, p2, v0

    const/4 v0, 0x3

    aget-object v5, p2, v0

    array-length v0, p2

    add-int/lit8 v1, v0, -0x4

    new-array v0, v1, [Ljava/lang/Object;

    :goto_17
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_20

    invoke-static {v2, v3, v4, v5, v0}, Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    add-int/lit8 v6, v1, 0x4

    aget-object v6, p2, v6

    aput-object v6, v0, v1

    goto :goto_17

    :cond_27
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1f
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    const v0, -0xbffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_48

    .line 49
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 53
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lgnu/kawa/slib/option$Mntype;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 52
    :pswitch_1b
    instance-of v2, p2, Lgnu/kawa/slib/option$Mntype;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 51
    :pswitch_27
    instance-of v2, p2, Lgnu/kawa/slib/option$Mntype;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 50
    :pswitch_33
    instance-of v2, p2, Lgnu/kawa/slib/option$Mntype;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 49
    :pswitch_3f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_48
    .packed-switch 0x19
        :pswitch_3f
        :pswitch_a
        :pswitch_33
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_15

    .line 48
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x4

    iput v0, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_14
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_f

    .line 55
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x5

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_e
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 36
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 47
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method

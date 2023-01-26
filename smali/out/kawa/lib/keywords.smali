.class public Lkawa/lib/keywords;
.super Lgnu/expr/ModuleBody;
.source "keywords.scm"


# static fields
.field public static final $instance:Lkawa/lib/keywords;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final keyword$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final keyword$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grkeyword:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string->keyword"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/keywords;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "keyword->string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/keywords;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "keyword?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/keywords;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/keywords;

    invoke-direct {v0}, Lkawa/lib/keywords;-><init>()V

    sput-object v0, Lkawa/lib/keywords;->$instance:Lkawa/lib/keywords;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/keywords;->$instance:Lkawa/lib/keywords;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/keywords;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/keywords;->keyword$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/keywords;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/keywords;->keyword$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/keywords;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/keywords;->string$Mn$Grkeyword:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/keywords;->$instance:Lkawa/lib/keywords;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isKeyword(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 3
    invoke-static {p0}, Lgnu/expr/Keyword;->isKeyword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static keyword$To$String(Lgnu/expr/Keyword;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "keyword"    # Lgnu/expr/Keyword;

    .prologue
    .line 6
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string$To$Keyword(Ljava/lang/String;)Lgnu/expr/Keyword;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-static {p0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_34

    .line 9
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 3
    :pswitch_a
    invoke-static {p2}, Lkawa/lib/keywords;->isKeyword(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 6
    :pswitch_16
    :try_start_16
    check-cast p2, Lgnu/expr/Keyword;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_2a

    invoke-static {p2}, Lkawa/lib/keywords;->keyword$To$String(Lgnu/expr/Keyword;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_9

    .line 9
    :pswitch_1d
    if-nez p2, :cond_25

    const/4 v0, 0x0

    :goto_20
    invoke-static {v0}, Lkawa/lib/keywords;->string$To$Keyword(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    goto :goto_9

    :cond_25
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 6
    :catch_2a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "keyword->string"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_a
        :pswitch_16
        :pswitch_1d
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_2a

    .line 3
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 9
    :goto_b
    return v0

    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 6
    :pswitch_13
    instance-of v1, p2, Lgnu/expr/Keyword;

    if-nez v1, :cond_1b

    const v0, -0xbffff

    goto :goto_b

    :cond_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 3
    :pswitch_22
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 3
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method

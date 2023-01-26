.class public Lkawa/lib/windows;
.super Lgnu/expr/ModuleBody;
.source "windows.scm"


# static fields
.field public static final $instance:Lkawa/lib/windows;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field public static final scheme$Mnwindow:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scheme-window"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/windows;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/windows;

    invoke-direct {v0}, Lkawa/lib/windows;-><init>()V

    sput-object v0, Lkawa/lib/windows;->$instance:Lkawa/lib/windows;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/windows;->$instance:Lkawa/lib/windows;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/windows;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1000

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/windows;->scheme$Mnwindow:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/windows;->$instance:Lkawa/lib/windows;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static schemeWindow()V
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkawa/lib/windows;->schemeWindow(Ljava/lang/Object;)V

    return-void
.end method

.method public static schemeWindow(Ljava/lang/Object;)V
    .registers 7
    .param p0, "share"    # Ljava/lang/Object;

    .prologue
    .line 3
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v1

    .line 4
    .local v1, "language":Lgnu/expr/Language;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v2, :cond_17

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    .line 9
    .local v0, "env":Lgnu/mapping/Environment;
    :goto_c
    new-instance v3, Lkawa/GuiConsole;

    :try_start_e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_1e

    if-eq p0, v2, :cond_1c

    const/4 v2, 0x1

    :goto_13
    invoke-direct {v3, v1, v0, v2}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    return-void

    .line 8
    .end local v0    # "env":Lgnu/mapping/Environment;
    :cond_17
    invoke-virtual {v1}, Lgnu/expr/Language;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    goto :goto_c

    .line 9
    .restart local v0    # "env":Lgnu/mapping/Environment;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_13

    :catch_1e
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "kawa.GuiConsole.<init>(gnu.expr.Language,gnu.mapping.Environment,boolean)"

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 3
    invoke-static {}, Lkawa/lib/windows;->schemeWindow()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 3
    invoke-static {p2}, Lkawa/lib/windows;->schemeWindow(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_a
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_d

    .line 3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_c
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

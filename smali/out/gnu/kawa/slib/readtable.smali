.class public Lgnu/kawa/slib/readtable;
.super Lgnu/expr/ModuleBody;
.source "readtable.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/readtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final current$Mnreadtable:Lgnu/expr/ModuleMethod;

.field public static final define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

.field public static final get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

.field public static final make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final readtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x3002

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "define-reader-ctor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get-dispatch-macro-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-dispatch-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-dispatch-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "readtable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "current-readtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/readtable;

    invoke-direct {v0}, Lgnu/kawa/slib/readtable;-><init>()V

    sput-object v0, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->current$Mnreadtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->readtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static currentReadtable()Lgnu/kawa/lispexpr/ReadTable;
    .registers 1

    .prologue
    .line 1
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    return-object v0
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .registers 3

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V
    .registers 4
    .param p0, "key"    # Lgnu/mapping/Symbol;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .prologue
    .line 82
    if-nez p0, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p2, v0, p1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getDispatchMacroTable(CC)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .registers 9
    .param p0, "disp$Mnchar"    # C
    .param p1, "sub$Mnchar"    # C
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .prologue
    .line 74
    invoke-virtual {p2, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_4
    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_f

    .line 77
    .local v0, "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    invoke-virtual {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    .line 80
    .local v1, "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    if-nez v1, :cond_e

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v1    # "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_e
    return-object v1

    .line 78
    .end local v0    # "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    :catch_f
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "disp-entry"

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static isReadtable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5
    instance-of v0, p0, Lgnu/kawa/lispexpr/ReadTable;

    return v0
.end method

.method public static makeDispatchMacroCharacter(C)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZ)V
    .registers 3

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V
    .registers 4
    .param p0, "char"    # C
    .param p1, "non$Mnterminating"    # Z
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .prologue
    .line 57
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>(Z)V

    invoke-virtual {p2, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;)V
    .registers 4

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V
    .registers 9
    .param p0, "disp$Mnchar"    # C
    .param p1, "sub$Mnchar"    # C
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .prologue
    .line 65
    invoke-virtual {p3, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_4
    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_11

    .line 71
    .local v0, "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    new-instance v1, Lgnu/kawa/lispexpr/ReaderDispatchMacro;

    :try_start_8
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_1b

    .end local p2    # "function":Ljava/lang/Object;
    invoke-direct {v1, p2}, Lgnu/kawa/lispexpr/ReaderDispatchMacro;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    return-void

    .line 70
    .end local v0    # "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    .restart local p2    # "function":Ljava/lang/Object;
    :catch_11
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "entry"

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 72
    .restart local v0    # "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    :catch_1b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static setMacroCharacter(CLjava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;Z)V
    .registers 4

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V
    .registers 8
    .param p0, "char"    # C
    .param p1, "function"    # Ljava/lang/Object;
    .param p2, "non$Mnterminating"    # Z
    .param p3, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .prologue
    .line 25
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMacro;

    :try_start_2
    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_4} :catch_b

    .end local p1    # "function":Ljava/lang/Object;
    invoke-direct {v0, p1, p2}, Lgnu/kawa/lispexpr/ReaderMacro;-><init>(Lgnu/mapping/Procedure;Z)V

    invoke-virtual {p3, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void

    .line 31
    .restart local p1    # "function":Ljava/lang/Object;
    :catch_b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1
    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_2e

    .line 57
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_9
    return-object v1

    .line 5
    :sswitch_a
    invoke-static {p2}, Lgnu/kawa/slib/readtable;->isReadtable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 57
    :sswitch_16
    :try_start_16
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1d} :catch_24

    move-result v1

    invoke-static {v1}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(C)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_9

    .line 58
    :catch_24
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :sswitch_data_2e
    .sparse-switch
        0x2 -> :sswitch_a
        0x6 -> :sswitch_16
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_8e

    .line 82
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    return-object v1

    .line 25
    :sswitch_c
    :try_start_c
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_4e

    move-result v1

    invoke-static {v1, p3}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    .line 57
    :sswitch_1a
    :try_start_1a
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_21} :catch_57

    move-result v3

    :try_start_22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_24} :catch_60

    if-eq p3, v1, :cond_2d

    move v1, v2

    :goto_27
    invoke-static {v3, v1}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    :cond_2d
    const/4 v1, 0x0

    goto :goto_27

    .line 74
    :sswitch_2f
    :try_start_2f
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_36} :catch_69

    move-result v2

    :try_start_37
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_3e
    .catch Ljava/lang/ClassCastException; {:try_start_37 .. :try_end_3e} :catch_72

    move-result v1

    invoke-static {v2, v1}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CC)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 82
    :sswitch_44
    :try_start_44
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_46} :catch_7b

    :try_start_46
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_48
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_48} :catch_84

    invoke-static {p2, p3}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    .line 25
    :catch_4e
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "set-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 58
    :catch_57
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "make-dispatch-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 60
    :catch_60
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 75
    :catch_69
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "get-dispatch-macro-table"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_72
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 82
    :catch_7b
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "define-reader-ctor"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_84
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :sswitch_data_8e
    .sparse-switch
        0x3 -> :sswitch_c
        0x6 -> :sswitch_1a
        0xb -> :sswitch_2f
        0xd -> :sswitch_44
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_e8

    .line 82
    :pswitch_9
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_d
    return-object v1

    .line 25
    :pswitch_e
    :try_start_e
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_15} :catch_72

    move-result v4

    :try_start_16
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_7b

    if-eq p4, v1, :cond_21

    move v1, v2

    :goto_1b
    invoke-static {v4, p3, v1}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    :cond_21
    move v1, v3

    goto :goto_1b

    .line 57
    :pswitch_23
    :try_start_23
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_2a} :catch_84

    move-result v1

    :try_start_2b
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_8d

    if-eq p3, v4, :cond_37

    :goto_2f
    :try_start_2f
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_96

    invoke-static {v1, v2, p4}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    :cond_37
    move v2, v3

    goto :goto_2f

    .line 65
    :pswitch_39
    :try_start_39
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_40} :catch_9f

    move-result v2

    :try_start_41
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_48
    .catch Ljava/lang/ClassCastException; {:try_start_41 .. :try_end_48} :catch_a8

    move-result v1

    invoke-static {v2, v1, p4}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    .line 74
    :pswitch_4f
    :try_start_4f
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_56
    .catch Ljava/lang/ClassCastException; {:try_start_4f .. :try_end_56} :catch_b1

    move-result v2

    :try_start_57
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_5e
    .catch Ljava/lang/ClassCastException; {:try_start_57 .. :try_end_5e} :catch_ba

    move-result v1

    :try_start_5f
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_61
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_61} :catch_c3

    invoke-static {v2, v1, p4}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    .line 82
    :pswitch_66
    :try_start_66
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_68
    .catch Ljava/lang/ClassCastException; {:try_start_66 .. :try_end_68} :catch_cc

    :try_start_68
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_6a
    .catch Ljava/lang/ClassCastException; {:try_start_68 .. :try_end_6a} :catch_d5

    :try_start_6a
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_6c
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_6c} :catch_de

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    .line 25
    :catch_72
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "set-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 28
    :catch_7b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 58
    :catch_84
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "make-dispatch-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 60
    :catch_8d
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 61
    :catch_96
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 66
    :catch_9f
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "set-dispatch-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_a8
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 75
    :catch_b1
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "get-dispatch-macro-table"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_ba
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 76
    :catch_c3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "get-dispatch-macro-table"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 82
    :catch_cc
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "define-reader-ctor"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_d5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 83
    :catch_de
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "define-reader-ctor"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :pswitch_data_e8
    .packed-switch 0x3
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_23
        :pswitch_9
        :pswitch_9
        :pswitch_39
        :pswitch_9
        :pswitch_4f
        :pswitch_9
        :pswitch_66
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_74

    .line 65
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    return-object v1

    .line 25
    :sswitch_c
    :try_start_c
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_3b

    move-result v3

    :try_start_14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_44

    if-eq p4, v1, :cond_21

    move v1, v2

    :goto_19
    :try_start_19
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1b} :catch_4e

    invoke-static {v3, p3, v1, p5}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    :cond_21
    const/4 v1, 0x0

    goto :goto_19

    .line 65
    :sswitch_23
    :try_start_23
    move-object v0, p2

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_2a} :catch_57

    move-result v2

    :try_start_2b
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_32} :catch_60

    move-result v1

    :try_start_33
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_35} :catch_6a

    invoke-static {v2, v1, p4, p5}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    .line 25
    :catch_3b
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "set-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 28
    :catch_44
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 29
    :catch_4e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-macro-character"

    invoke-direct {v2, v1, v3, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 66
    :catch_57
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "set-dispatch-macro-character"

    invoke-direct {v3, v1, v4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_60
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 68
    :catch_6a
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v1, v3, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :sswitch_data_74
    .sparse-switch
        0x3 -> :sswitch_c
        0x9 -> :sswitch_23
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1
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
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_22

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 57
    :goto_b
    return v0

    :sswitch_c
    instance-of v1, p2, Lgnu/text/Char;

    if-eqz v1, :cond_17

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    :cond_17
    const v0, -0xbffff

    goto :goto_b

    .line 5
    :sswitch_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_1b
        0x6 -> :sswitch_c
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    .prologue
    const v1, -0xbfffe

    const/4 v4, 0x2

    const/4 v2, 0x0

    const v0, -0xbffff

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_56

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 82
    :cond_11
    :goto_11
    return v0

    :sswitch_12
    instance-of v3, p2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_11

    :cond_1e
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_11

    .line 74
    :sswitch_26
    instance-of v3, p2, Lgnu/text/Char;

    if-eqz v3, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_38

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_11

    :cond_38
    move v0, v1

    goto :goto_11

    .line 57
    :sswitch_3a
    instance-of v1, p2, Lgnu/text/Char;

    if-eqz v1, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_11

    .line 25
    :sswitch_48
    instance-of v1, p2, Lgnu/text/Char;

    if-eqz v1, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    goto :goto_11

    .line 4294967295
    :sswitch_data_56
    .sparse-switch
        0x3 -> :sswitch_48
        0x6 -> :sswitch_3a
        0xb -> :sswitch_26
        0xd -> :sswitch_12
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12

    .prologue
    const v2, -0xbfffd

    const v1, -0xbfffe

    const/4 v5, 0x3

    const/4 v3, 0x0

    const v0, -0xbffff

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_8a

    .line 25
    :pswitch_10
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 82
    :cond_14
    :goto_14
    return v0

    :pswitch_15
    instance-of v4, p2, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_14

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_14

    :cond_21
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_29

    move v0, v2

    goto :goto_14

    :cond_29
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 74
    :pswitch_31
    instance-of v4, p2, Lgnu/text/Char;

    if-eqz v4, :cond_14

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_43

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_45

    move v0, v2

    goto :goto_14

    :cond_43
    move v0, v1

    goto :goto_14

    :cond_45
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 65
    :pswitch_4d
    instance-of v2, p2, Lgnu/text/Char;

    if-eqz v2, :cond_14

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_61

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    :cond_61
    move v0, v1

    goto :goto_14

    .line 57
    :pswitch_63
    instance-of v1, p2, Lgnu/text/Char;

    if-eqz v1, :cond_14

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v0, :cond_71

    move v0, v2

    goto :goto_14

    :cond_71
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 25
    :pswitch_79
    instance-of v1, p2, Lgnu/text/Char;

    if-eqz v1, :cond_14

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 4294967295
    nop

    :pswitch_data_8a
    .packed-switch 0x3
        :pswitch_79
        :pswitch_10
        :pswitch_10
        :pswitch_63
        :pswitch_10
        :pswitch_10
        :pswitch_4d
        :pswitch_10
        :pswitch_31
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const v0, -0xbfffc

    const v2, -0xbffff

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_4a

    .line 25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 65
    :cond_11
    :goto_11
    return v0

    :sswitch_12
    instance-of v3, p2, Lgnu/text/Char;

    if-eqz v3, :cond_2c

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Lgnu/text/Char;

    if-eqz v2, :cond_2e

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-eqz v2, :cond_11

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    :cond_2c
    move v0, v2

    goto :goto_11

    :cond_2e
    const v0, -0xbfffe

    goto :goto_11

    .line 25
    :sswitch_32
    instance-of v3, p2, Lgnu/text/Char;

    if-eqz v3, :cond_48

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-eqz v2, :cond_11

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    :cond_48
    move v0, v2

    goto :goto_11

    .line 4294967295
    :sswitch_data_4a
    .sparse-switch
        0x3 -> :sswitch_32
        0x9 -> :sswitch_12
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method

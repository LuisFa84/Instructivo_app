.class public Lkawa/lib/kawa/regex;
.super Lgnu/expr/ModuleBody;
.source "regex.scm"


# static fields
.field public static final $instance:Lkawa/lib/kawa/regex;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final regex$Mnmatch:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnquote:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnsplit:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x3003

    const/16 v5, 0x4002

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-replace*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-replace"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-split"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-match-positions"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-match"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-match?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "loop"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/kawa/regex;

    invoke-direct {v0}, Lkawa/lib/kawa/regex;-><init>()V

    sput-object v0, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnquote:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnmatch:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnsplit:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnreplace:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z
    .registers 10
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 9
    instance-of v2, p0, Ljava/util/regex/Pattern;

    if-eqz v2, :cond_13

    :try_start_4
    check-cast p0, Ljava/util/regex/Pattern;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_1c

    .end local p0    # "re":Ljava/lang/Object;
    move-object v1, p0

    .line 12
    .local v1, "rex":Ljava/util/regex/Pattern;
    :goto_7
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 13
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2

    .line 9
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_7

    .line 11
    :catch_1c
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "rex"

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .registers 12
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 16
    instance-of v4, p0, Ljava/util/regex/Pattern;

    if-eqz v4, :cond_1e

    :try_start_4
    check-cast p0, Ljava/util/regex/Pattern;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_43

    .end local p0    # "re":Ljava/lang/Object;
    move-object v3, p0

    .line 19
    .local v3, "rex":Ljava/util/regex/Pattern;
    :goto_7
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 20
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 22
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 24
    .local v0, "igroup":I
    :goto_1a
    if-gez v0, :cond_27

    move-object v4, v5

    .line 29
    .end local v0    # "igroup":I
    :goto_1d
    return-object v4

    .line 16
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    goto :goto_7

    .line 25
    .end local p0    # "re":Ljava/lang/Object;
    .restart local v0    # "igroup":I
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "rex":Ljava/util/regex/Pattern;
    :cond_27
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    .line 28
    if-gez p2, :cond_37

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    :goto_2f
    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .local v2, "r":Lgnu/lists/Pair;
    add-int/lit8 v0, v0, -0x1

    move-object v5, v2

    goto :goto_1a

    .end local v2    # "r":Lgnu/lists/Pair;
    :cond_37
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2f

    .end local v0    # "igroup":I
    :cond_40
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1d

    .line 18
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :catch_43
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "rex"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .registers 12
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 33
    instance-of v4, p0, Ljava/util/regex/Pattern;

    if-eqz v4, :cond_1e

    :try_start_4
    check-cast p0, Ljava/util/regex/Pattern;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_4b

    .end local p0    # "re":Ljava/lang/Object;
    move-object v3, p0

    .line 36
    .local v3, "rex":Ljava/util/regex/Pattern;
    :goto_7
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 37
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 39
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 41
    .local v0, "igroup":I
    :goto_1a
    if-gez v0, :cond_27

    move-object v4, v5

    .line 46
    .end local v0    # "igroup":I
    :goto_1d
    return-object v4

    .line 33
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    goto :goto_7

    .line 42
    .end local p0    # "re":Ljava/lang/Object;
    .restart local v0    # "igroup":I
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "rex":Ljava/util/regex/Pattern;
    :cond_27
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    .line 45
    if-gez p2, :cond_37

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    :goto_2f
    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .local v2, "r":Lgnu/lists/Pair;
    add-int/lit8 v0, v0, -0x1

    move-object v5, v2

    goto :goto_1a

    .end local v2    # "r":Lgnu/lists/Pair;
    :cond_37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_2f

    .end local v0    # "igroup":I
    :cond_48
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1d

    .line 35
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :catch_4b
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "rex"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 6
    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "repl"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 55
    instance-of v4, p0, Ljava/util/regex/Pattern;

    if-eqz v4, :cond_38

    :try_start_5
    check-cast p0, Ljava/util/regex/Pattern;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_4d

    .end local p0    # "re":Ljava/lang/Object;
    move-object v1, p0

    .line 57
    .local v1, "rex":Ljava/util/regex/Pattern;
    :goto_8
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 59
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 62
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_41

    :goto_29
    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    :cond_2d
    :goto_2d
    invoke-virtual {v0, v2, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/CharSequence;
    :cond_37
    return-object p1

    .line 55
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    :cond_38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_8

    .line 62
    .end local p0    # "re":Ljava/lang/Object;
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    .restart local v1    # "rex":Ljava/util/regex/Pattern;
    .restart local v2    # "sbuf":Ljava/lang/StringBuffer;
    :cond_41
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 61
    :cond_46
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 56
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .restart local p0    # "re":Ljava/lang/Object;
    :catch_4d
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "rex"

    const/4 v6, -0x2

    invoke-direct {v4, v3, v5, v6, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public static regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "repl"    # Ljava/lang/Object;

    .prologue
    .line 68
    new-instance v1, Lkawa/lib/kawa/regex$frame;

    invoke-direct {v1}, Lkawa/lib/kawa/regex$frame;-><init>()V

    iput-object p2, v1, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    .line 69
    instance-of v2, p0, Ljava/util/regex/Pattern;

    if-eqz v2, :cond_2c

    :try_start_b
    check-cast p0, Ljava/util/regex/Pattern;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_46

    .end local p0    # "re":Ljava/lang/Object;
    move-object v0, p0

    .line 70
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_e
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iput-object v2, v1, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    .line 69
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, v1, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    .line 72
    iget-object v2, v1, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 73
    iget-object v2, v1, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    iput-object v2, v1, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    invoke-virtual {v1}, Lkawa/lib/kawa/regex$frame;->lambda1loop()Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_2b
    return-object v1

    .line 69
    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_e

    .line 82
    .end local p0    # "re":Ljava/lang/Object;
    .restart local v0    # "rex":Ljava/util/regex/Pattern;
    :cond_35
    iget-object v2, v1, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, v1, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    if-nez v1, :cond_41

    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    .line 69
    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :catch_46
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "rex"

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .registers 8
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    instance-of v2, p0, Ljava/util/regex/Pattern;

    if-eqz v2, :cond_12

    :try_start_4
    check-cast p0, Ljava/util/regex/Pattern;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_1b

    .end local p0    # "re":Ljava/lang/Object;
    move-object v1, p0

    .line 52
    .local v1, "rex":Ljava/util/regex/Pattern;
    :goto_7
    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v2

    return-object v2

    .line 50
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .restart local p0    # "re":Ljava/lang/Object;
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    goto :goto_7

    .line 51
    :catch_1b
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "rex"

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 6
    :try_start_5
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_11

    invoke-static {p2}, Lkawa/lib/kawa/regex;->regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :catch_11
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "regex-quote"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v3, 0x2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_52

    .line 50
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 9
    :sswitch_b
    :try_start_b
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_2e

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 16
    :sswitch_19
    :try_start_19
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1b} :catch_37

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 33
    :sswitch_20
    :try_start_20
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_22} :catch_40

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 50
    :sswitch_27
    :try_start_27
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_29} :catch_49

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object v0

    goto :goto_a

    .line 9
    :catch_2e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "regex-match?"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 16
    :catch_37
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "regex-match"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 33
    :catch_40
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "regex-match-positions"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 50
    :catch_49
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "regex-split"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_52
    .sparse-switch
        0x3 -> :sswitch_b
        0x6 -> :sswitch_19
        0x9 -> :sswitch_20
        0xc -> :sswitch_27
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_96

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    return-object v1

    .line 9
    :sswitch_c
    :try_start_c
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_4e

    :try_start_e
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_15} :catch_57

    move-result v1

    invoke-static {p2, p3, v1}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_1f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 16
    :sswitch_22
    :try_start_22
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_24} :catch_60

    :try_start_24
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_2b} :catch_69

    move-result v1

    invoke-static {p2, p3, v1}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 33
    :sswitch_31
    :try_start_31
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_33
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_33} :catch_72

    :try_start_33
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_3a} :catch_7b

    move-result v1

    invoke-static {p2, p3, v1}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 55
    :sswitch_40
    :try_start_40
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_40 .. :try_end_42} :catch_84

    invoke-static {p2, p3, p4}, Lkawa/lib/kawa/regex;->regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 68
    :sswitch_47
    :try_start_47
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_47 .. :try_end_49} :catch_8d

    invoke-static {p2, p3, p4}, Lkawa/lib/kawa/regex;->regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 9
    :catch_4e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match?"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 10
    :catch_57
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match?"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 16
    :catch_60
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 17
    :catch_69
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 33
    :catch_72
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match-positions"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 34
    :catch_7b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match-positions"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 55
    :catch_84
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-replace"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 68
    :catch_8d
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-replace*"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :sswitch_data_96
    .sparse-switch
        0x3 -> :sswitch_c
        0x6 -> :sswitch_22
        0x9 -> :sswitch_31
        0xd -> :sswitch_40
        0xe -> :sswitch_47
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_aa

    .line 33
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    .line 9
    :sswitch_d
    :try_start_d
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_59

    :try_start_f
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_16} :catch_62

    move-result v2

    :try_start_17
    move-object v0, p5

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_6b

    move-result v1

    invoke-static {p2, p3, v2, v1}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    .line 16
    :sswitch_2b
    :try_start_2b
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_74

    :try_start_2d
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_34} :catch_7d

    move-result v2

    :try_start_35
    move-object v0, p5

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_3c} :catch_86

    move-result v1

    invoke-static {p2, p3, v2, v1}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    .line 33
    :sswitch_42
    :try_start_42
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_44} :catch_8f

    :try_start_44
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_4b} :catch_98

    move-result v2

    :try_start_4c
    move-object v0, p5

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_53
    .catch Ljava/lang/ClassCastException; {:try_start_4c .. :try_end_53} :catch_a1

    move-result v1

    invoke-static {p2, p3, v2, v1}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    .line 9
    :catch_59
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match?"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 10
    :catch_62
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match?"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_6b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match?"

    invoke-direct {v2, v1, v3, v6, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 16
    :catch_74
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 17
    :catch_7d
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_86
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match"

    invoke-direct {v2, v1, v3, v6, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 33
    :catch_8f
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match-positions"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 34
    :catch_98
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match-positions"

    invoke-direct {v2, v1, v3, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_a1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "regex-match-positions"

    invoke-direct {v2, v1, v3, v6, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :sswitch_data_aa
    .sparse-switch
        0x3 -> :sswitch_d
        0x6 -> :sswitch_2b
        0x9 -> :sswitch_42
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const v0, -0xbffff

    goto :goto_11

    :cond_16
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_11
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const v1, -0xbfffe

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_4c

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 50
    :goto_e
    return v0

    :sswitch_f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1c

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_1c
    move v0, v1

    goto :goto_e

    .line 33
    :sswitch_1e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2b

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_2b
    move v0, v1

    goto :goto_e

    .line 16
    :sswitch_2d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3a

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_3a
    move v0, v1

    goto :goto_e

    .line 9
    :sswitch_3c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_49

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_49
    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :sswitch_data_4c
    .sparse-switch
        0x3 -> :sswitch_3c
        0x6 -> :sswitch_2d
        0x9 -> :sswitch_1e
        0xc -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const v1, -0xbfffe

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_64

    .line 9
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 68
    :goto_e
    return v0

    :sswitch_f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_1e
    move v0, v1

    goto :goto_e

    .line 55
    :sswitch_20
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2f

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_2f
    move v0, v1

    goto :goto_e

    .line 33
    :sswitch_31
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_40

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_40
    move v0, v1

    goto :goto_e

    .line 16
    :sswitch_42
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_51

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_51
    move v0, v1

    goto :goto_e

    .line 9
    :sswitch_53
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_62

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_62
    move v0, v1

    goto :goto_e

    .line 4294967295
    :sswitch_data_64
    .sparse-switch
        0x3 -> :sswitch_53
        0x6 -> :sswitch_42
        0x9 -> :sswitch_31
        0xd -> :sswitch_20
        0xe -> :sswitch_f
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    const v1, -0xbfffe

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_48

    .line 9
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 33
    :goto_e
    return v0

    :sswitch_f
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_20

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_20
    move v0, v1

    goto :goto_e

    .line 16
    :sswitch_22
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_33

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_33
    move v0, v1

    goto :goto_e

    .line 9
    :sswitch_35
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v2, p3, Ljava/lang/CharSequence;

    if-eqz v2, :cond_46

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_46
    move v0, v1

    goto :goto_e

    .line 4294967295
    :sswitch_data_48
    .sparse-switch
        0x3 -> :sswitch_35
        0x6 -> :sswitch_22
        0x9 -> :sswitch_f
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method

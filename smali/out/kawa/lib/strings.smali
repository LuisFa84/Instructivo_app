.class public Lkawa/lib/strings;
.super Lgnu/expr/ModuleBody;
.source "strings.scm"


# static fields
.field public static final $instance:Lkawa/lib/strings;

.field public static final $make$string$:Lgnu/expr/ModuleMethod;

.field static final Lit0:Lgnu/text/Char;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final list$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final string$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grlist:Lgnu/expr/ModuleMethod;

.field public static final string$Mnappend:Lgnu/expr/ModuleMethod;

.field public static final string$Mnappend$Slshared:Lgnu/expr/ModuleMethod;

.field public static final string$Mncapitalize:Lgnu/expr/ModuleMethod;

.field public static final string$Mncapitalize$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final string$Mndowncase$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final string$Mnref:Lgnu/expr/ModuleMethod;

.field public static final string$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnupcase$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Qu:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static varargs $make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 12
    array-length v1, p0

    .line 14
    .local v1, "n":I
    new-instance v2, Lgnu/lists/FString;

    invoke-direct {v2, v1}, Lgnu/lists/FString;-><init>(I)V

    .line 15
    .local v2, "str":Lgnu/lists/FString;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 17
    aget-object v3, p0, v0

    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v3}, Lgnu/text/Char;->charValue()C

    move-result v3

    invoke-virtual {v2, v0, v3}, Lgnu/lists/FString;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 15
    :cond_17
    return-object v2
.end method

.method public static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x3003

    const/16 v7, -0x1000

    const/16 v6, 0x2002

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-append/shared"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-append"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-capitalize"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-capitalize!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-downcase!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-upcase!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-fill!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-copy"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "list->string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string->list"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "substring"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string>=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string<=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string>?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string<?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-set!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-length"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$make$string$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v0, 0x20

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lkawa/lib/strings;->Lit0:Lgnu/text/Char;

    new-instance v0, Lkawa/lib/strings;

    invoke-direct {v0}, Lkawa/lib/strings;-><init>()V

    sput-object v0, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/strings;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/strings;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/strings;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->$make$string$:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/strings;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/strings;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/strings;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/strings;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/strings;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/strings;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lkawa/lib/strings;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/strings;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/strings;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/strings;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mn$Grlist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lkawa/lib/strings;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->list$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lkawa/lib/strings;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lkawa/lib/strings;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/strings;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnupcase$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lkawa/lib/strings;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mndowncase$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/strings;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mncapitalize$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lkawa/lib/strings;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mncapitalize:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lkawa/lib/strings;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lkawa/lib/strings;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnappend$Slshared:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isString(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 6
    instance-of v0, p0, Ljava/lang/CharSequence;

    return v0
.end method

.method public static isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isString$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isString$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isString$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isString$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static list$To$String(Lgnu/lists/LList;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "list"    # Lgnu/lists/LList;

    .prologue
    const/4 v8, -0x2

    .line 56
    invoke-static {p0}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v2

    .line 58
    .local v2, "len":I
    new-instance v4, Lgnu/lists/FString;

    invoke-direct {v4, v2}, Lgnu/lists/FString;-><init>(I)V

    .line 59
    .local v4, "result":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_53

    .line 61
    :try_start_d
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_11} :catch_2d

    .line 62
    .local v3, "pair":Lgnu/lists/Pair;
    :try_start_11
    move-object v0, v4

    check-cast v0, Lgnu/lists/CharSeq;

    move-object v5, v0
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_15} :catch_36

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    :try_start_19
    move-object v0, v7

    check-cast v0, Lgnu/text/Char;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_20} :catch_40

    move-result v6

    invoke-static {v5, v1, v6}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 63
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "list":Lgnu/lists/LList;
    :try_start_28
    check-cast p0, Lgnu/lists/LList;
    :try_end_2a
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2a} :catch_4a

    .restart local p0    # "list":Lgnu/lists/LList;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 61
    .end local v3    # "pair":Lgnu/lists/Pair;
    :catch_2d
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "pair"

    invoke-direct {v6, v5, v7, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 62
    .restart local v3    # "pair":Lgnu/lists/Pair;
    :catch_36
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-set!"

    const/4 v8, 0x0

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_40
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v8, "string-set!"

    const/4 v9, 0x2

    invoke-direct {v6, v5, v8, v9, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 63
    .end local p0    # "list":Lgnu/lists/LList;
    :catch_4a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "list"

    invoke-direct {v6, v5, v7, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 59
    .end local v3    # "pair":Lgnu/lists/Pair;
    .restart local p0    # "list":Lgnu/lists/LList;
    :cond_53
    return-object v4
.end method

.method public static makeString(I)Ljava/lang/CharSequence;
    .registers 2

    sget-object v0, Lkawa/lib/strings;->Lit0:Lgnu/text/Char;

    invoke-static {p0, v0}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "n"    # I
    .param p1, "ch"    # Ljava/lang/Object;

    .prologue
    .line 9
    new-instance v2, Lgnu/lists/FString;

    :try_start_2
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_9} :catch_e

    move-result v1

    invoke-direct {v2, p0, v1}, Lgnu/lists/FString;-><init>(IC)V

    return-object v2

    :catch_e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.lists.FString.<init>(int,char)"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static string$To$List(Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 50
    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    .local v1, "result":Lgnu/lists/LList;
    move-object v2, v1

    .line 51
    .end local v1    # "result":Lgnu/lists/LList;
    .local v2, "result":Lgnu/lists/LList;
    :goto_7
    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    if-gez v0, :cond_c

    .line 54
    return-object v2

    :cond_c
    new-instance v1, Lgnu/lists/Pair;

    invoke-static {p0, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v2    # "result":Lgnu/lists/LList;
    .restart local v1    # "result":Lgnu/lists/LList;
    move-object v2, v1

    .end local v1    # "result":Lgnu/lists/LList;
    .restart local v2    # "result":Lgnu/lists/LList;
    goto :goto_7
.end method

.method public static varargs stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    .registers 3
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 88
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0}, Lgnu/lists/FString;-><init>()V

    .line 90
    .local v0, "str":Lgnu/lists/FString;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/lists/FString;->addAllStrings([Ljava/lang/Object;I)V

    .line 91
    return-object v0
.end method

.method public static varargs stringAppend$SlShared([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 93
    array-length v2, p0

    if-nez v2, :cond_a

    .line 95
    new-instance v1, Lgnu/lists/FString;

    invoke-direct {v1}, Lgnu/lists/FString;-><init>()V

    .line 101
    :goto_9
    return-object v1

    .line 96
    :cond_a
    aget-object v0, p0, v5

    .line 97
    .local v0, "arg1":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/lists/FString;

    if-eqz v2, :cond_18

    :try_start_10
    check-cast v0, Lgnu/lists/FString;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_1f

    .end local v0    # "arg1":Ljava/lang/Object;
    move-object v1, v0

    .line 100
    .local v1, "fstr":Lgnu/lists/FString;
    :goto_13
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lgnu/lists/FString;->addAllStrings([Ljava/lang/Object;I)V

    goto :goto_9

    .line 99
    .end local v1    # "fstr":Lgnu/lists/FString;
    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_18
    :try_start_18
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_29

    .end local v0    # "arg1":Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v1

    goto :goto_13

    .line 98
    .restart local v0    # "arg1":Ljava/lang/Object;
    :catch_1f
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "fstr"

    const/4 v5, -0x2

    invoke-direct {v3, v2, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 99
    :catch_29
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-copy"

    invoke-direct {v3, v2, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static stringCapitalize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-static {p0}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v0

    .line 85
    .local v0, "copy":Lgnu/lists/FString;
    invoke-static {v0}, Lgnu/lists/Strings;->makeCapitalize(Lgnu/lists/CharSeq;)V

    .line 86
    return-object v0
.end method

.method public static stringCapitalize$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .registers 1
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .prologue
    .line 79
    invoke-static {p0}, Lgnu/lists/Strings;->makeCapitalize(Lgnu/lists/CharSeq;)V

    .line 81
    return-object p0
.end method

.method public static stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 65
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringDowncase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .registers 1
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .prologue
    .line 75
    invoke-static {p0}, Lgnu/lists/Strings;->makeLowerCase(Lgnu/lists/CharSeq;)V

    .line 77
    return-object p0
.end method

.method public static stringFill$Ex(Lgnu/lists/CharSeq;C)V
    .registers 2
    .param p0, "str"    # Lgnu/lists/CharSeq;
    .param p1, "ch"    # C

    .prologue
    .line 68
    invoke-interface {p0, p1}, Lgnu/lists/CharSeq;->fill(C)V

    return-void
.end method

.method public static stringLength(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public static stringRef(Ljava/lang/CharSequence;I)C
    .registers 3
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "k"    # I

    .prologue
    .line 22
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static stringSet$Ex(Lgnu/lists/CharSeq;IC)V
    .registers 3
    .param p0, "string"    # Lgnu/lists/CharSeq;
    .param p1, "k"    # I
    .param p2, "char"    # C

    .prologue
    .line 25
    invoke-interface {p0, p1, p2}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    return-void
.end method

.method public static stringUpcase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .registers 1
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .prologue
    .line 71
    invoke-static {p0}, Lgnu/lists/Strings;->makeUpperCase(Lgnu/lists/CharSeq;)V

    .line 73
    return-object p0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 44
    new-instance v0, Lgnu/lists/FString;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_b2

    .line 83
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1

    .line 6
    :pswitch_b
    invoke-static {p2}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 9
    :pswitch_17
    :try_start_17
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_60

    move-result v1

    invoke-static {v1}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a

    .line 19
    :pswitch_24
    :try_start_24
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_26} :catch_69

    invoke-static {p2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 48
    :pswitch_2f
    :try_start_2f
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_72

    invoke-static {p2}, Lkawa/lib/strings;->string$To$List(Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object v1

    goto :goto_a

    .line 56
    :pswitch_36
    :try_start_36
    check-cast p2, Lgnu/lists/LList;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_7b

    invoke-static {p2}, Lkawa/lib/strings;->list$To$String(Lgnu/lists/LList;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a

    .line 65
    :pswitch_3d
    :try_start_3d
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_3d .. :try_end_3f} :catch_84

    invoke-static {p2}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v1

    goto :goto_a

    .line 71
    :pswitch_44
    :try_start_44
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_46} :catch_8d

    invoke-static {p2}, Lkawa/lib/strings;->stringUpcase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a

    .line 75
    :pswitch_4b
    :try_start_4b
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_4d} :catch_96

    invoke-static {p2}, Lkawa/lib/strings;->stringDowncase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a

    .line 79
    :pswitch_52
    :try_start_52
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_52 .. :try_end_54} :catch_9f

    invoke-static {p2}, Lkawa/lib/strings;->stringCapitalize$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a

    .line 83
    :pswitch_59
    :try_start_59
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_5b
    .catch Ljava/lang/ClassCastException; {:try_start_59 .. :try_end_5b} :catch_a8

    invoke-static {p2}, Lkawa/lib/strings;->stringCapitalize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_a

    .line 9
    :catch_60
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-string"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 19
    :catch_69
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-length"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 48
    :catch_72
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string->list"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 56
    :catch_7b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "list->string"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 65
    :catch_84
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-copy"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 71
    :catch_8d
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-upcase!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 75
    :catch_96
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-downcase!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 79
    :catch_9f
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-capitalize!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 83
    :catch_a8
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-capitalize"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_17
        :pswitch_6
        :pswitch_6
        :pswitch_24
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2f
        :pswitch_36
        :pswitch_3d
        :pswitch_6
        :pswitch_44
        :pswitch_4b
        :pswitch_52
        :pswitch_59
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_a6

    .line 68
    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    return-object v1

    .line 9
    :pswitch_c
    :try_start_c
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_13} :catch_78

    move-result v1

    invoke-static {v1, p3}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 22
    :pswitch_19
    :try_start_19
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1b} :catch_81

    :try_start_1b
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_22} :catch_8a

    move-result v1

    invoke-static {p2, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    goto :goto_b

    .line 29
    :pswitch_2c
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 32
    :pswitch_38
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_41
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 35
    :pswitch_44
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_4d
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 38
    :pswitch_50
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_59
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 41
    :pswitch_5c
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_65
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 68
    :pswitch_68
    :try_start_68
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_6a
    .catch Ljava/lang/ClassCastException; {:try_start_68 .. :try_end_6a} :catch_93

    :try_start_6a
    move-object v0, p3

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_71} :catch_9c

    move-result v1

    invoke-static {p2, v1}, Lkawa/lib/strings;->stringFill$Ex(Lgnu/lists/CharSeq;C)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    .line 9
    :catch_78
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-string"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 22
    :catch_81
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_8a
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 68
    :catch_93
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-fill!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_9c
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-fill!"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    nop

    :pswitch_data_a6
    .packed-switch 0x2
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_19
        :pswitch_7
        :pswitch_2c
        :pswitch_38
        :pswitch_44
        :pswitch_50
        :pswitch_5c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_68
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_72

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1

    .line 25
    :sswitch_d
    :try_start_d
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_3c

    :try_start_f
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_16} :catch_45

    move-result v2

    :try_start_17
    move-object v0, p4

    check-cast v0, Lgnu/text/Char;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_4e

    move-result v1

    invoke-static {p2, v2, v1}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_c

    .line 44
    :sswitch_25
    :try_start_25
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_27} :catch_57

    :try_start_27
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_2e} :catch_60

    move-result v2

    :try_start_2f
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_36} :catch_69

    move-result v1

    invoke-static {p2, v2, v1}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_c

    .line 25
    :catch_3c
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-set!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_45
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-set!"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_4e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-set!"

    invoke-direct {v2, v1, v3, v6, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 44
    :catch_57
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "substring"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_60
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "substring"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_69
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "substring"

    invoke-direct {v2, v1, v3, v6, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :sswitch_data_72
    .sparse-switch
        0x7 -> :sswitch_d
        0xd -> :sswitch_25
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_1a

    .line 93
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 12
    :sswitch_a
    invoke-static {p2}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_9

    .line 88
    :sswitch_f
    invoke-static {p2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    goto :goto_9

    .line 93
    :sswitch_14
    invoke-static {p2}, Lkawa/lib/strings;->stringAppend$SlShared([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_9

    .line 4294967295
    nop

    :sswitch_data_1a
    .sparse-switch
        0x4 -> :sswitch_a
        0x16 -> :sswitch_f
        0x17 -> :sswitch_14
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_86

    .line 6
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 83
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_1a
    move v0, v1

    goto :goto_e

    .line 79
    :pswitch_1c
    instance-of v2, p2, Lgnu/lists/CharSeq;

    if-nez v2, :cond_22

    move v0, v1

    goto :goto_e

    :cond_22
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 75
    :pswitch_29
    instance-of v2, p2, Lgnu/lists/CharSeq;

    if-nez v2, :cond_2f

    move v0, v1

    goto :goto_e

    :cond_2f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 71
    :pswitch_36
    instance-of v2, p2, Lgnu/lists/CharSeq;

    if-nez v2, :cond_3c

    move v0, v1

    goto :goto_e

    :cond_3c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 65
    :pswitch_43
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_4e
    move v0, v1

    goto :goto_e

    .line 56
    :pswitch_50
    instance-of v2, p2, Lgnu/lists/LList;

    if-eqz v2, :cond_5b

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_5b
    move v0, v1

    goto :goto_e

    .line 48
    :pswitch_5d
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_68

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_68
    move v0, v1

    goto :goto_e

    .line 19
    :pswitch_6a
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_75

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_75
    move v0, v1

    goto :goto_e

    .line 9
    :pswitch_77
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 6
    :pswitch_7e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_77
        :pswitch_a
        :pswitch_a
        :pswitch_6a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5d
        :pswitch_50
        :pswitch_43
        :pswitch_a
        :pswitch_36
        :pswitch_29
        :pswitch_1c
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    const v0, -0xbffff

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_70

    .line 9
    :pswitch_a
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 68
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lgnu/lists/CharSeq;

    if-eqz v2, :cond_e

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/text/Char;

    if-eqz v0, :cond_21

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    :cond_21
    const v0, -0xbfffe

    goto :goto_e

    .line 41
    :pswitch_25
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 38
    :pswitch_2f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 35
    :pswitch_39
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 32
    :pswitch_43
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 29
    :pswitch_4d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 22
    :pswitch_57
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_e

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 9
    :pswitch_65
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_65
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_57
        :pswitch_a
        :pswitch_4d
        :pswitch_43
        :pswitch_39
        :pswitch_2f
        :pswitch_25
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const v1, -0xbffff

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_3a

    .line 25
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 44
    :goto_e
    return v0

    :sswitch_f
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_1e
    move v0, v1

    goto :goto_e

    .line 25
    :sswitch_20
    instance-of v2, p2, Lgnu/lists/CharSeq;

    if-nez v2, :cond_26

    move v0, v1

    goto :goto_e

    :cond_26
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v1, p4, Lgnu/text/Char;

    if-eqz v1, :cond_35

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    :cond_35
    const v0, -0xbfffd

    goto :goto_e

    .line 4294967295
    nop

    :sswitch_data_3a
    .sparse-switch
        0x7 -> :sswitch_20
        0xd -> :sswitch_f
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_22

    .line 12
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 93
    :goto_b
    return v0

    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 88
    :sswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 12
    :sswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    nop

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_1a
        0x16 -> :sswitch_13
        0x17 -> :sswitch_c
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

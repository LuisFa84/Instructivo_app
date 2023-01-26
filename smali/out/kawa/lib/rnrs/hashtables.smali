.class public Lkawa/lib/rnrs/hashtables;
.super Lgnu/expr/ModuleBody;
.source "hashtables.scm"


# static fields
.field public static final $instance:Lkawa/lib/rnrs/hashtables;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

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

.field public static final equal$Mnhash:Lgnu/expr/ModuleMethod;

.field static final hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

.field static final hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnclear$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mncontains$Qu:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mndelete$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnentries:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnkeys:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnmutable$Qu:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnref:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnsize:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mneq$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final make$Mneqv$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final make$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final string$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnhash:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x3003

    const/16 v7, 0x2002

    const/16 v6, 0x2001

    const/16 v4, 0x1000

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "equal-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-mutable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-hash-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-equivalence-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-entries"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-keys"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-clear!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-copy"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-update!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-contains?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-delete!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-set!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-size"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-hashtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-eqv-hashtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-eq-hashtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-for-eqv"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-by-identity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/rnrs/hashtables;

    invoke-direct {v0}, Lkawa/lib/rnrs/hashtables;-><init>()V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->make$Mneq$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->make$Mneqv$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->make$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnsize:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mndelete$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mncontains$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4004

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnclear$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnkeys:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnentries:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnmutable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->equal$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->string$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->symbol$Mnhash:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static equalHash(Ljava/lang/Object;)I
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method static hashByIdentity(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static hashForEqv(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;)V
    .registers 2

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V

    return-void
.end method

.method public static hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "k"    # I

    .prologue
    .line 73
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 78
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->clear()V

    return-void
.end method

.method public static hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "mutable"    # Z

    .prologue
    .line 69
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public static hashtableDelete$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)V
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 56
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static hashtableEntries(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 5
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .prologue
    .line 83
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->entriesVectorPair()Lgnu/lists/Pair;

    move-result-object v0

    .line 85
    .local v0, "pair":Lgnu/lists/Pair;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static hashtableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .prologue
    .line 87
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashtableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 5
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .prologue
    .line 90
    iget-object v2, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "hasher":Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v3, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_19

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_18

    .line 93
    :goto_16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    .end local v0    # "hasher":Ljava/lang/Object;
    :cond_18
    return-object v0

    .restart local v0    # "hasher":Ljava/lang/Object;
    :cond_19
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 93
    sget-object v3, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_18

    goto :goto_16
.end method

.method public static hashtableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/lists/FVector;
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .prologue
    .line 80
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->keysVector()Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method

.method public static hashtableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    .line 46
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_7

    .end local p2    # "default":Ljava/lang/Object;
    :goto_6
    return-object p2

    .restart local p2    # "default":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_6
.end method

.method public static hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static hashtableSize(Lkawa/lib/kawa/hashtable$HashTable;)I
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .prologue
    .line 41
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v0

    return v0
.end method

.method public static hashtableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "proc"    # Lgnu/mapping/Procedure;
    .param p3, "default"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 64
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    .line 65
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_13

    .line 66
    invoke-virtual {p2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 67
    :goto_12
    return-object v1

    :cond_13
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_12
.end method

.method public static isHashtable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 38
    instance-of v0, p0, Lkawa/lib/kawa/hashtable$HashTable;

    return v0
.end method

.method public static isHashtableContains(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_7
    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isHashtableMutable(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .prologue
    .line 97
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-boolean v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_8
    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8
.end method

.method public static makeEqHashtable()Lkawa/lib/kawa/hashtable$HashTable;
    .registers 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {v0}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 5
    .param p0, "k"    # I

    .prologue
    .line 21
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    sget-object v1, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    sget v3, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static makeEqvHashtable()Lkawa/lib/kawa/hashtable$HashTable;
    .registers 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {v0}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 5
    .param p0, "k"    # I

    .prologue
    .line 26
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    sget v3, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {p0, p1, v0}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 4
    .param p0, "comparison"    # Lgnu/mapping/Procedure;
    .param p1, "hash"    # Lgnu/mapping/Procedure;
    .param p2, "size"    # I

    .prologue
    .line 31
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static stringHash(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-interface {p0}, Ljava/lang/CharSequence;->hashCode()I

    move-result v0

    return v0
.end method

.method public static symbolHash(Lgnu/mapping/Symbol;)I
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_14

    .line 26
    :pswitch_5
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    return-object v0

    .line 21
    :pswitch_a
    invoke-static {}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_9

    .line 26
    :pswitch_f
    invoke-static {}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_9

    .line 4294967295
    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_a
        :pswitch_5
        :pswitch_f
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_122

    .line 114
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1

    .line 15
    :pswitch_b
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashByIdentity(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 18
    :pswitch_14
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashForEqv(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 21
    :pswitch_1d
    :try_start_1d
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_24} :catch_ad

    move-result v1

    invoke-static {v1}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_a

    .line 26
    :pswitch_2a
    :try_start_2a
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2a .. :try_end_31} :catch_b6

    move-result v1

    invoke-static {v1}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_a

    .line 38
    :pswitch_37
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->isHashtable(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_40
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 41
    :pswitch_43
    :try_start_43
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_45} :catch_bf

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableSize(Lkawa/lib/kawa/hashtable$HashTable;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 69
    :pswitch_4e
    :try_start_4e
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_50} :catch_c8

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_a

    .line 73
    :pswitch_55
    :try_start_55
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_57} :catch_d1

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 80
    :pswitch_5d
    :try_start_5d
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_5f
    .catch Ljava/lang/ClassCastException; {:try_start_5d .. :try_end_5f} :catch_da

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/lists/FVector;

    move-result-object v1

    goto :goto_a

    .line 83
    :pswitch_64
    :try_start_64
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_66
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_66} :catch_e3

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableEntries(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 87
    :pswitch_6b
    :try_start_6b
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_6d
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_6d} :catch_ec

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object v1

    goto :goto_a

    .line 90
    :pswitch_72
    :try_start_72
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_72 .. :try_end_74} :catch_f5

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 97
    :pswitch_79
    :try_start_79
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_7b
    .catch Ljava/lang/ClassCastException; {:try_start_79 .. :try_end_7b} :catch_fe

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->isHashtableMutable(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 101
    :pswitch_80
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->equalHash(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a

    .line 104
    :pswitch_89
    :try_start_89
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_8b
    .catch Ljava/lang/ClassCastException; {:try_start_89 .. :try_end_8b} :catch_107

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->stringHash(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_a

    .line 107
    :pswitch_95
    :try_start_95
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_97
    .catch Ljava/lang/ClassCastException; {:try_start_95 .. :try_end_97} :catch_110

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->stringCiHash(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_a

    .line 114
    :pswitch_a1
    :try_start_a1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_a3
    .catch Ljava/lang/ClassCastException; {:try_start_a1 .. :try_end_a3} :catch_119

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->symbolHash(Lgnu/mapping/Symbol;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_a

    .line 22
    :catch_ad
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-eq-hashtable"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 27
    :catch_b6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-eqv-hashtable"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 41
    :catch_bf
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-size"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 69
    :catch_c8
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-copy"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 74
    :catch_d1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-clear!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 80
    :catch_da
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-keys"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 83
    :catch_e3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-entries"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 87
    :catch_ec
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-equivalence-function"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 90
    :catch_f5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-hash-function"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 97
    :catch_fe
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-mutable?"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 104
    :catch_107
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-hash"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 107
    :catch_110
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ci-hash"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 114
    :catch_119
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "symbol-hash"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_b
        :pswitch_14
        :pswitch_1d
        :pswitch_6
        :pswitch_2a
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_37
        :pswitch_43
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4e
        :pswitch_6
        :pswitch_55
        :pswitch_6
        :pswitch_5d
        :pswitch_64
        :pswitch_6b
        :pswitch_72
        :pswitch_79
        :pswitch_80
        :pswitch_89
        :pswitch_95
        :pswitch_a1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v2, :sswitch_data_90

    .line 73
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_b
    return-object v1

    .line 31
    :sswitch_c
    :try_start_c
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_48

    :try_start_e
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_10} :catch_51

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_b

    .line 54
    :sswitch_15
    :try_start_15
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_17} :catch_5a

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->hashtableDelete$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    .line 58
    :sswitch_1d
    :try_start_1d
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1f} :catch_63

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->isHashtableContains(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    .line 69
    :sswitch_2b
    :try_start_2b
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_6c

    :try_start_2d
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2f} :catch_75

    if-eq p3, v2, :cond_36

    :goto_31
    invoke-static {p2, v1}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_b

    :cond_36
    const/4 v1, 0x0

    goto :goto_31

    .line 73
    :sswitch_38
    :try_start_38
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_3a
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_3a} :catch_7e

    :try_start_3a
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_41} :catch_87

    move-result v1

    invoke-static {p2, v1}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_b

    .line 32
    :catch_48
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "make-hashtable"

    invoke-direct {v3, v2, v4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 33
    :catch_51
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hashtable"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 54
    :catch_5a
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "hashtable-delete!"

    invoke-direct {v3, v2, v4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 58
    :catch_63
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "hashtable-contains?"

    invoke-direct {v3, v2, v4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 69
    :catch_6c
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "hashtable-copy"

    invoke-direct {v3, v2, v4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_75
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-copy"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 74
    :catch_7e
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "hashtable-clear!"

    invoke-direct {v3, v2, v4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 75
    :catch_87
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-clear!"

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :sswitch_data_90
    .sparse-switch
        0x7 -> :sswitch_c
        0xd -> :sswitch_15
        0xe -> :sswitch_1d
        0x10 -> :sswitch_2b
        0x12 -> :sswitch_38
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_5a

    .line 50
    :pswitch_6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_a
    return-object v1

    .line 31
    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_2b

    :try_start_d
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_34

    :try_start_f
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_16} :catch_3e

    move-result v1

    invoke-static {p2, p3, v1}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_a

    .line 44
    :pswitch_1c
    :try_start_1c
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1e} :catch_48

    invoke-static {p2, p3, p4}, Lkawa/lib/rnrs/hashtables;->hashtableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 50
    :pswitch_23
    :try_start_23
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_25} :catch_51

    invoke-static {p2, p3, p4}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 32
    :catch_2b
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hashtable"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 33
    :catch_34
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hashtable"

    const/4 v4, 0x2

    invoke-direct {v2, v1, v3, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 34
    :catch_3e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hashtable"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 44
    :catch_48
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-ref"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 50
    :catch_51
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hashtable-set!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 4294967295
    :pswitch_data_5a
    .packed-switch 0x7
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1c
        :pswitch_23
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_f

    .line 61
    :try_start_6
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_14

    :try_start_8
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_1e

    invoke-static {p2, p3, p4, p5}, Lkawa/lib/rnrs/hashtables;->hashtableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :catch_14
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-update!"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 62
    :catch_1e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-update!"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_16

    .line 21
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 26
    :goto_a
    return v0

    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    .line 21
    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    .line 4294967295
    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_10
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    .prologue
    const v0, -0xbffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_ca

    .line 15
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 114
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 107
    :pswitch_1b
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 104
    :pswitch_27
    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 101
    :pswitch_33
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 97
    :pswitch_3b
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 90
    :pswitch_47
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 87
    :pswitch_53
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 83
    :pswitch_5f
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 80
    :pswitch_6b
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 73
    :pswitch_77
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 69
    :pswitch_83
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 41
    :pswitch_8f
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_e

    .line 38
    :pswitch_9c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_e

    .line 26
    :pswitch_a5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_e

    .line 21
    :pswitch_ae
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_e

    .line 18
    :pswitch_b7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_e

    .line 15
    :pswitch_c0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_e

    .line 4294967295
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_b7
        :pswitch_ae
        :pswitch_a
        :pswitch_a5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9c
        :pswitch_8f
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_83
        :pswitch_a
        :pswitch_77
        :pswitch_a
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_33
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    .prologue
    const v2, -0xbfffe

    const/4 v4, 0x2

    const/4 v1, 0x0

    const v0, -0xbffff

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_5e

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 73
    :cond_11
    :goto_11
    return v0

    :sswitch_12
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    .line 69
    :sswitch_20
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    .line 58
    :sswitch_2e
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    .line 54
    :sswitch_3c
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    .line 31
    :sswitch_4a
    instance-of v3, p2, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_56

    move v0, v2

    goto :goto_11

    :cond_56
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_11

    .line 4294967295
    :sswitch_data_5e
    .sparse-switch
        0x7 -> :sswitch_4a
        0xd -> :sswitch_3c
        0xe -> :sswitch_2e
        0x10 -> :sswitch_20
        0x12 -> :sswitch_12
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const v0, -0xbffff

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_48

    .line 31
    :pswitch_a
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 50
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 44
    :pswitch_1f
    instance-of v2, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-eqz v2, :cond_e

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 31
    :pswitch_2f
    instance-of v2, p2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_e

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_3d

    const v0, -0xbfffe

    goto :goto_e

    :cond_3d
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_48
    .packed-switch 0x7
        :pswitch_2f
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1f
        :pswitch_f
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_25

    .line 61
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_e

    const v0, -0xbffff

    :goto_d
    return v0

    :cond_e
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1a

    const v0, -0xbfffd

    goto :goto_d

    :cond_1a
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x4

    iput v0, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_d

    :cond_25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_d
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 15
    .local v0, "$result":Lgnu/lists/Consumer;
    return-void
.end method

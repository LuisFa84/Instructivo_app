.class public Lgnu/kawa/slib/srfi1$frame8;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame7;->lambda14lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame8"
.end annotation


# instance fields
.field ans:Ljava/lang/Object;

.field final lambda$Fn10:Lgnu/expr/ModuleMethod;

.field final lambda$Fn9:Lgnu/expr/ModuleMethod;

.field lists:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi1$frame7;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame8;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:859"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame8;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi1$frame8;->lambda15()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    .line 859
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame8;->lambda16(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method lambda15()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 859
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame8;->lists:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame8;->ans:Ljava/lang/Object;

    invoke-static {v0, v1}, Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs$Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda16(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "cars$Plans"    # Ljava/lang/Object;
    .param p2, "cdrs"    # Ljava/lang/Object;

    .prologue
    .line 859
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame8;->ans:Ljava/lang/Object;

    .line 861
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame8;->staticLink:Lgnu/kawa/slib/srfi1$frame7;

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame8;->staticLink:Lgnu/kawa/slib/srfi1$frame7;

    iget-object v2, v2, Lgnu/kawa/slib/srfi1$frame7;->kons:Lgnu/mapping/Procedure;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lgnu/kawa/slib/srfi1$frame7;->lambda14lp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 6

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_c

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_b
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 859
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_10
.end method

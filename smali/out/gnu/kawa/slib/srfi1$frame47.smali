.class public Lgnu/kawa/slib/srfi1$frame47;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1$frame46;->lambda64(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame47"
.end annotation


# instance fields
.field a$Mnint$Mnb:Ljava/lang/Object;

.field final lambda$Fn48:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi1$frame46;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1547"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame47;->lambda$Fn48:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    .line 1547
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame47;->lambda65(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method lambda65(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "xb"    # Ljava/lang/Object;
    .param p2, "ans"    # Ljava/lang/Object;

    .prologue
    .line 1547
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame47;->a$Mnint$Mnb:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame47;->staticLink:Lgnu/kawa/slib/srfi1$frame46;

    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame46;->staticLink:Lgnu/kawa/slib/srfi1$frame45;

    iget-object v1, v1, Lgnu/kawa/slib/srfi1$frame45;->$Eq:Lgnu/mapping/Procedure;

    invoke-static {p1, v0, v1}, Lkawa/lib/lists;->member(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_11

    .end local p2    # "ans":Ljava/lang/Object;
    :goto_10
    return-object p2

    .restart local p2    # "ans":Ljava/lang/Object;
    :cond_11
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p2

    goto :goto_10
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_11

    .line 1547
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

.class public Lgnu/kawa/slib/srfi37$frame0;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field name:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi37$frame;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x1001

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm:75"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm:72"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1c

    .line 72
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    :goto_9
    return-object v0

    :pswitch_a
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame0;->lambda7(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    .line 72
    :pswitch_16
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame0;->lambda6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 4294967295
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_16
    .end packed-switch
.end method

.method lambda6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "option"    # Ljava/lang/Object;

    .prologue
    .line 72
    :try_start_0
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2} :catch_d

    .end local p1    # "option":Ljava/lang/Object;
    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->optionNames(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-static {v0, v1}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 74
    .restart local p1    # "option":Ljava/lang/Object;
    :catch_d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "option-names"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda7(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "test$Mnname"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_1a

    .line 75
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_b
    return v0

    .line 72
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 75
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    goto :goto_b

    .line 4294967295
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

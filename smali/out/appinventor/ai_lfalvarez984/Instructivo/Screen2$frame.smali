.class public Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;
.super Lgnu/expr/ModuleBody;
.source "Screen2.yail"


# instance fields
.field $main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_58

    .line 535
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 627
    :goto_9
    return-object v0

    :pswitch_a
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 535
    :pswitch_f
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->$define()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_9

    :pswitch_17
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda3()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_9

    :pswitch_1c
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda4()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_21
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->Screen2$Initialize()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_28
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda5()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_2d
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_32
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_37
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda8()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_3c
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda9()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_41
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda10()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_46
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda11()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_4b
    invoke-static {}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lambda12()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :pswitch_50
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->Reloj1$Timer()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 4294967295
    nop

    :pswitch_data_58
    .packed-switch 0x12
        :pswitch_a
        :pswitch_f
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_37
        :pswitch_3c
        :pswitch_41
        :pswitch_46
        :pswitch_4b
        :pswitch_50
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_70

    .line 403
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 311
    :pswitch_b
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 314
    :pswitch_12
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_14
    check-cast p2, Landroid/os/Bundle;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_55

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 321
    :pswitch_1c
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->androidLogForm(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 334
    :pswitch_24
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_26
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_28} :catch_5e

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 340
    :pswitch_2d
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_2f
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_67

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_3a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 395
    :pswitch_3d
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 400
    :pswitch_45
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->sendError(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 403
    :pswitch_4d
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->processException(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 314
    :catch_55
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "onCreate"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 334
    :catch_5e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 340
    :catch_67
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_b
        :pswitch_12
        :pswitch_1c
        :pswitch_6
        :pswitch_24
        :pswitch_6
        :pswitch_2d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3d
        :pswitch_45
        :pswitch_4d
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_5a

    .line 527
    :pswitch_6
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    .line 330
    :pswitch_b
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_d
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_3f

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 334
    :pswitch_15
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_17
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_19} :catch_48

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 348
    :pswitch_1e
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_20
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_22} :catch_51

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 369
    :pswitch_28
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 385
    :pswitch_30
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_a

    .line 527
    :pswitch_38
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    .line 330
    :catch_3f
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 334
    :catch_48
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 348
    :catch_51
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-global-var-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_5a
    .packed-switch 0x4
        :pswitch_b
        :pswitch_15
        :pswitch_6
        :pswitch_6
        :pswitch_1e
        :pswitch_28
        :pswitch_6
        :pswitch_30
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_38
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_88

    .line 483
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    .line 376
    :sswitch_e
    iget-object v0, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    invoke-virtual {v0, p2, p3, p4, p5}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    .line 422
    :sswitch_16
    iget-object v1, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_18
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_40

    :try_start_1a
    check-cast p3, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1c} :catch_49

    :try_start_1c
    check-cast p4, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1e} :catch_52

    :try_start_1e
    check-cast p5, [Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_5b

    invoke-virtual {v1, p2, p3, p4, p5}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    .line 483
    :sswitch_2c
    iget-object v1, p0, Lappinventor/ai_lfalvarez984/Instructivo/Screen2$frame;->$main:Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    :try_start_2e
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_2e .. :try_end_30} :catch_64

    :try_start_30
    check-cast p3, Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_32} :catch_6d

    :try_start_32
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_34} :catch_76

    if-eq p4, v2, :cond_3e

    :goto_36
    :try_start_36
    check-cast p5, [Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_7f

    invoke-virtual {v1, p2, p3, v0, p5}, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_d

    :cond_3e
    const/4 v0, 0x0

    goto :goto_36

    .line 422
    :catch_40
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, v1, v3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 423
    :catch_49
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 424
    :catch_52
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 425
    :catch_5b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 483
    :catch_64
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "dispatchGenericEvent"

    invoke-direct {v2, v1, v3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 484
    :catch_6d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 485
    :catch_76
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 486
    :catch_7f
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_88
    .sparse-switch
        0xa -> :sswitch_e
        0xf -> :sswitch_16
        0x10 -> :sswitch_2c
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_52

    .line 627
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_a
    return v0

    .line 4294967295
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_1a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_1f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_24
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_29
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_2e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_33
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_38
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_3d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    :pswitch_42
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    .line 535
    :pswitch_47
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    .line 627
    :pswitch_4c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_a

    .line 4294967295
    nop

    :pswitch_data_52
    .packed-switch 0x12
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
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

    packed-switch v2, :pswitch_data_60

    .line 311
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 403
    :cond_e
    :goto_e
    return v0

    :pswitch_f
    instance-of v2, p2, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 400
    :pswitch_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 395
    :pswitch_23
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 340
    :pswitch_2b
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 334
    :pswitch_37
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 321
    :pswitch_43
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 314
    :pswitch_4b
    instance-of v2, p2, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    if-eqz v2, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 311
    :pswitch_57
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_57
        :pswitch_4b
        :pswitch_43
        :pswitch_a
        :pswitch_37
        :pswitch_a
        :pswitch_2b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_23
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_58

    .line 330
    :pswitch_a
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 527
    :goto_e
    return v0

    :pswitch_f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 385
    :pswitch_18
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 369
    :pswitch_21
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 348
    :pswitch_2a
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_30

    move v0, v1

    goto :goto_e

    :cond_30
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 334
    :pswitch_39
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_3f

    move v0, v1

    goto :goto_e

    :cond_3f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 330
    :pswitch_48
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_4e

    move v0, v1

    goto :goto_e

    :cond_4e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_e

    .line 4294967295
    nop

    :pswitch_data_58
    .packed-switch 0x4
        :pswitch_48
        :pswitch_39
        :pswitch_a
        :pswitch_a
        :pswitch_2a
        :pswitch_21
        :pswitch_a
        :pswitch_18
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 13

    .prologue
    const v2, -0xbfffd

    const v1, -0xbfffe

    const v0, -0xbffff

    const/4 v5, 0x4

    const/4 v3, 0x0

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_68

    .line 376
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 483
    :cond_14
    :goto_14
    return v0

    :sswitch_15
    instance-of v4, p2, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    if-eqz v4, :cond_14

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_14

    :cond_21
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_29

    move v0, v2

    goto :goto_14

    :cond_29
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 422
    :sswitch_33
    instance-of v4, p2, Lappinventor/ai_lfalvarez984/Instructivo/Screen2;

    if-eqz v4, :cond_14

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v0, :cond_3f

    move v0, v1

    goto :goto_14

    :cond_3f
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_47

    move v0, v2

    goto :goto_14

    :cond_47
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v0, p5, Ljava/lang/String;

    if-nez v0, :cond_51

    const v0, -0xbfffc

    goto :goto_14

    :cond_51
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 376
    :sswitch_59
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_14

    .line 4294967295
    nop

    :sswitch_data_68
    .sparse-switch
        0xa -> :sswitch_59
        0xf -> :sswitch_33
        0x10 -> :sswitch_15
    .end sparse-switch
.end method

.class public abstract Landroidx/core/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/JobIntentService$CommandProcessor;,
        Landroidx/core/app/JobIntentService$CompatWorkItem;,
        Landroidx/core/app/JobIntentService$GenericWorkItem;,
        Landroidx/core/app/JobIntentService$JobWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$JobServiceEngineImpl;,
        Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;,
        Landroidx/core/app/JobIntentService$CompatJobEngine;,
        Landroidx/core/app/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 416
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    .line 100
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    .line 101
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 422
    :goto_13
    return-void

    .line 420
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_13
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "component"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 517
    if-nez p3, :cond_a

    .line 518
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "work must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 520
    :cond_a
    sget-object v2, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    const/4 v1, 0x1

    :try_start_e
    invoke-static {p0, p1, v1, p2}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    .line 522
    .local v0, "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    invoke-virtual {v0, p2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 523
    invoke-virtual {v0, p3}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 524
    monitor-exit v2

    .line 525
    return-void

    .line 524
    .end local v0    # "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 501
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    .line 502
    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "hasJobId"    # Z
    .param p3, "jobId"    # I

    .prologue
    .line 529
    sget-object v1, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/JobIntentService$WorkEnqueuer;

    .line 530
    .local v0, "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    if-nez v0, :cond_24

    .line 531
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_25

    .line 532
    if-nez p2, :cond_1a

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t be here without a job id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :cond_1a
    new-instance v0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    .end local v0    # "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    invoke-direct {v0, p0, p1, p3}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 539
    .restart local v0    # "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    :goto_1f
    sget-object v1, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_24
    return-object v0

    .line 537
    :cond_25
    new-instance v0, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;

    .end local v0    # "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    invoke-direct {v0, p0, p1}, Landroidx/core/app/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .restart local v0    # "we":Landroidx/core/app/JobIntentService$WorkEnqueuer;
    goto :goto_1f
.end method


# virtual methods
.method dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;
    .registers 4

    .prologue
    .line 639
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_b

    .line 640
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Landroidx/core/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroidx/core/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    .line 646
    :goto_a
    return-object v0

    .line 642
    :cond_b
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 643
    :try_start_e
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 644
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/JobIntentService$GenericWorkItem;

    monitor-exit v1

    goto :goto_a

    .line 648
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_21

    throw v0

    .line 646
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    goto :goto_a
.end method

.method doStopCurrentWork()Z
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    if-eqz v0, :cond_b

    .line 600
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    iget-boolean v1, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService$CommandProcessor;->cancel(Z)Z

    .line 602
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    .line 603
    invoke-virtual {p0}, Landroidx/core/app/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .registers 5
    .param p1, "reportStarted"    # Z

    .prologue
    .line 607
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    if-nez v0, :cond_20

    .line 608
    new-instance v0, Landroidx/core/app/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Landroidx/core/app/JobIntentService$CommandProcessor;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    .line 609
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    .line 610
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 613
    :cond_16
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 615
    :cond_20
    return-void
.end method

.method public isStopped()Z
    .registers 2

    .prologue
    .line 580
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 465
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    if-eqz v1, :cond_b

    .line 466
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    invoke-interface {v1}, Landroidx/core/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 470
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 428
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_15

    .line 429
    new-instance v1, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v1, p0}, Landroidx/core/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroidx/core/app/JobIntentService;)V

    iput-object v1, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    .line 430
    iput-object v4, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    .line 436
    :goto_14
    return-void

    .line 432
    :cond_15
    iput-object v4, p0, Landroidx/core/app/JobIntentService;->mJobImpl:Landroidx/core/app/JobIntentService$CompatJobEngine;

    .line 433
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {p0, v0, v3, v3}, Landroidx/core/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/JobIntentService$WorkEnqueuer;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    goto :goto_14
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 476
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 477
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 478
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 479
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    .line 480
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 481
    monitor-exit v1

    .line 483
    :cond_13
    return-void

    .line 481
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 444
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 445
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 447
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 448
    :try_start_c
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v2, Landroidx/core/app/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_1f

    .end local p1    # "intent":Landroid/content/Intent;
    :goto_12
    invoke-direct {v2, p0, p1, p3}, Landroidx/core/app/JobIntentService$CompatWorkItem;-><init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 451
    monitor-exit v1

    .line 452
    const/4 v0, 0x3

    .line 455
    :goto_1e
    return v0

    .line 448
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1f
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto :goto_12

    .line 451
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v0

    .line 455
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_28
    const/4 v0, 0x2

    goto :goto_1e
.end method

.method public onStopCurrentWork()Z
    .registers 2

    .prologue
    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .registers 3

    .prologue
    .line 618
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 619
    iget-object v1, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 620
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Landroidx/core/app/JobIntentService;->mCurProcessor:Landroidx/core/app/JobIntentService$CommandProcessor;

    .line 629
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 634
    :cond_1a
    :goto_1a
    monitor-exit v1

    .line 636
    :cond_1b
    return-void

    .line 631
    :cond_1c
    iget-boolean v0, p0, Landroidx/core/app/JobIntentService;->mDestroyed:Z

    if-nez v0, :cond_1a

    .line 632
    iget-object v0, p0, Landroidx/core/app/JobIntentService;->mCompatWorkEnqueuer:Landroidx/core/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    goto :goto_1a

    .line 634
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setInterruptIfStopped(Z)V
    .registers 2
    .param p1, "interruptIfStopped"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Landroidx/core/app/JobIntentService;->mInterruptIfStopped:Z

    .line 573
    return-void
.end method

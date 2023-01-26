.class public final Lcom/google/appinventor/components/runtime/util/TimerInternal;
.super Ljava/lang/Object;
.source "TimerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private component:Lcom/google/appinventor/components/runtime/AlarmHandler;

.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V
    .registers 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AlarmHandler;
    .param p2, "enabled"    # Z
    .param p3, "interval"    # I

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V
    .registers 7
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AlarmHandler;
    .param p2, "enabled"    # Z
    .param p3, "interval"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->component:Lcom/google/appinventor/components/runtime/AlarmHandler;

    .line 60
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 61
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 62
    if-eqz p2, :cond_11

    .line 63
    int-to-long v0, p3

    invoke-virtual {p4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    :cond_11
    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    :cond_9
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    .line 111
    if-eqz p1, :cond_15

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_15
    return-void
.end method

.method public Enabled()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    return v0
.end method

.method public Interval()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    return v0
.end method

.method public Interval(I)V
    .registers 6
    .param p1, "interval"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    .line 83
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_11

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    :cond_11
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_15

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->component:Lcom/google/appinventor/components/runtime/AlarmHandler;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/AlarmHandler;->alarm()V

    .line 124
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_15

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_15
    return-void
.end method

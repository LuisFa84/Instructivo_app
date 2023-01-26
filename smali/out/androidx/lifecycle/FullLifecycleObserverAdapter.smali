.class Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# instance fields
.field private final mObserver:Landroidx/lifecycle/FullLifecycleObserver;


# direct methods
.method constructor <init>(Landroidx/lifecycle/FullLifecycleObserver;)V
    .registers 2
    .param p1, "observer"    # Landroidx/lifecycle/FullLifecycleObserver;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    .line 25
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .prologue
    .line 29
    sget-object v0, Landroidx/lifecycle/FullLifecycleObserverAdapter$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 51
    :goto_b
    return-void

    .line 31
    :pswitch_c
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    .line 34
    :pswitch_12
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    .line 37
    :pswitch_18
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    .line 40
    :pswitch_1e
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    .line 43
    :pswitch_24
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    .line 46
    :pswitch_2a
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->mObserver:Landroidx/lifecycle/FullLifecycleObserver;

    invoke-interface {v0, p1}, Landroidx/lifecycle/FullLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_b

    .line 49
    :pswitch_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ON_ANY must not been send by anybody"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method

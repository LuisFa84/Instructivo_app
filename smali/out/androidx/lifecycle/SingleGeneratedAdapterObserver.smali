.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>(Landroidx/lifecycle/GeneratedAdapter;)V
    .registers 2
    .param p1, "generatedAdapter"    # Landroidx/lifecycle/GeneratedAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    .line 31
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 6
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 36
    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->mGeneratedAdapter:Landroidx/lifecycle/GeneratedAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V

    .line 37
    return-void
.end method

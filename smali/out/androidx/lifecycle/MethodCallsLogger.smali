.class public Landroidx/lifecycle/MethodCallsLogger;
.super Ljava/lang/Object;
.source "MethodCallsLogger.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCalledMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public approveCall(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 36
    iget-object v5, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 37
    .local v1, "nullableMask":Ljava/lang/Integer;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    .local v0, "mask":I
    :goto_10
    and-int v5, v0, p2

    if-eqz v5, :cond_25

    move v2, v3

    .line 39
    .local v2, "wasCalled":Z
    :goto_15
    iget-object v5, p0, Landroidx/lifecycle/MethodCallsLogger;->mCalledMethods:Ljava/util/Map;

    or-int v6, v0, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    if-nez v2, :cond_27

    :goto_22
    return v3

    .end local v0    # "mask":I
    .end local v2    # "wasCalled":Z
    :cond_23
    move v0, v4

    .line 37
    goto :goto_10

    .restart local v0    # "mask":I
    :cond_25
    move v2, v4

    .line 38
    goto :goto_15

    .restart local v2    # "wasCalled":Z
    :cond_27
    move v3, v4

    .line 40
    goto :goto_22
.end method

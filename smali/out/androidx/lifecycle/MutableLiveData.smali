.class public Landroidx/lifecycle/MutableLiveData;
.super Landroidx/lifecycle/LiveData;
.source "MutableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    .local p0, "this":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<TT;>;"
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public postValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

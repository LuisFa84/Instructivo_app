.class final Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->wrap(Lgnu/mapping/Procedure;Ljava/lang/Class;)Lcom/google/appinventor/components/runtime/util/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/Continuation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$procedure:Lgnu/mapping/Procedure;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lgnu/mapping/Procedure;)V
    .registers 3

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$procedure:Lgnu/mapping/Procedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Void;

    if-ne v1, v2, :cond_c

    .line 31
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    .line 38
    :goto_b
    return-void

    .line 33
    :cond_c
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_b

    .line 35
    :catch_12
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.class Landroidx/core/provider/SelfDestructiveThread$2;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/SelfDestructiveThread;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$callingHandler:Landroid/os/Handler;

.field final synthetic val$reply:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# direct methods
.method constructor <init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/core/provider/SelfDestructiveThread;

    .prologue
    .line 137
    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread$2;->this$0:Landroidx/core/provider/SelfDestructiveThread;

    iput-object p2, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$callingHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$reply:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 142
    :try_start_0
    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_12

    move-result-object v2

    .local v2, "t":Ljava/lang/Object;, "TT;"
    move-object v1, v2

    .line 147
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .local v1, "result":Ljava/lang/Object;, "TT;"
    .local v1, "t":Ljava/lang/Object;, "TT;"
    :goto_7
    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread$2;->val$callingHandler:Landroid/os/Handler;

    new-instance v4, Landroidx/core/provider/SelfDestructiveThread$2$1;

    invoke-direct {v4, p0, v1}, Landroidx/core/provider/SelfDestructiveThread$2$1;-><init>(Landroidx/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void

    .line 143
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :catch_12
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    move-object v1, v2

    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .local v1, "t":Ljava/lang/Object;, "TT;"
    goto :goto_7
.end method

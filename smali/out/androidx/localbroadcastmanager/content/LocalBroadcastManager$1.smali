.class Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;
.super Landroid/os/Handler;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method constructor <init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 115
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;->this$0:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    :goto_8
    return-void

    .line 121
    :pswitch_9
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;->this$0:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    goto :goto_8

    .line 119
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

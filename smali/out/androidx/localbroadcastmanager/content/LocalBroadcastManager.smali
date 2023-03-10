.class public final Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;,
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 114
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    sget-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_3
    sget-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_12

    .line 107
    new-instance v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 109
    :cond_12
    sget-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method executePendingBroadcasts()V
    .registers 11

    .prologue
    .line 298
    :cond_0
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    .line 299
    :try_start_3
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    .local v0, "N":I
    if-gtz v0, :cond_d

    .line 301
    monitor-exit v8

    return-void

    .line 303
    :cond_d
    new-array v2, v0, [Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    .line 304
    .local v2, "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 305
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 306
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_41

    .line 307
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 308
    aget-object v1, v2, v3

    .line 309
    .local v1, "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v7, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 310
    .local v5, "nbr":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_27
    if-ge v4, v5, :cond_44

    .line 311
    iget-object v7, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 312
    .local v6, "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iget-boolean v7, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v7, :cond_3e

    .line 313
    iget-object v7, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v9, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 310
    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 306
    .end local v0    # "N":I
    .end local v1    # "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v2    # "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "nbr":I
    .end local v6    # "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :catchall_41
    move-exception v7

    :try_start_42
    monitor-exit v8
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v7

    .line 307
    .restart local v0    # "N":I
    .restart local v1    # "br":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v2    # "brs":[Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "nbr":I
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filter"    # Landroid/content/IntentFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v6, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 141
    :try_start_3
    new-instance v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v2, p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 142
    .local v2, "entry":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v5, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 143
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v3, :cond_1d

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_46

    .line 149
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 151
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_40

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 157
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_46
    monitor-exit v6

    .line 158
    return-void

    .line 157
    .end local v2    # "entry":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v4    # "i":I
    :catchall_48
    move-exception v5

    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v5
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v15

    .line 214
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 216
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 218
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 222
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_ce

    const/4 v8, 0x1

    .line 223
    .local v8, "debug":Z
    :goto_2c
    if-eqz v8, :cond_62

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolving type "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " scheme "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " of intent "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_62
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 228
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v9, :cond_175

    .line 229
    if-eqz v8, :cond_8e

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Action list: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_8e
    const/4 v14, 0x0

    .line 232
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_90
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_13c

    .line 233
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 234
    .local v13, "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v8, :cond_be

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Matching against filter "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_be
    iget-boolean v1, v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_d1

    .line 237
    if-eqz v8, :cond_cb

    .line 238
    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_cb
    :goto_cb
    add-int/lit8 v10, v10, 0x1

    goto :goto_90

    .line 222
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v13    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_ce
    const/4 v8, 0x0

    goto/16 :goto_2c

    .line 243
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v13    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_d1
    iget-object v1, v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v11

    .line 245
    .local v11, "match":I
    if-ltz v11, :cond_10e

    .line 246
    if-eqz v8, :cond_fd

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter matched!  match=0x"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 247
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 246
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_fd
    if-nez v14, :cond_104

    .line 249
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_104
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_cb

    .line 279
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :catchall_10b
    move-exception v1

    monitor-exit v15
    :try_end_10d
    .catchall {:try_start_5 .. :try_end_10d} :catchall_10b

    throw v1

    .line 254
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_10e
    if-eqz v8, :cond_cb

    .line 256
    packed-switch v11, :pswitch_data_178

    .line 261
    :try_start_113
    const-string v12, "unknown reason"

    .line 263
    .local v12, "reason":Ljava/lang/String;
    :goto_115
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter did not match: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 257
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_130
    const-string v12, "action"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_115

    .line 258
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_133
    const-string v12, "category"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_115

    .line 259
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_136
    const-string v12, "data"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_115

    .line 260
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_139
    const-string v12, "type"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_115

    .line 268
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_13c
    if-eqz v14, :cond_175

    .line 269
    const/4 v10, 0x0

    :goto_13f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_151

    .line 270
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 269
    add-int/lit8 v10, v10, 0x1

    goto :goto_13f

    .line 272
    :cond_151
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_172

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :cond_172
    const/4 v1, 0x1

    monitor-exit v15

    .line 280
    .end local v10    # "i":I
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_174
    return v1

    .line 279
    :cond_175
    monitor-exit v15
    :try_end_176
    .catchall {:try_start_113 .. :try_end_176} :catchall_10b

    .line 280
    const/4 v1, 0x0

    goto :goto_174

    .line 256
    :pswitch_data_178
    .packed-switch -0x4
        :pswitch_133
        :pswitch_130
        :pswitch_136
        :pswitch_139
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 290
    invoke-virtual {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 292
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v9, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v9

    .line 171
    :try_start_3
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 172
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v2, :cond_f

    .line 173
    monitor-exit v9

    .line 196
    :goto_e
    return-void

    .line 175
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_15
    if-ltz v3, :cond_65

    .line 176
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 177
    .local v1, "filter":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 178
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_21
    iget-object v8, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    move-result v8

    if-ge v4, v8, :cond_62

    .line 179
    iget-object v8, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v8, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 181
    .local v7, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_5f

    .line 182
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "k":I
    :goto_3f
    if-ltz v5, :cond_54

    .line 183
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 184
    .local v6, "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v8, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v8, p1, :cond_51

    .line 185
    const/4 v8, 0x1

    iput-boolean v8, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 186
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_51
    add-int/lit8 v5, v5, -0x1

    goto :goto_3f

    .line 189
    .end local v6    # "rec":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    :cond_54
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_5f

    .line 190
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v5    # "k":I
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 175
    .end local v0    # "action":Ljava/lang/String;
    .end local v7    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_62
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 195
    .end local v1    # "filter":Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    .end local v4    # "j":I
    :cond_65
    monitor-exit v9

    goto :goto_e

    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v3    # "i":I
    :catchall_67
    move-exception v8

    monitor-exit v9
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v8
.end method

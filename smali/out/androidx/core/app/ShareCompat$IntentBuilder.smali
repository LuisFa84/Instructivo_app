.class public Landroidx/core/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .param p1, "launchingActivity"    # Landroid/app/Activity;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 280
    iget-object v4, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "currentAddresses":[Ljava/lang/String;
    if-eqz v0, :cond_23

    array-length v1, v0

    .line 282
    .local v1, "currentLength":I
    :goto_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    new-array v2, v4, [Ljava/lang/String;

    .line 283
    .local v2, "finalAddresses":[Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 284
    if-eqz v0, :cond_1d

    .line 285
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_1d
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    return-void

    .end local v1    # "currentLength":I
    .end local v2    # "finalAddresses":[Ljava/lang/String;
    :cond_23
    move v1, v3

    .line 281
    goto :goto_a
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "add"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "old":[Ljava/lang/String;
    if-eqz v1, :cond_1d

    array-length v2, v1

    .line 295
    .local v2, "oldLength":I
    :goto_c
    array-length v5, p2

    add-int/2addr v5, v2

    new-array v3, v5, [Ljava/lang/String;

    .line 296
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_15

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    :cond_15
    array-length v5, p2

    invoke-static {p2, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    return-void

    .end local v2    # "oldLength":I
    .end local v3    # "result":[Ljava/lang/String;
    :cond_1d
    move v2, v4

    .line 294
    goto :goto_c
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 2
    .param p0, "launchingActivity"    # Landroid/app/Activity;

    .prologue
    .line 211
    new-instance v0, Landroidx/core/app/ShareCompat$IntentBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/ShareCompat$IntentBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 544
    :cond_b
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    return-object p0
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 556
    const-string v0, "android.intent.extra.BCC"

    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 557
    return-object p0
.end method

.method public addEmailCc(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 501
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 504
    :cond_b
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    return-object p0
.end method

.method public addEmailCc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "android.intent.extra.CC"

    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 517
    return-object p0
.end method

.method public addEmailTo(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 464
    :cond_b
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    return-object p0
.end method

.method public addEmailTo([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 476
    const-string v0, "android.intent.extra.EMAIL"

    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    .line 477
    return-object p0
.end method

.method public addStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 5
    .param p1, "streamUri"    # Landroid/net/Uri;

    .prologue
    .line 422
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 423
    .local v0, "currentStream":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    if-nez v0, :cond_15

    .line 424
    invoke-virtual {p0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p0

    .line 434
    .end local p0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    :goto_14
    return-object p0

    .line 426
    .restart local p0    # "this":Landroidx/core/app/ShareCompat$IntentBuilder;
    :cond_15
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 429
    :cond_20
    if-eqz v0, :cond_2e

    .line 430
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2e
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public createChooserIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 309
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 232
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    .line 233
    const-string v3, "android.intent.extra.EMAIL"

    iget-object v4, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 234
    iput-object v6, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 236
    :cond_10
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    .line 237
    const-string v3, "android.intent.extra.CC"

    iget-object v4, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 238
    iput-object v6, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    .line 240
    :cond_1d
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v3, :cond_2a

    .line 241
    const-string v3, "android.intent.extra.BCC"

    iget-object v4, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v4}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    iput-object v6, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    .line 246
    :cond_2a
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_8d

    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_8d

    .line 247
    .local v1, "needsSendMultiple":Z
    :goto_36
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 249
    .local v0, "isSendMultiple":Z
    if-nez v1, :cond_6a

    if-eqz v0, :cond_6a

    .line 252
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v3, :cond_8f

    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8f

    .line 254
    iget-object v3, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    :goto_68
    iput-object v6, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 261
    :cond_6a
    if-eqz v1, :cond_8a

    if-nez v0, :cond_8a

    .line 264
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v2, :cond_97

    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    .line 266
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 272
    :cond_8a
    :goto_8a
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v2

    .end local v0    # "isSendMultiple":Z
    .end local v1    # "needsSendMultiple":Z
    :cond_8d
    move v1, v2

    .line 246
    goto :goto_36

    .line 256
    .restart local v0    # "isSendMultiple":Z
    .restart local v1    # "needsSendMultiple":Z
    :cond_8f
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_68

    .line 268
    :cond_97
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_8a
.end method

.method public setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 343
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 332
    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    .line 333
    return-object p0
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 529
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    return-object p0
.end method

.method public setEmailCc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    return-object p0
.end method

.method public setEmailTo([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "addresses"    # [Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    .line 449
    :cond_7
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    return-object p0
.end method

.method public setHtmlText(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "htmlText"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 386
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    .line 388
    :cond_18
    return-object p0
.end method

.method public setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "streamUri"    # Landroid/net/Uri;

    .prologue
    .line 402
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 403
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    .line 406
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 367
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 368
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    return-object p0
.end method

.method public startChooser()V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method

.class final Landroidx/core/provider/FontsContractCompat$4;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroidx/core/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V
    .registers 5

    .prologue
    .line 533
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    iput-object p3, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 539
    :try_start_1
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    invoke-static {v6, v7, v8}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_22

    move-result-object v3

    .line 551
    .local v3, "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v6

    if-eqz v6, :cond_44

    .line 552
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v6

    packed-switch v6, :pswitch_data_a2

    .line 573
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$4;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$4;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 643
    .end local v3    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :goto_21
    return-void

    .line 540
    :catch_22
    move-exception v0

    .line 541
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$1;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$1;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 554
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :pswitch_2e
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$2;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$2;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 563
    :pswitch_39
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$3;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$3;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 584
    :cond_44
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    .line 585
    .local v2, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    if-eqz v2, :cond_4d

    array-length v6, v2

    if-nez v6, :cond_58

    .line 586
    :cond_4d
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$5;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$5;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 595
    :cond_58
    array-length v7, v2

    const/4 v6, 0x0

    :goto_5a
    if-ge v6, v7, :cond_83

    aget-object v1, v2, v6

    .line 596
    .local v1, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v8

    if-eqz v8, :cond_80

    .line 599
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    .line 600
    .local v4, "resultCode":I
    if-gez v4, :cond_75

    .line 603
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$6;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$6;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 611
    :cond_75
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$7;

    invoke-direct {v7, p0, v4}, Landroidx/core/provider/FontsContractCompat$4$7;-><init>(Landroidx/core/provider/FontsContractCompat$4;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 595
    .end local v4    # "resultCode":I
    :cond_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 622
    .end local v1    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :cond_83
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    invoke-static {v6, v9, v2}, Landroidx/core/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 624
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_96

    .line 627
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$8;

    invoke-direct {v7, p0}, Landroidx/core/provider/FontsContractCompat$4$8;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 637
    :cond_96
    iget-object v6, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroidx/core/provider/FontsContractCompat$4$9;

    invoke-direct {v7, p0, v5}, Landroidx/core/provider/FontsContractCompat$4$9;-><init>(Landroidx/core/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 552
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_39
    .end packed-switch
.end method

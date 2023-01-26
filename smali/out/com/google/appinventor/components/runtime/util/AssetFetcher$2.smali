.class final Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;
.super Ljava/lang/Object;
.source "AssetFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cookieValue:Ljava/lang/String;

.field final synthetic val$inputUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$inputUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$cookieValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 92
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$inputUri:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v0, v6, v7

    .line 94
    .local v0, "asset":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$inputUri:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$cookieValue:Ljava/lang/String;

    invoke-static {v7, v8, v0, v9}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 95
    .local v1, "assetFile":Ljava/io/File;
    if-eqz v1, :cond_33

    .line 97
    :try_start_18
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    .line 98
    .local v3, "form":Lcom/google/appinventor/components/runtime/Form;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 100
    .local v5, "packageuri":Landroid/net/Uri;
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_33} :catch_34

    .line 108
    .end local v3    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "packageuri":Landroid/net/Uri;
    :cond_33
    :goto_33
    return-void

    .line 103
    :catch_34
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERROR_UNABLE_TO_GET"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const-string v7, "Unable to Install new Companion Package."

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    goto :goto_33
.end method

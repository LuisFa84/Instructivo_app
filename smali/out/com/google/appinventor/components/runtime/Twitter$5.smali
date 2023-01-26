.class Lcom/google/appinventor/components/runtime/Twitter$5;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    .line 553
    .local v0, "cleanImagePath":Ljava/lang/String;
    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 554
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    const-string v5, "file://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 556
    :cond_15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v2, "imageFilePath":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 558
    new-instance v3, Ltwitter4j/StatusUpdate;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {v3, v4}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 559
    .local v3, "theTweet":Ltwitter4j/StatusUpdate;
    invoke-virtual {v3, v2}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 560
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v4

    invoke-interface {v4, v3}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    .line 570
    .end local v0    # "cleanImagePath":Ljava/lang/String;
    .end local v2    # "imageFilePath":Ljava/io/File;
    .end local v3    # "theTweet":Ltwitter4j/StatusUpdate;
    :goto_33
    return-void

    .line 563
    .restart local v0    # "cleanImagePath":Ljava/lang/String;
    .restart local v2    # "imageFilePath":Ljava/io/File;
    :cond_34
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v6, "TweetWithImage"

    const/16 v7, 0x13b

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_44
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_44} :catch_45

    goto :goto_33

    .line 566
    .end local v0    # "cleanImagePath":Ljava/lang/String;
    .end local v2    # "imageFilePath":Ljava/io/File;
    :catch_45
    move-exception v1

    .line 567
    .local v1, "e":Ltwitter4j/TwitterException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v6, "TweetWithImage"

    const/16 v7, 0x132

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 568
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 567
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_33
.end method

.class Lcom/google/appinventor/components/runtime/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$myConsumerKey:Ljava/lang/String;

.field final synthetic val$myConsumerSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 314
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Twitter;->access$000(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 315
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/Twitter$1$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Twitter$1$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 353
    :goto_1a
    return-void

    .line 326
    :cond_1b
    :try_start_1b
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v5

    const-string v6, "appinventor://twitter"

    invoke-interface {v5, v6}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v4

    .line 328
    .local v4, "newRequestToken":Ltwitter4j/auth/RequestToken;
    invoke-virtual {v4}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "authURL":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$302(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;

    .line 331
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    .line 332
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    .local v1, "browserIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$400(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    .line 334
    invoke-static {}, Lcom/google/appinventor/components/runtime/Twitter;->access$500()Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$400(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    .line 336
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Twitter;->access$600(Lcom/google/appinventor/components/runtime/Twitter;)I

    move-result v6

    .line 335
    invoke-virtual {v5, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6c
    .catch Ltwitter4j/TwitterException; {:try_start_1b .. :try_end_6c} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_6c} :catch_ab

    goto :goto_1a

    .line 337
    .end local v0    # "authURL":Ljava/lang/String;
    .end local v1    # "browserIntent":Landroid/content/Intent;
    .end local v4    # "newRequestToken":Ltwitter4j/auth/RequestToken;
    :catch_6d
    move-exception v2

    .line 338
    .local v2, "e":Ltwitter4j/TwitterException;
    const-string v5, "Twitter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v2}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 340
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v7, "Authorize"

    const/16 v8, 0x12f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 341
    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 340
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 342
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Twitter;->DeAuthorize()V

    goto/16 :goto_1a

    .line 343
    .end local v2    # "e":Ltwitter4j/TwitterException;
    :catch_ab
    move-exception v3

    .line 345
    .local v3, "ise":Ljava/lang/IllegalStateException;
    const-string v5, "Twitter"

    const-string v6, "OAuthConsumer was already set: launch IsAuthorized()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/Twitter$1$2;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Twitter$1$2;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1a
.end method

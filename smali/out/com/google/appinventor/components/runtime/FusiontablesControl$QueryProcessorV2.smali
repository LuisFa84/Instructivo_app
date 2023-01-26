.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;
.super Landroid/os/AsyncTask;
.source "FusiontablesControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryProcessorV2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final STAG:Ljava/lang/String; = "FUSION_SERVICE_ACCOUNT"

.field private static final TAG:Ljava/lang/String; = "QueryProcessorV2"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .registers 5
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 789
    const-string v0, "QueryProcessorV2"

    const-string v1, "Creating AsyncFusiontablesQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    .line 791
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    .line 792
    return-void
.end method

.method private serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 853
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 854
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1000(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$902(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 856
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    .line 857
    .local v1, "TRANSPORT":Lcom/google/api/client/http/HttpTransport;
    const/4 v0, 0x0

    .line 859
    .local v0, "JSON_FACTORY":Lcom/google/api/client/json/JsonFactory;
    const-string v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyPath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1100(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :try_start_35
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1200(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_56

    .line 866
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1300(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1100(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1202(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)Ljava/io/File;

    .line 868
    :cond_56
    new-instance v5, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 869
    invoke-virtual {v5, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    .line 870
    invoke-virtual {v5, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 871
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 872
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    .line 873
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$1200(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v5

    .line 874
    invoke-virtual {v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    .line 876
    .local v2, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    const/4 v4, 0x0

    .line 879
    .local v4, "response":Lcom/google/api/client/http/HttpResponse;
    if-eqz v4, :cond_e9

    .line 881
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    const-string v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nResultStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_bd
    const-string v5, "FUSION_SERVICE_ACCOUNT"

    const-string v6, "executed sql query"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_c4} :catch_113

    .line 899
    .end local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .end local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    :goto_c4
    const-string v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returning queryResultStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 887
    .restart local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .restart local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_e9
    :try_start_e9
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 888
    const-string v5, "FUSION_SERVICE_ACCOUNT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error with null response:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_112} :catch_113

    goto :goto_bd

    .line 893
    .end local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .end local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    :catch_113
    move-exception v3

    .line 894
    .local v3, "e":Ljava/lang/Throwable;
    const-string v5, "FUSION_SERVICE_ACCOUNT"

    const-string v6, "in Catch Throwable e"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 896
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_c4
.end method

.method private userAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 817
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 820
    new-instance v1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 821
    .local v1, "oauthHelper":Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$600(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "authToken":Ljava/lang/String;
    if-eqz v0, :cond_a8

    .line 828
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "create table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 829
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$700(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$800(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    .line 847
    :goto_3d
    return-object v3

    .line 834
    :cond_3e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v3, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 837
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    if-eqz v2, :cond_7e

    .line 838
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    const-string v3, "QueryProcessorV2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nResultStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_77
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 841
    :cond_7e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$502(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    .line 842
    const-string v3, "QueryProcessorV2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 847
    .end local v2    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_a8
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 776
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 807
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 808
    .local v0, "query":Ljava/lang/String;
    const-string v1, "QueryProcessorV2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting doInBackground "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 810
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 812
    :goto_27
    return-object v1

    :cond_28
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->userAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_27
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 776
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 918
    const-string v0, "FUSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-nez p1, :cond_20

    .line 920
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->access$900(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    .line 922
    :cond_20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 923
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ShowLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->LoadingDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 800
    :cond_18
    return-void
.end method

.method parseJsonResponseException(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string v0, "FUSION_SERVICE_ACCOUNT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseJsonResponseException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-object p1
.end method

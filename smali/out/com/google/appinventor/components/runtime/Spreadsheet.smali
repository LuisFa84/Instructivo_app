.class public Lcom/google/appinventor/components/runtime/Spreadsheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Spreadsheet.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ObservableDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Spreadsheet is a non-visible component for storing and receiving data from a Spreadsheet document using the Google Sheets API. <p>In order to utilize this component, one must first have a Google Developer Account. Then, one must create a new project under that Google Developer Account, enable the Google Sheets API on that project, and finally create a Service Account for the Sheets API.</p><p>Instructions on how to create the Service Account, as well as where to find other relevant information for using the Spreadsheet Component, can be found <a href=\'/reference/other/googlesheets-api-setup.html\'>here</a>.</p>"
    iconName = "images/spreadsheet.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.MAIN"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.google.appinventor.components.runtime.WebViewActivity"
            screenOrientation = "behind"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "googlesheets.jar",
        "jackson-core.jar",
        "google-api-client.jar",
        "google-api-client-jackson2.jar",
        "google-http-client.jar",
        "google-http-client-jackson2.jar",
        "google-oauth-client.jar",
        "google-oauth-client-jetty.jar",
        "grpc-context.jar",
        "opencensus.jar",
        "opencensus-contrib-http-util.jar",
        "guava.jar",
        "jetty.jar",
        "jetty-util.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCOUNT_MANAGER",
        "android.permission.GET_ACCOUNTS",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/ObservableDataSource",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SPREADSHEET"

.field private static final WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;


# instance fields
.field private ApplicationName:Ljava/lang/String;

.field private accessToken:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private cachedCredentialsFile:Ljava/io/File;

.field private columns:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private credentialsPath:Ljava/lang/String;

.field private lastTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private sheetIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

.field private spreadsheetID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    const-class v0, Lcom/google/appinventor/components/runtime/WebViewActivity;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Spreadsheet;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 4
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    .line 155
    const-string v0, "App Inventor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->ApplicationName:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    .line 159
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    .line 166
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/HashMap;

    .line 146
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 147
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getSheetsService()Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .param p1, "x1"    # Lcom/google/api/services/sheets/v4/Sheets;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getSheetID(Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->updateColumns(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method private authorize()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    if-nez v2, :cond_12

    .line 266
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 267
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    .line 266
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    .line 273
    :cond_12
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 276
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "https://www.googleapis.com/auth/spreadsheets"

    aput-object v5, v3, v4

    .line 277
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->createScoped(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 278
    .local v0, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->refreshToken()Z

    .line 279
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    .line 280
    const-string v2, "SPREADSHEET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Credential after refresh token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-object v0
.end method

.method private getColString(I)Ljava/lang/String;
    .registers 8
    .param p1, "colNumber"    # I

    .prologue
    .line 300
    if-nez p1, :cond_5

    .line 301
    const-string v1, ""

    .line 311
    :cond_4
    return-object v1

    .line 302
    :cond_5
    const/16 v3, 0x1a

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "A"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "B"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "C"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "D"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "E"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "F"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "G"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "H"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "I"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "J"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "K"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "L"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "M"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "N"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "O"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "P"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "Q"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "R"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "S"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "T"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "U"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "V"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "W"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "X"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "Y"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "Z"

    aput-object v4, v0, v3

    .line 305
    .local v0, "alphabet":[Ljava/lang/String;
    const-string v1, ""

    .line 306
    .local v1, "colReference":Ljava/lang/String;
    :goto_9f
    if-lez p1, :cond_4

    .line 307
    add-int/lit8 v3, p1, -0x1

    rem-int/lit8 v3, v3, 0x1a

    aget-object v2, v0, v3

    .line 308
    .local v2, "digit":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x1a

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 310
    goto :goto_9f
.end method

.method private getColumn(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 4
    .param p1, "column"    # I

    .prologue
    .line 1900
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 1902
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 1903
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/google/appinventor/components/runtime/util/YailList;
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1906
    .restart local v0    # "result":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_15
    return-object v0
.end method

.method private getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 6
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 1885
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 1887
    .local v2, "result":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 1888
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1890
    .local v1, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1891
    move-object v2, v1

    .line 1896
    .end local v1    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_28
    return-object v2

    .line 1887
    .restart local v1    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 409
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_7

    move-result-object v2

    .line 414
    :goto_4
    return-object v2

    .line 410
    :catch_5
    move-exception v0

    .line 411
    .local v0, "e":Ljava/net/SocketTimeoutException;
    throw v0

    .line 412
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v1

    .line 414
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_4
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 383
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 385
    const-string v2, "UTF-8"

    .line 387
    :cond_9
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 389
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 390
    .local v1, "contentLength":I
    if-eq v1, v7, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 393
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_1d
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 395
    .local v0, "buf":[C
    :goto_21
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v7, :cond_37

    .line 396
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2c

    goto :goto_21

    .line 400
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_2c
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 390
    .restart local v1    # "contentLength":I
    :cond_31
    :try_start_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1d

    .line 398
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_2c

    move-result-object v6

    .line 400
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 398
    return-object v6
.end method

.method private getSheetID(Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I
    .registers 11
    .param p1, "sheetsSvcParam"    # Lcom/google/api/services/sheets/v4/Sheets;
    .param p2, "sheetName"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 175
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 176
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 196
    :goto_15
    return v3

    .line 179
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v5

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->get(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    move-result-object v1

    .line 180
    .local v1, "getSheetRequest":Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->setRanges(Ljava/util/List;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    .line 183
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->setIncludeGridData(Ljava/lang/Boolean;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    .line 184
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->execute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/sheets/v4/model/Spreadsheet;

    .line 185
    .local v4, "testSheet":Lcom/google/api/services/sheets/v4/model/Spreadsheet;
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->size()I

    move-result v5

    if-nez v5, :cond_41

    move v3, v6

    .line 186
    goto :goto_15

    .line 188
    :cond_41
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->getSheets()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/sheets/v4/model/Sheet;

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/model/Sheet;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getSheetId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 189
    .local v3, "sheetID":I
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_61} :catch_62
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_61} :catch_7f

    goto :goto_15

    .line 191
    .end local v1    # "getSheetRequest":Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "sheetID":I
    .end local v4    # "testSheet":Lcom/google/api/services/sheets/v4/model/Spreadsheet;
    :catch_62
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSheetID: IOException - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    move v3, v6

    .line 193
    goto :goto_15

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7f
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSheetID: Unknown Exception - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    move v3, v6

    .line 196
    goto/16 :goto_15
.end method

.method private getSheetsService()Lcom/google/api/services/sheets/v4/Sheets;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    if-nez v1, :cond_22

    .line 289
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->authorize()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 290
    .local v0, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    new-instance v1, Lcom/google/api/services/sheets/v4/Sheets$Builder;

    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v2}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 291
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/sheets/v4/Sheets$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->ApplicationName:Ljava/lang/String;

    .line 292
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Builder;->build()Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    .line 295
    .end local v0    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :cond_22
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    return-object v1
.end method

.method private updateColumns(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "parsedCsv"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 1878
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 1882
    :goto_6
    return-void

    .line 1879
    :catch_7
    move-exception v0

    .line 1880
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_6
.end method


# virtual methods
.method public AddCol(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 9
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, appends the values to the next empty column of the sheet."
    .end annotation

    .prologue
    .line 1017
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 1018
    :cond_a
    const-string v4, "AddCol: SpreadsheetID is empty."

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1092
    :goto_f
    return-void

    .line 1020
    :cond_10
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    const-string v5, ""

    if-eq v4, v5, :cond_1a

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 1021
    :cond_1a
    const-string v4, "AddCol: Credentials JSON is required."

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 1026
    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/LList;

    invoke-virtual {v4}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1028
    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v2, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1032
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_45
    new-instance v4, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v4}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1033
    invoke-virtual {v4, v3}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 1036
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v4, Lcom/google/appinventor/components/runtime/Spreadsheet$8;

    invoke-direct {v4, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$8;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public AddRow(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 10
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, appends the values to the next empty row of the sheet. Additionally, this returns the row number for the new row."
    .end annotation

    .prologue
    .line 660
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v6, ""

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 661
    :cond_a
    const-string v5, "AddRow: SpreadsheetID is empty."

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 727
    :goto_f
    return-void

    .line 663
    :cond_10
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    const-string v6, ""

    if-eq v5, v6, :cond_1a

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v5, :cond_20

    .line 664
    :cond_1a
    const-string v5, "AddRow: Credentials JSON is required."

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 668
    :cond_20
    move-object v1, p1

    .line 671
    .local v1, "rangeRef":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/LList;

    .line 672
    .local v3, "rowValues":Lgnu/lists/LList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 674
    .local v2, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v5, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v5}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 678
    invoke-virtual {v5, v4}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setRange(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 681
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v5, Lcom/google/appinventor/components/runtime/Spreadsheet$4;

    invoke-direct {v5, p0, v1, v0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$4;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public ApplicationName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->ApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationName(Ljava/lang/String;)V
    .registers 2
    .param p1, "ApplicationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App Inventor"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of your application, used when making API calls."
    .end annotation

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->ApplicationName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public ClearRange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rangeReference"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Empties the cells in the given range. Once complete, this block triggers the FinishedClearRange callback event."
    .end annotation

    .prologue
    .line 1590
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 1591
    :cond_a
    const-string v1, "ClearRange: SpreadsheetID is empty."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1618
    :goto_f
    return-void

    .line 1593
    :cond_10
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 1594
    const-string v1, "ClearRange: Credential JSON is required."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 1598
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "rangeRef":Ljava/lang/String;
    const-string v1, "SPREADSHEET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$14;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$14;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public CredentialsJson()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-object v0
.end method

.method public CredentialsJson(Ljava/lang/String;)V
    .registers 2
    .param p1, "credentialsPath"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The JSON File with credentials for the Service Account"
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .registers 5
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered whenever an API call encounters an error. Details about the error are in `errorMessage`."
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    .line 321
    .local v0, "thisInstance":Lcom/google/appinventor/components/runtime/Spreadsheet;
    const-string v1, "SPREADSHEET"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public FinishedAddCol(I)V
    .registers 6
    .param p1, "columnNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event will be triggered once the AddCol method has finished executing and the values on the spreadsheet have been updated. Additionally, this returns the column number for the new column."
    .end annotation

    .prologue
    .line 1104
    const-string v0, "FinishedAddCol"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1105
    return-void
.end method

.method public FinishedAddRow(I)V
    .registers 6
    .param p1, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the AddRow block, called once the values on the table have been updated."
    .end annotation

    .prologue
    .line 738
    const-string v0, "FinishedAddRow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 739
    return-void
.end method

.method public FinishedClearRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ClearRange block."
    .end annotation

    .prologue
    .line 1627
    const-string v0, "FinishedClearRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1628
    return-void
.end method

.method public FinishedRemoveCol()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the RemoveCol block, called once the values on the table have been updated."
    .end annotation

    .prologue
    .line 1168
    const-string v0, "FinishedRemoveCol"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1169
    return-void
.end method

.method public FinishedRemoveRow()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the RemoveRow block, called once thevalues on the table have been updated."
    .end annotation

    .prologue
    .line 803
    const-string v0, "FinishedRemoveRow"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method public FinishedWriteCell()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteCell block."
    .end annotation

    .prologue
    .line 1369
    const-string v0, "FinishedWriteCell"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1370
    return-void
.end method

.method public FinishedWriteCol()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteCol block, called once thevalues on the table have been updated."
    .end annotation

    .prologue
    .line 1004
    const-string v0, "FinishedWriteCol"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1005
    return-void
.end method

.method public FinishedWriteRange()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteRange block."
    .end annotation

    .prologue
    .line 1579
    const-string v0, "FinishedWriteRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1580
    return-void
.end method

.method public FinishedWriteRow()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteRow block, called after the values on the table have finished updating"
    .end annotation

    .prologue
    .line 646
    const-string v0, "FinishedWriteRow"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 647
    return-void
.end method

.method public GetCellReference(II)Ljava/lang/String;
    .registers 9
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the integer representation of rows and columns to A1-Notation used in Google Sheets for a single cell."
    .end annotation

    .prologue
    .line 341
    const/16 v3, 0x1a

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "A"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "B"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "C"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "D"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "E"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "F"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "G"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "H"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "I"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "J"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "K"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "L"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "M"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "N"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "O"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "P"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "Q"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "R"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "S"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "T"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "U"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "V"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "W"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "X"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "Y"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "Z"

    aput-object v4, v0, v3

    .line 344
    .local v0, "alphabet":[Ljava/lang/String;
    const-string v1, ""

    .line 345
    .local v1, "colRange":Ljava/lang/String;
    :goto_9a
    if-lez p2, :cond_be

    .line 346
    add-int/lit8 v3, p2, -0x1

    rem-int/lit8 v3, v3, 0x1a

    aget-object v2, v0, v3

    .line 347
    .local v2, "digit":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    add-int/lit8 v3, p2, -0x1

    div-int/lit8 v3, v3, 0x1a

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p2, v4

    .line 349
    goto :goto_9a

    .line 350
    .end local v2    # "digit":Ljava/lang/String;
    :cond_be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public GetRangeReference(IIII)Ljava/lang/String;
    .registers 7
    .param p1, "row1"    # I
    .param p2, "col1"    # I
    .param p3, "row2"    # I
    .param p4, "col2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the integer representation of rows and columns for the corners of the range to A1-Notation used in Google Sheets."
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GetCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GetCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GotCellData(Ljava/lang/String;)V
    .registers 5
    .param p1, "cellData"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadCell block. The `cellData` is the text value in the cell (and not the underlying formula)."
    .end annotation

    .prologue
    .line 1299
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GotCellData got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v0, "GotCellData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1301
    return-void
.end method

.method public GotColData(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After calling the ReadCol method, the data in the column will be stored as a list of text values in `colDataList`."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 926
    .local p1, "colDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GotColData got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v0, "GotColData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method public GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadWithExactQuery or ReadWithPartialQuery block. The `response` is a list of rows numbers and a list of rows containing cell data."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GotFilterResult got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v0, "GotFilterResult"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public GotRangeData(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadRange block. The `rangeData` is a list of rows with the requested dimensions."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, "rangeData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GotRangeData got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const-string v0, "GotRangeData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1491
    return-void
.end method

.method public GotRowData(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadRow block. The `rowDataList` is a list of cell values in order of increasing column number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "rowDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "GotRowData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method public GotSheetData(Ljava/util/List;)V
    .registers 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadSheet block. The `sheetData` is a list of rows."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1823
    .local p1, "sheetData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GotSheetData got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const-string v0, "GotSheetData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1825
    return-void
.end method

.method public ReadCell(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "cellReference"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the cell at the given cellReference and triggers the GotCellData callback event."
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1184
    :cond_a
    const-string v0, "ReadCell: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1289
    :goto_f
    return-void

    .line 1193
    :cond_10
    const-string v0, "[a-zA-Z]+[0-9]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1194
    const-string v0, "ReadCell: Invalid Cell Reference"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 1199
    :cond_1e
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$10;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public ReadCol(Ljava/lang/String;I)V
    .registers 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the column at the given colNumber and triggers the GotColData callback event."
    .end annotation

    .prologue
    .line 817
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 818
    :cond_a
    const-string v2, "ReadCol: SpreadsheetID is empty."

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 916
    :goto_f
    return-void

    .line 827
    :cond_10
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "colReference":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "rangeRef":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$6;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet$6;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public ReadRange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rangeReference"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the cells at the given range. Triggers the getRangeReference once complete."
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1385
    :cond_a
    const-string v0, "ReadRange: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1479
    :goto_f
    return-void

    .line 1395
    :cond_10
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$12;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public ReadRow(Ljava/lang/String;I)V
    .registers 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, this method will read the row at the given rowNumber and trigger the GotRowData callback event."
    .end annotation

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 467
    :cond_a
    const-string v1, "ReadRow: SpreadsheetID is empty."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 565
    :goto_f
    return-void

    .line 476
    :cond_10
    const-string v1, "SPREADSHEET"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Row number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "rangeReference":Ljava/lang/String;
    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$2;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public ReadSheet(Ljava/lang/String;)V
    .registers 8
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the *entire* Google Sheet document and triggers the GotSheetData callback event."
    .end annotation

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 1642
    :cond_a
    const-string v0, "ReadSheet: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1646
    :goto_f
    return-void

    .line 1645
    :cond_10
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public ReadWithExactFilter(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colID"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Filters a Google Sheet for rows where the given column number matches the provided value."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 427
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadRowsWithFilter colID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 430
    :cond_2d
    const-string v0, "ReadWithExactFilter: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 435
    :goto_32
    return-void

    :cond_33
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    .line 434
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_32
.end method

.method public ReadWithPartialFilter(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colID"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Filters a Google Sheet for rows where the given column number contains the provided value string."
    .end annotation

    .prologue
    .line 444
    const-string v0, "SPREADSHEET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadWithPartialFilter colID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 447
    :cond_2c
    const-string v0, "ReadWithPartialFilter: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 452
    :goto_31
    return-void

    .line 451
    :cond_32
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_31
.end method

.method public RemoveCol(Ljava/lang/String;I)V
    .registers 4
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the column with the given column number from the table.This does not clear the column, but removes it entirely."
    .end annotation

    .prologue
    .line 1119
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$9;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1158
    return-void
.end method

.method public RemoveRow(Ljava/lang/String;I)V
    .registers 4
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the row with the given row number from the table.This does not clear the row, but removes it entirely."
    .end annotation

    .prologue
    .line 752
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$5;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 793
    return-void
.end method

.method RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;
    .registers 13
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colID"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "exact"    # Z
    .param p5, "fireEvent"    # Z

    .prologue
    .line 1650
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet$15;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;ZIZLjava/lang/String;)V

    return-object v0
.end method

.method public SpreadsheetID()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-object v0
.end method

.method public SpreadsheetID(Ljava/lang/String;)V
    .registers 5
    .param p1, "spreadsheetID"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The ID for the Google Sheets file you want to edit. You can find the spreadsheetID in the URL of the Google Sheets file."
    .end annotation

    .prologue
    .line 229
    const-string v1, "https:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 231
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object p1, v0, v1

    .line 234
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_17
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public WriteCell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "cellReference"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given text or a number as `data`, writes the value into the cell. Once complete, it triggers the FinishedWriteCell callback event"
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1312
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_e

    .line 1313
    const-string v2, "WriteCell: SpreadsheetID is empty."

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1360
    :goto_d
    return-void

    .line 1315
    :cond_e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v2, :cond_18

    .line 1316
    const-string v2, "WriteCell: Credentials JSON is required."

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_d

    .line 1321
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "rangeRef":Ljava/lang/String;
    new-instance v2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    new-array v3, v4, [Ljava/util/List;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    .line 1325
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1324
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 1327
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    const-string v2, "SPREADSHEET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing Cell: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$11;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$11;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public WriteCol(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 13
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colNumber"    # I
    .param p3, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, this method will write the values to the column of the sheet and calls the FinishedWriteCol event once complete."
    .end annotation

    .prologue
    .line 941
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v7, ""

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v6, :cond_10

    .line 942
    :cond_a
    const-string v6, "WriteCol: SpreadsheetID is empty."

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 994
    :goto_f
    return-void

    .line 944
    :cond_10
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    const-string v7, ""

    if-eq v6, v7, :cond_1a

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v6, :cond_20

    .line 945
    :cond_1a
    const-string v6, "WriteCol: Credentials JSON is required."

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 950
    :cond_20
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "colReference":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, "rangeRef":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/LList;

    invoke-virtual {v6}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 956
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 957
    .local v3, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 961
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_71
    new-instance v6, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v6}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 962
    invoke-virtual {v6, v5}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 965
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v6, Lcom/google/appinventor/components/runtime/Spreadsheet$7;

    invoke-direct {v6, p0, v4, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$7;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public WriteRange(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 15
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rangeReference"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given list of lists as `data`, writes the values into the range. The number of rows and columns in the range reference must match the dimensions of the data."
    .end annotation

    .prologue
    .line 1504
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_a

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v8, :cond_10

    .line 1505
    :cond_a
    const-string v8, "WriteRange: SpreadsheetID is empty."

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1570
    :goto_f
    return-void

    .line 1507
    :cond_10
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v8, :cond_1a

    .line 1508
    const-string v8, "WriteRange: Credentials JSON is required."

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 1514
    :cond_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1515
    .local v5, "rangeRef":Ljava/lang/String;
    const-string v8, "SPREADSHEET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing Range: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v1, -0x1

    .line 1520
    .local v1, "cols":I
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/LList;

    invoke-virtual {v8}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_59
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1521
    .local v2, "elem":Ljava/lang/Object;
    instance-of v8, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_59

    move-object v6, v2

    .line 1523
    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1525
    .local v6, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v4, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/LList;

    invoke-virtual {v8}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_79
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_87

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1527
    .local v3, "o":Ljava/lang/Object;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 1528
    .end local v3    # "o":Ljava/lang/Object;
    :cond_87
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    const/4 v8, -0x1

    if-ne v1, v8, :cond_91

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 1531
    :cond_91
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v1, :cond_59

    .line 1532
    const-string v8, "WriteRange: Rows must have the same length"

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1538
    .end local v2    # "elem":Ljava/lang/Object;
    .end local v4    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_9e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_ab

    .line 1539
    const-string v8, "WriteRange: Data must be a list of lists."

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1543
    :cond_ab
    new-instance v8, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v8}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1544
    invoke-virtual {v8, v7}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 1545
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    const-string v8, "SPREADSHEET"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Body\'s Range in A1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getRange()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v8, Lcom/google/appinventor/components/runtime/Spreadsheet$13;

    invoke-direct {v8, p0, v5, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$13;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto/16 :goto_f
.end method

.method public WriteRow(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 13
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .param p3, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, writes the values to the row of the sheet with the given row number."
    .end annotation

    .prologue
    .line 589
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v6, ""

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 590
    :cond_a
    const-string v5, "WriteRow: SpreadsheetID is empty."

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 636
    :goto_f
    return-void

    .line 592
    :cond_10
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    const-string v6, ""

    if-eq v5, v6, :cond_1a

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v5, :cond_20

    .line 593
    :cond_1a
    const-string v5, "WriteRow: Credentials JSON file is required."

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_f

    .line 598
    :cond_20
    const-string v5, "%s!A%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "rangeRef":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/LList;

    .line 602
    .local v3, "rowValues":Lgnu/lists/LList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 604
    .local v2, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v5, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v5}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 608
    invoke-virtual {v5, v4}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 611
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v5, Lcom/google/appinventor/components/runtime/Spreadsheet$3;

    invoke-direct {v5, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$3;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_f
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1860
    return-void
.end method

.method getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 13
    .param p1, "keyColumns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "useHeaders"    # Z

    .prologue
    .line 1910
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1911
    .local v5, "resultingColumns":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    if-ge v4, v6, :cond_34

    .line 1912
    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1914
    .local v3, "columnName":Ljava/lang/String;
    if-eqz p2, :cond_1c

    .line 1915
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 1924
    .local v2, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    :goto_16
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1911
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1917
    .end local v2    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_1c
    const/4 v1, 0x0

    .line 1918
    .local v1, "colIndex":I
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v8, :cond_2f

    aget-char v0, v7, v6

    .line 1919
    .local v0, "c":C
    mul-int/lit8 v1, v1, 0x1a

    .line 1920
    add-int/lit8 v9, v0, -0x41

    add-int/2addr v1, v9

    .line 1918
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 1922
    .end local v0    # "c":C
    :cond_2f
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumn(I)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .restart local v2    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_16

    .line 1927
    .end local v1    # "colIndex":I
    .end local v2    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_34
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 89
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1831
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;
    .registers 6
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "useHeaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 1837
    .local v0, "currentTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$16;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$16;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1853
    .local v1, "getDataValueTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1854
    return-object v1
.end method

.method public notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    .registers 7
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1869
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 1870
    .local v0, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-interface {v0, p0, v2, v3}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 1872
    .end local v0    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    :cond_19
    return-void
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 89
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .registers 3
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1865
    return-void
.end method

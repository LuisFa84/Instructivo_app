.class public Lcom/google/appinventor/components/runtime/util/HashFile;
.super Ljava/lang/Object;
.source "HashFile.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/util/Date;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/util/HashFile;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .registers 5
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 2
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTimestampInDb(Ljava/util/Date;)V
    .registers 3
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 81
    return-void
.end method

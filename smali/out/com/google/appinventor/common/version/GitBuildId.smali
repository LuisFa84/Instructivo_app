.class public final Lcom/google/appinventor/common/version/GitBuildId;
.super Ljava/lang/Object;
.source "GitBuildId.java"


# static fields
.field public static final ACRA_URI:Ljava/lang/String; = "${acra.uri}"

.field public static final ANT_BUILD_DATE:Ljava/lang/String; = "September 22 2022"

.field public static final GIT_BUILD_FINGERPRINT:Ljava/lang/String; = "f6360be9c531f0c8dbfd10af151b23e315949ddd"

.field public static final GIT_BUILD_VERSION:Ljava/lang/String; = "nb190"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getAcraUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    const-string v0, "${acra.uri}"

    const-string v1, "${acra.uri}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    const-string v0, ""

    .line 50
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "${acra.uri}"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getDate()Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    const-string v0, "September 22 2022"

    return-object v0
.end method

.method public static getFingerprint()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    const-string v0, "f6360be9c531f0c8dbfd10af151b23e315949ddd"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    const-string v0, "nb190"

    .line 32
    .local v0, "version":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_e

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 33
    :cond_e
    const-string v0, "none"

    .line 35
    .end local v0    # "version":Ljava/lang/String;
    :cond_10
    return-object v0
.end method

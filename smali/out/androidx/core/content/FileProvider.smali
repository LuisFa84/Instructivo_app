.class public Landroidx/core/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/FileProvider$SimplePathStrategy;,
        Landroidx/core/content/FileProvider$PathStrategy;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PATH:Ljava/lang/String; = "path"

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DEVICE_ROOT:Ljava/io/File;

.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final TAG_EXTERNAL_MEDIA:Ljava/lang/String; = "external-media-path"

.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"

.field private static sCache:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/core/content/FileProvider$PathStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStrategy:Landroidx/core/content/FileProvider$PathStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 340
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 360
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 691
    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 814
    move-object v0, p0

    .line 815
    .local v0, "cur":Ljava/io/File;
    array-length v4, p1

    const/4 v3, 0x0

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_4
    if-ge v3, v4, :cond_13

    aget-object v2, p1, v3

    .line 816
    .local v2, "segment":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 817
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 815
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_f
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_4

    .line 820
    .end local v2    # "segment":Ljava/lang/String;
    :cond_13
    return-object v1

    .restart local v2    # "segment":Ljava/lang/String;
    :cond_14
    move-object v0, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_f
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "newLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 830
    new-array v0, p1, [Ljava/lang/Object;

    .line 831
    .local v0, "result":[Ljava/lang/Object;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "original"    # [Ljava/lang/String;
    .param p1, "newLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 824
    new-array v0, p1, [Ljava/lang/String;

    .line 825
    .local v0, "result":[Ljava/lang/String;
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    return-object v0
.end method

.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 575
    sget-object v3, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 576
    :try_start_3
    sget-object v2, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 577
    .local v1, "strat":Landroidx/core/content/FileProvider$PathStrategy;
    if-nez v1, :cond_16

    .line 579
    :try_start_d
    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_10} :catch_24
    .catchall {:try_start_d .. :try_end_10} :catchall_21

    move-result-object v1

    .line 587
    :try_start_11
    sget-object v2, Landroidx/core/content/FileProvider;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_16
    monitor-exit v3

    .line 590
    return-object v1

    .line 580
    :catch_18
    move-exception v0

    .line 581
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 589
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "strat":Landroidx/core/content/FileProvider$PathStrategy;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw v2

    .line 583
    .restart local v1    # "strat":Landroidx/core/content/FileProvider$PathStrategy;
    :catch_24
    move-exception v0

    .line 584
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_21
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "authority"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "file"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 417
    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object v0

    .line 418
    .local v0, "strategy":Landroidx/core/content/FileProvider$PathStrategy;
    invoke-interface {v0, p2}, Landroidx/core/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static modeToMode(Ljava/lang/String;)I
    .registers 5
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 790
    const-string v1, "r"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 791
    const/high16 v0, 0x10000000

    .line 810
    .local v0, "modeBits":I
    :goto_a
    return v0

    .line 792
    .end local v0    # "modeBits":I
    :cond_b
    const-string v1, "w"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "wt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 793
    :cond_1b
    const/high16 v0, 0x2c000000

    .restart local v0    # "modeBits":I
    goto :goto_a

    .line 796
    .end local v0    # "modeBits":I
    :cond_1e
    const-string v1, "wa"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 797
    const/high16 v0, 0x2a000000

    .restart local v0    # "modeBits":I
    goto :goto_a

    .line 800
    .end local v0    # "modeBits":I
    :cond_29
    const-string v1, "rw"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 801
    const/high16 v0, 0x38000000

    .restart local v0    # "modeBits":I
    goto :goto_a

    .line 803
    .end local v0    # "modeBits":I
    :cond_34
    const-string v1, "rwt"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 804
    const/high16 v0, 0x3c000000    # 0.0078125f

    .restart local v0    # "modeBits":I
    goto :goto_a

    .line 808
    .end local v0    # "modeBits":I
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v7, Landroidx/core/content/FileProvider$SimplePathStrategy;

    invoke-direct {v7, p1}, Landroidx/core/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V

    .line 603
    .local v7, "strat":Landroidx/core/content/FileProvider$SimplePathStrategy;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x80

    .line 604
    invoke-virtual {v11, p1, v12}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 606
    .local v4, "info":Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.support.FILE_PROVIDER_PATHS"

    .line 605
    invoke-virtual {v4, v11, v12}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 607
    .local v3, "in":Landroid/content/res/XmlResourceParser;
    if-nez v3, :cond_23

    .line 608
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 613
    :cond_23
    :goto_23
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_c1

    .line 614
    const/4 v11, 0x2

    if-ne v10, v11, :cond_23

    .line 615
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 617
    .local v8, "tag":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 618
    .local v5, "name":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "path"

    invoke-interface {v3, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 620
    .local v6, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 621
    .local v9, "target":Ljava/io/File;
    const-string v11, "root-path"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 622
    sget-object v9, Landroidx/core/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;

    .line 647
    :cond_4a
    :goto_4a
    if-eqz v9, :cond_23

    .line 648
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v9, v11}, Landroidx/core/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v7, v5, v11}, Landroidx/core/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_23

    .line 623
    :cond_5a
    const-string v11, "files-path"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 624
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    goto :goto_4a

    .line 625
    :cond_67
    const-string v11, "cache-path"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_74

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    goto :goto_4a

    .line 627
    :cond_74
    const-string v11, "external-path"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 628
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    goto :goto_4a

    .line 629
    :cond_81
    const-string v11, "external-files-path"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 630
    const/4 v11, 0x0

    invoke-static {p0, v11}, Landroidx/core/content/ContextCompat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 631
    .local v1, "externalFilesDirs":[Ljava/io/File;
    array-length v11, v1

    if-lez v11, :cond_4a

    .line 632
    const/4 v11, 0x0

    aget-object v9, v1, v11

    goto :goto_4a

    .line 634
    .end local v1    # "externalFilesDirs":[Ljava/io/File;
    :cond_95
    const-string v11, "external-cache-path"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 635
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    .line 636
    .local v0, "externalCacheDirs":[Ljava/io/File;
    array-length v11, v0

    if-lez v11, :cond_4a

    .line 637
    const/4 v11, 0x0

    aget-object v9, v0, v11

    goto :goto_4a

    .line 639
    .end local v0    # "externalCacheDirs":[Ljava/io/File;
    :cond_a8
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_4a

    const-string v11, "external-media-path"

    .line 640
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    .line 642
    .local v2, "externalMediaDirs":[Ljava/io/File;
    array-length v11, v2

    if-lez v11, :cond_4a

    .line 643
    const/4 v11, 0x0

    aget-object v9, v2, v11

    goto :goto_4a

    .line 653
    .end local v2    # "externalMediaDirs":[Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "target":Ljava/io/File;
    :cond_c1
    return-object v7
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 385
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_f

    .line 386
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must not be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_f
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1b

    .line 389
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grant uri permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1b
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/core/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$PathStrategy;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    .line 393
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 541
    iget-object v1, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v1, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 542
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 493
    iget-object v4, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v4, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 495
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 496
    .local v2, "lastDot":I
    if-ltz v2, :cond_27

    .line 497
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "mime":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 504
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "mime":Ljava/lang/String;
    :goto_26
    return-object v3

    :cond_27
    const-string v3, "application/octet-stream"

    goto :goto_26
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 513
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external inserts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "mode"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v2, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v2, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 565
    .local v0, "file":Ljava/io/File;
    invoke-static {p2}, Landroidx/core/content/FileProvider;->modeToMode(Ljava/lang/String;)I

    move-result v1

    .line 566
    .local v1, "fileMode":I
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 454
    iget-object v7, p0, Landroidx/core/content/FileProvider;->mStrategy:Landroidx/core/content/FileProvider$PathStrategy;

    invoke-interface {v7, p1}, Landroidx/core/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 456
    .local v3, "file":Ljava/io/File;
    if-nez p2, :cond_a

    .line 457
    sget-object p2, Landroidx/core/content/FileProvider;->COLUMNS:[Ljava/lang/String;

    .line 460
    :cond_a
    array-length v7, p2

    new-array v1, v7, [Ljava/lang/String;

    .line 461
    .local v1, "cols":[Ljava/lang/String;
    array-length v7, p2

    new-array v6, v7, [Ljava/lang/Object;

    .line 462
    .local v6, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 463
    .local v4, "i":I
    array-length v8, p2

    const/4 v7, 0x0

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_14
    if-ge v7, v8, :cond_49

    aget-object v0, p2, v7

    .line 464
    .local v0, "col":Ljava/lang/String;
    const-string v9, "_display_name"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 465
    const-string v9, "_display_name"

    aput-object v9, v1, v5

    .line 466
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    .line 463
    :goto_2c
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_14

    .line 467
    :cond_30
    const-string v9, "_size"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 468
    const-string v9, "_size"

    aput-object v9, v1, v5

    .line 469
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5

    goto :goto_2c

    .line 473
    .end local v0    # "col":Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_49
    invoke-static {v1, v5}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v6, v5}, Landroidx/core/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 476
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 477
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v2, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 478
    return-object v2

    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .restart local v0    # "col":Ljava/lang/String;
    :cond_5b
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2c
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 523
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No external updates"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

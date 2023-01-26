.class public Lcom/google/appinventor/components/runtime/util/RUtil;
.super Ljava/lang/Object;
.source "RUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z
    .registers 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileScope"    # Lcom/google/appinventor/components/common/FileScope;

    .prologue
    const/16 v5, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-nez p2, :cond_51

    .line 24
    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v1, v2

    .line 48
    :cond_f
    :goto_f
    :pswitch_f
    return v1

    .line 27
    :cond_10
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "file:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    .line 28
    goto :goto_f

    .line 30
    :cond_22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_43

    .line 31
    move-object v0, p1

    .line 32
    .local v0, "fpath":Ljava/lang/String;
    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 33
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_f

    .line 37
    .end local v0    # "fpath":Ljava/lang/String;
    :cond_43
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 38
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_4f
    move v1, v2

    goto :goto_f

    .line 40
    :cond_51
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_70

    move v1, v2

    .line 48
    goto :goto_f

    .line 42
    :pswitch_5e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_f

    move v1, v2

    goto :goto_f

    .line 44
    :pswitch_64
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v3

    if-eqz v3, :cond_6e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_f

    :cond_6e
    move v1, v2

    goto :goto_f

    .line 40
    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_64
        :pswitch_f
    .end packed-switch
.end method

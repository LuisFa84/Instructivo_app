.class public Landroidx/core/util/AtomicFile;
.super Ljava/lang/Object;
.source "AtomicFile.java"


# instance fields
.field private final mBackupName:Ljava/io/File;

.field private final mBaseName:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "baseName"    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    .line 57
    return-void
.end method

.method private static sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .param p0, "stream"    # Ljava/io/FileOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    .line 213
    const/4 v0, 0x1

    .line 216
    :goto_8
    return v0

    .line 214
    :catch_9
    move-exception v0

    .line 216
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public delete()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 73
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    return-void
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    if-eqz p1, :cond_14

    .line 145
    invoke-static {p1}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 147
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 148
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 149
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v2, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    .line 154
    :cond_14
    :goto_14
    return-void

    .line 150
    :catch_15
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "failWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
    .registers 5
    .param p1, "str"    # Ljava/io/FileOutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    if-eqz p1, :cond_d

    .line 128
    invoke-static {p1}, Landroidx/core/util/AtomicFile;->sync(Ljava/io/FileOutputStream;)Z

    .line 130
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 131
    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_e

    .line 136
    :cond_d
    :goto_d
    return-void

    .line 132
    :catch_e
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AtomicFile"

    const-string v2, "finishWrite: Got exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getBaseFile()Ljava/io/File;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    return-object v0
.end method

.method public openRead()Ljava/io/FileInputStream;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 172
    iget-object v0, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 174
    :cond_14
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public readFully()[B
    .registers 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Landroidx/core/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    .line 185
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 186
    .local v4, "pos":I
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 187
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 189
    .local v2, "data":[B
    :cond_b
    :goto_b
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v5, v2, v4, v6}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b

    move-result v0

    .line 192
    .local v0, "amt":I
    if-gtz v0, :cond_17

    .line 206
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    return-object v2

    .line 197
    :cond_17
    add-int/2addr v4, v0

    .line 198
    :try_start_18
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 199
    array-length v6, v2

    sub-int/2addr v6, v4

    if-le v1, v6, :cond_b

    .line 200
    add-int v6, v4, v1

    new-array v3, v6, [B

    .line 201
    .local v3, "newData":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2b

    .line 202
    move-object v2, v3

    goto :goto_b

    .line 206
    .end local v0    # "amt":I
    .end local v1    # "avail":I
    .end local v2    # "data":[B
    .end local v3    # "newData":[B
    :catchall_2b
    move-exception v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v6
.end method

.method public startWrite()Ljava/io/FileOutputStream;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 94
    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_48

    .line 95
    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    iget-object v5, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 96
    const-string v4, "AtomicFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to backup file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/util/AtomicFile;->mBackupName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_40
    :goto_40
    :try_start_40
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_47} :catch_4e

    .line 117
    .local v3, "str":Ljava/io/FileOutputStream;
    :goto_47
    return-object v3

    .line 100
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :cond_48
    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_40

    .line 106
    :catch_4e
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 108
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_76

    .line 109
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_76
    :try_start_76
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_7d} :catch_7e

    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_47

    .line 113
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_7e
    move-exception v1

    .line 114
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/util/AtomicFile;->mBaseName:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

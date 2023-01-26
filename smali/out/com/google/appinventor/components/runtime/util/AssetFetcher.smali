.class public Lcom/google/appinventor/components/runtime/util/AssetFetcher;
.super Ljava/lang/Object;
.source "AssetFetcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static background:Ljava/util/concurrent/ExecutorService;

.field private static context:Landroid/content/Context;

.field private static db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

.field private static volatile inError:Z

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashDatabase;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    .line 61
    const-class v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 5
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static byteArray2Hex([B)Ljava/lang/String;
    .registers 9
    .param p0, "hash"    # [B

    .prologue
    const/4 v3, 0x0

    .line 237
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 238
    .local v1, "formatter":Ljava/util/Formatter;
    array-length v4, p0

    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_1d

    aget-byte v0, p0, v2

    .line 239
    .local v0, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 241
    .end local v0    # "b":B
    :cond_1d
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "asset"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;

    invoke-direct {v1, p2, p1, p3, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 84
    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 26
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;
    .param p2, "asset"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 146
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    .line 147
    .local v10, "form":Lcom/google/appinventor/components/runtime/Form;
    const/16 v19, 0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-le v0, v1, :cond_2e

    .line 148
    sget-object v20, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    monitor-enter v20

    .line 149
    :try_start_f
    sget-boolean v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    if-eqz v19, :cond_16

    .line 150
    const/4 v14, 0x0

    monitor-exit v20

    .line 232
    :cond_15
    :goto_15
    return-object v14

    .line 152
    :cond_16
    const/16 v19, 0x1

    sput-boolean v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 153
    new-instance v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    const/4 v14, 0x0

    monitor-exit v20

    goto :goto_15

    .line 161
    :catchall_2b
    move-exception v19

    monitor-exit v20
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v19

    .line 164
    :cond_2e
    const/16 v16, 0x0

    .line 165
    .local v16, "responseCode":I
    new-instance v14, Ljava/io/File;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v10, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v19

    const-string v20, "assets/"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v14, "outFile":Ljava/io/File;
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "target file = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v9, 0x0

    .line 170
    .local v9, "fileHash":Ljava/lang/String;
    const/4 v7, 0x0

    .line 171
    .local v7, "error":Z
    :try_start_6b
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 173
    .local v5, "connection":Ljava/net/HttpURLConnection;
    if-eqz v5, :cond_1b6

    .line 174
    const-string v19, "Cookie"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AppInventor = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v11

    .line 176
    .local v11, "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    if-eqz v11, :cond_b5

    .line 177
    const-string v19, "If-None-Match"

    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_b5
    const-string v19, "GET"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 181
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "asset = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " responseCode = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 183
    .local v15, "parentOutFile":Ljava/io/File;
    const-string v19, "ETag"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 185
    const/16 v19, 0x130

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 189
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_156

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v19

    if-nez v19, :cond_156

    .line 190
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to create assets directory "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_125} :catch_125

    .line 216
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v15    # "parentOutFile":Ljava/io/File;
    .end local v18    # "url":Ljava/net/URL;
    :catch_125
    move-exception v6

    .line 217
    .local v6, "e":Ljava/lang/Exception;
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception while fetching "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    add-int/lit8 v19, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    goto/16 :goto_15

    .line 192
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v11    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v15    # "parentOutFile":Ljava/io/File;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_156
    :try_start_156
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 193
    .local v12, "in":Ljava/io/BufferedInputStream;
    new-instance v13, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v20, 0x1000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_177} :catch_125

    .line 196
    .local v13, "out":Ljava/io/BufferedOutputStream;
    :goto_177
    :try_start_177
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .line 197
    .local v4, "b":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_19c

    .line 202
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_184} :catch_1a0
    .catchall {:try_start_177 .. :try_end_184} :catchall_1b1

    .line 207
    :try_start_184
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    .line 209
    .end local v4    # "b":I
    :goto_187
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    .end local v11    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v12    # "in":Ljava/io/BufferedInputStream;
    .end local v13    # "out":Ljava/io/BufferedOutputStream;
    .end local v15    # "parentOutFile":Ljava/io/File;
    :goto_18a
    if-eqz v7, :cond_1b8

    .line 214
    add-int/lit8 v19, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_199} :catch_125

    move-result-object v14

    goto/16 :goto_15

    .line 200
    .restart local v4    # "b":I
    .restart local v11    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v12    # "in":Ljava/io/BufferedInputStream;
    .restart local v13    # "out":Ljava/io/BufferedOutputStream;
    .restart local v15    # "parentOutFile":Ljava/io/File;
    :cond_19c
    :try_start_19c
    invoke-virtual {v13, v4}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a0
    .catchall {:try_start_19c .. :try_end_19f} :catchall_1b1

    goto :goto_177

    .line 203
    .end local v4    # "b":I
    :catch_1a0
    move-exception v6

    .line 204
    .local v6, "e":Ljava/io/IOException;
    :try_start_1a1
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v20, "copying assets"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ac
    .catchall {:try_start_1a1 .. :try_end_1ac} :catchall_1b1

    .line 205
    const/4 v7, 0x1

    .line 207
    :try_start_1ad
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_187

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1b1
    move-exception v19

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    throw v19
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b6} :catch_125

    .line 211
    .end local v11    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v12    # "in":Ljava/io/BufferedInputStream;
    .end local v13    # "out":Ljava/io/BufferedOutputStream;
    .end local v15    # "parentOutFile":Ljava/io/File;
    :cond_1b6
    const/4 v7, 0x1

    goto :goto_18a

    .line 222
    :cond_1b8
    const/16 v19, 0xc8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ec

    .line 223
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 224
    .local v17, "timeStamp":Ljava/util/Date;
    new-instance v8, Lcom/google/appinventor/components/runtime/util/HashFile;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v9, v1}, Lcom/google/appinventor/components/runtime/util/HashFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 225
    .local v8, "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v19

    if-nez v19, :cond_1e3

    .line 226
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->insertHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)V

    goto/16 :goto_15

    .line 228
    :cond_1e3
    sget-object v19, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->updateHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)I

    goto/16 :goto_15

    .line 232
    .end local v8    # "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v17    # "timeStamp":Ljava/util/Date;
    :cond_1ec
    const/4 v14, 0x0

    goto/16 :goto_15
.end method

.method public static loadExtensions(Ljava/lang/String;)V
    .registers 10
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadExtensions called jsonString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_18
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 117
    .local v4, "form":Lcom/google/appinventor/components/runtime/ReplForm;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_39

    .line 120
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "loadExtensions: No Extensions"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V

    .line 143
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    :goto_38
    return-void

    .line 124
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    :cond_39
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_75

    .line 125
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "extensionName":Ljava/lang/String;
    if-eqz v2, :cond_64

    .line 127
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadExtensions, extensionName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 130
    :cond_64
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "extensionName was null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_6b} :catch_6c

    goto :goto_38

    .line 140
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "extensionName":Ljava/lang/String;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    .end local v5    # "i":I
    :catch_6c
    move-exception v1

    .line 141
    .local v1, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "JSON Exception parsing extension string"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 135
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    .restart local v5    # "i":I
    :cond_75
    :try_start_75
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V

    .line 136
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_7c
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_7b} :catch_6c

    goto :goto_38

    .line 137
    :catch_7c
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7d
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Error in form.loadComponents"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_84} :catch_6c

    goto :goto_38
.end method

.method public static upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "inputUri"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    invoke-direct {v1, p1, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 110
    return-void
.end method

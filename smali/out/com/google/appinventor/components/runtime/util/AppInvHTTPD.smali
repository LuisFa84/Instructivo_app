.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private final PROXY_TEXT:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .registers 6
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .param p3, "secure"    # Z
    .param p4, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 425
    const-string v0, "<html>\n  <head>\n    <script type=\"text/javascript\">\n      var origin = \"*\"; // Will be replaced with real origin\n      var QUEUE = [];\n      var QUEUE_RUNNING = false;\n      async function sendtophone(how, value, value2) {\n        if (how == \'blocks\') {\n          await sendblocks(value);\n        } else if (how == \'version\') {\n          let resp = await getversion();\n          window.opener.postMessage(resp, origin);\n        } else if (how == \'asset\') {\n          // console.log(\"About to PUT \" + value);\n          let resp = await fetch(\'/?\' + value, {\n            method : \'PUT\',\n            mode: \'cors\',\n            body: value2 });\n          let result = await resp.text();\n          // console.log(\"Asset Result = \" + result);\n        } else if (how == \'extensions\') {\n          let resp = await\n          fetch(\'/_extensions\', {\n            method: \'POST\',\n            mode: \'cors\',\n            body: value });\n          let result = await resp.text();\n          // Tell App Inventor that extensions are loaded\n          window.opener.postMessage({\'status\' : \'EXTENSIONS_LOADED\'},\n                                    origin);\n          // console.log(\"Extensions Result = \" + result);\n        }\n      };\n      async function sendblocks(block) {\n        let resp = await fetch(\'/_newblocks\', {\n          method : \'POST\',\n          mode: \'cors\',\n          body: block });\n        let data = await resp.json();\n        // console.log(data);\n        return data;\n      }\n      async function getversion() {\n        let resp = await\n        fetch(\'/_getversion\');\n        let data = await resp.json();\n        // console.log(data);\n        return data;\n      }\n      async function init() {\n        // First let replmgr.js that we are loaded and running\n        window.opener.postMessage({ \"status\" : \"hello\" }, origin);\n        while (true) {\n          // console.log(\'getting values\');\n          let resp = await fetch(\'/_values\', {\n            method: \'POST\',\n            mode: \'cors\',\n            body: \"IGNORED=STUFF\" });\n          let data = await resp.json();\n          window.opener.postMessage(data, origin);\n        }\n      }\n      function dowork() {\n        let work = QUEUE.shift();\n        if (!work) {\n          // console.log(\"QUEUE_RUNNING = false\");\n          QUEUE_RUNNING = false;\n        } else {\n          origin = work.origin;\n          let how = work.data[0];\n          let value = work.data[1];\n          let value2 = work.data[2];\n          // console.log(\"About to: how = \" + how + \" value = \" + value);\n          sendtophone(how, value, value2).then(function() {\n            setTimeout(() => {\n              dowork();\n            });\n          });\n        }\n      };\n      window.addEventListener(\"message\", (event) => {\n        QUEUE.push(event);\n        if (!QUEUE_RUNNING) {\n          QUEUE_RUNNING = true;\n          // console.log(\"QUEUE_RUNNING = true\");\n          setTimeout(() => {\n            dowork();\n          });\n        }\n      });\n      window.onload = init;\n    </script>\n  </head>\n  <body>\n    <h1>This is a special window used by MIT App Inventor</h1>\n    <p>\n      You can safely ignore this window, it should close when you\n      disconnect the MIT AI2 Companion, or exit MIT App Inventor.\n    </p>\n  </body>\n</html>\n"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->PROXY_TEXT:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 67
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 68
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 69
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 70
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object v0
.end method

.method private addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 4
    .param p1, "res"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    .prologue
    .line 405
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "origin, content-type"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "Allow"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-object p1
.end method

.method private adoptMainThreadClassLoader()V
    .registers 4

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 375
    .local v0, "mainClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 376
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_19

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 379
    :cond_19
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 10
    .param p1, "infile"    # Ljava/io/File;
    .param p2, "outfile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 325
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 326
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 327
    .local v4, "out":Ljava/io/FileOutputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 330
    .local v0, "buffer":[B
    :goto_10
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "len":I
    if-lez v3, :cond_21

    .line 331
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 337
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1b
    move-exception v1

    .line 338
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v5, 0x1

    .end local v1    # "e":Ljava/io/IOException;
    :goto_20
    return v5

    .line 334
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 335
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_1b

    goto :goto_20
.end method

.method private error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 392
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "status"

    const-string v3, "BAD"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11} :catch_23

    .line 397
    :goto_11
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v3, "200 OK"

    const-string v4, "application/json"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    return-object v2

    .line 394
    :catch_23
    move-exception v0

    .line 395
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "AppInvHTTPD"

    const-string v3, "Unable to write basic JSON content"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method private error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private json(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 5
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 5
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "text/plain"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 9
    .param p1, "parms"    # Ljava/util/Properties;

    .prologue
    .line 345
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v5, "extensions"

    const-string v6, "[]"

    invoke-virtual {p1, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3d

    .line 348
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "extensionName":Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 350
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 352
    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid JSON content at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3b} :catch_4f

    move-result-object v5

    .line 362
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "extensionName":Ljava/lang/String;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :goto_3c
    return-object v5

    .line 356
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_49
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_42} :catch_4f

    .line 360
    :try_start_42
    const-string v5, "OK"

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    goto :goto_3c

    .line 357
    :catch_49
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_4d} :catch_4f

    move-result-object v5

    goto :goto_3c

    .line 361
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :catch_4f
    move-exception v1

    .line 362
    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    goto :goto_3c
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .registers 2
    .param p0, "inputKey"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 418
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 419
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 423
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .registers 50
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .prologue
    .line 83
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " \'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\' "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v36, v0

    if-eqz v36, :cond_cd

    .line 91
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v24

    .line 92
    .local v24, "myAddress":Ljava/net/InetAddress;
    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "hostAddress":Ljava/lang/String;
    const-string v36, "127.0.0.1"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_cd

    .line 94
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Debug: hostAddress = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " while in secure mode, closing connection."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\"}"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v30, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v17    # "hostAddress":Ljava/lang/String;
    .end local v24    # "myAddress":Ljava/net/InetAddress;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_cc
    :goto_cc
    return-object v30

    .line 107
    :cond_cd
    const-string v36, "OPTIONS"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_169

    .line 111
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v9

    .line 112
    .local v9, "e":Ljava/util/Enumeration;
    :goto_dd
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v36

    if-eqz v36, :cond_11e

    .line 114
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 115
    .local v34, "value":Ljava/lang/String;
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "  HDR: \'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\' = \'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 116
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "\'"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 115
    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 118
    .end local v34    # "value":Ljava/lang/String;
    :cond_11e
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "text/plain"

    const-string v38, "OK"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 127
    .end local v9    # "e":Ljava/util/Enumeration;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_169
    const-string v36, "/_newblocks"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4d9

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->adoptMainThreadClassLoader()V

    .line 129
    const-string v36, "seq"

    const-string v37, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 130
    .local v19, "inSeq":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 131
    .local v22, "iseq":I
    const-string v36, "blockid"

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "blockid":Ljava/lang/String;
    const-string v36, "code"

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "code":Ljava/lang/String;
    const-string v36, "mac"

    const-string v37, "no key provided"

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, "inMac":Ljava/lang/String;
    const-string v8, ""

    .line 135
    .local v8, "compMac":Ljava/lang/String;
    move-object/from16 v20, v7

    .line 136
    .local v20, "input_code":Ljava/lang/String;
    sget-object v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v36, :cond_459

    .line 138
    :try_start_1b4
    const-string v36, "HmacSHA1"

    invoke-static/range {v36 .. v36}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v16

    .line 139
    .local v16, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v23, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    const-string v37, "RAW"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 140
    .local v23, "key":Ljavax/crypto/spec/SecretKeySpec;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 141
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->getBytes()[B

    move-result-object v36

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v33

    .line 142
    .local v33, "tmpMac":[B
    new-instance v31, Ljava/lang/StringBuffer;

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    mul-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 143
    .local v31, "sb":Ljava/lang/StringBuffer;
    new-instance v15, Ljava/util/Formatter;

    move-object/from16 v0, v31

    invoke-direct {v15, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 144
    .local v15, "formatter":Ljava/util/Formatter;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    const/16 v36, 0x0

    :goto_217
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_23b

    aget-byte v5, v33, v36

    .line 145
    .local v5, "b":B
    const-string v38, "%02x"

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 144
    add-int/lit8 v36, v36, 0x1

    goto :goto_217

    .line 146
    .end local v5    # "b":B
    :cond_23b
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_23e} :catch_30c

    move-result-object v8

    .line 154
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Incoming Mac = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Computed Mac = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Incoming seq = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Computed seq = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget v38, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "blockid = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_350

    .line 160
    const-string v36, "AppInvHTTPD"

    const-string v37, "Hmac does not match"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v37, v0

    const-string v38, "AppInvHTTPD"

    const/16 v39, 0x709

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "Invalid HMAC"

    aput-object v42, v40, v41

    invoke-virtual/range {v36 .. v40}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 163
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const-string v38, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_cc

    .line 147
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v31    # "sb":Ljava/lang/StringBuffer;
    .end local v33    # "tmpMac":[B
    :catch_30c
    move-exception v9

    .line 148
    .local v9, "e":Ljava/lang/Exception;
    const-string v36, "AppInvHTTPD"

    const-string v37, "Error working with hmac"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v37, v0

    const-string v38, "AppInvHTTPD"

    const/16 v39, 0x709

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "Exception working on HMAC"

    aput-object v42, v40, v41

    invoke-virtual/range {v36 .. v40}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 151
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "text/plain"

    const-string v38, "NOT"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_cc

    .line 166
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v15    # "formatter":Ljava/util/Formatter;
    .restart local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v31    # "sb":Ljava/lang/StringBuffer;
    .restart local v33    # "tmpMac":[B
    :cond_350
    sget v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    move/from16 v0, v36

    move/from16 v1, v22

    if-eq v0, v1, :cond_3a1

    sget v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v37, v22, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3a1

    .line 167
    const-string v36, "AppInvHTTPD"

    const-string v37, "Seq does not match"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v37, v0

    const-string v38, "AppInvHTTPD"

    const/16 v39, 0x709

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "Invalid Seq"

    aput-object v42, v40, v41

    invoke-virtual/range {v36 .. v40}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 170
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const-string v38, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_cc

    .line 175
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_3a1
    sget v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v37, v22, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_3b2

    .line 176
    const-string v36, "AppInvHTTPD"

    const-string v37, "Seq Fixup Invoked"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3b2
    add-int/lit8 v36, v22, 0x1

    sput v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 186
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " (begin "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " )))"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "To Eval: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_3f7
    const-string v36, "#f"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_498

    .line 195
    const-string v36, "AppInvHTTPD"

    const-string v37, "Skipping evaluation of #f"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_40a
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_423
    .catch Ljava/lang/Throwable; {:try_start_3f7 .. :try_end_423} :catch_4a5

    .line 205
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_423
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 179
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v31    # "sb":Ljava/lang/StringBuffer;
    .end local v33    # "tmpMac":[B
    :cond_459
    const-string v36, "AppInvHTTPD"

    const-string v37, "No HMAC Key"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v37, v0

    const-string v38, "AppInvHTTPD"

    const/16 v39, 0x709

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "No HMAC Key"

    aput-object v42, v40, v41

    invoke-virtual/range {v36 .. v40}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 182
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const-string v38, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_cc

    .line 197
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v15    # "formatter":Ljava/util/Formatter;
    .restart local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v31    # "sb":Ljava/lang/StringBuffer;
    .restart local v33    # "tmpMac":[B
    :cond_498
    :try_start_498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4a3
    .catch Ljava/lang/Throwable; {:try_start_498 .. :try_end_4a3} :catch_4a5

    goto/16 :goto_40a

    .line 200
    :catch_4a5
    move-exception v11

    .line 201
    .local v11, "ex":Ljava/lang/Throwable;
    const-string v36, "AppInvHTTPD"

    const-string v37, "newblocks: Scheme Failure"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const-string v36, "BAD"

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v6, v0, v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_423

    .line 210
    .end local v6    # "blockid":Ljava/lang/String;
    .end local v7    # "code":Ljava/lang/String;
    .end local v8    # "compMac":Ljava/lang/String;
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v16    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v18    # "inMac":Ljava/lang/String;
    .end local v19    # "inSeq":Ljava/lang/String;
    .end local v20    # "input_code":Ljava/lang/String;
    .end local v22    # "iseq":I
    .end local v23    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v31    # "sb":Ljava/lang/StringBuffer;
    .end local v33    # "tmpMac":[B
    :cond_4d9
    const-string v36, "/_values"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_534

    .line 211
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const/16 v38, 0x1

    invoke-static/range {v38 .. v38}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 217
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_534
    const-string v36, "/_getversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_64c

    .line 220
    :try_start_540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 221
    .local v27, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v26

    .line 223
    .local v26, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v36

    const/16 v37, 0x5

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_62e

    .line 224
    const-string v36, "edu.mit.appinventor.aicompanion3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v21

    .line 231
    .local v21, "installer":Ljava/lang/String;
    :goto_578
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 232
    .local v35, "versionName":Ljava/lang/String;
    if-nez v21, :cond_582

    .line 233
    const-string v21, "Not Known"

    .line 237
    :cond_582
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "{\"version\" : \""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\", \"fingerprint\" : \""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\", \"installer\" : \""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\", \"package\" : \""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\", \"fqcn\" : true }"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5da
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_540 .. :try_end_5da} :catch_632

    .line 245
    .end local v21    # "installer":Ljava/lang/String;
    .end local v26    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v27    # "packageName":Ljava/lang/String;
    .end local v35    # "versionName":Ljava/lang/String;
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_5da
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    move/from16 v36, v0

    if-eqz v36, :cond_cc

    .line 250
    const/16 v36, 0x1

    sput v36, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    new-instance v37, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_cc

    .line 226
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v26    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v27    # "packageName":Ljava/lang/String;
    :cond_62e
    :try_start_62e
    const-string v21, "Not Known"
    :try_end_630
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62e .. :try_end_630} :catch_632

    .restart local v21    # "installer":Ljava/lang/String;
    goto/16 :goto_578

    .line 241
    .end local v21    # "installer":Ljava/lang/String;
    .end local v26    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v27    # "packageName":Ljava/lang/String;
    :catch_632
    move-exception v25

    .line 242
    .local v25, "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 243
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "application/json"

    const-string v38, "{\"verison\" : \"Unknown\""

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_5da

    .line 258
    .end local v25    # "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_64c
    const-string v36, "/_extensions"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_662

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v30

    goto/16 :goto_cc

    .line 260
    :cond_662
    const-string v36, "/_proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6bb

    .line 261
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getPopup()Ljava/lang/String;

    move-result-object v29

    .line 262
    .local v29, "popup":Ljava/lang/String;
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "text/html"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 270
    .end local v29    # "popup":Ljava/lang/String;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_6bb
    const-string v36, "PUT"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_830

    .line 271
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 272
    .local v10, "error":Ljava/lang/Boolean;
    const-string v36, "content"

    const/16 v37, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 273
    .local v32, "tmpFileName":Ljava/lang/String;
    if-eqz v32, :cond_7d7

    .line 274
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v12, "fileFrom":Ljava/io/File;
    const-string v36, "filename"

    const/16 v37, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 276
    .local v14, "filename":Ljava/lang/String;
    if-eqz v14, :cond_72d

    .line 277
    const-string v36, ".."

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_712

    const-string v36, ".."

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_712

    const-string v36, "../"

    .line 278
    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    if-ltz v36, :cond_72d

    .line 279
    :cond_712
    const-string v36, "AppInvHTTPD"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, " Ignoring invalid filename: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v14, 0x0

    .line 283
    :cond_72d
    if-eqz v14, :cond_7c6

    .line 285
    new-instance v13, Ljava/io/File;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "/"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v13, "fileTo":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v28

    .line 287
    .local v28, "parentFileTo":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v36

    if-nez v36, :cond_762

    .line 288
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_762
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v36

    if-nez v36, :cond_775

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 292
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 303
    .end local v12    # "fileFrom":Ljava/io/File;
    .end local v13    # "fileTo":Ljava/io/File;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v28    # "parentFileTo":Ljava/io/File;
    :cond_775
    :goto_775
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_7e5

    .line 304
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "500 Internal Server Error"

    const-string v37, "text/plain"

    const-string v38, "NOTOK"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 295
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v12    # "fileFrom":Ljava/io/File;
    .restart local v14    # "filename":Ljava/lang/String;
    :cond_7c6
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 296
    const-string v36, "AppInvHTTPD"

    const-string v37, "Received content without a file name!"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_775

    .line 300
    .end local v12    # "fileFrom":Ljava/io/File;
    .end local v14    # "filename":Ljava/lang/String;
    :cond_7d7
    const-string v36, "AppInvHTTPD"

    const-string v37, "Received PUT without content."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_775

    .line 311
    :cond_7e5
    new-instance v30, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v36, "200 OK"

    const-string v37, "text/plain"

    const-string v38, "OK"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .restart local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    const-string v36, "Access-Control-Allow-Origin"

    const-string v37, "*"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v36, "Access-Control-Allow-Headers"

    const-string v37, "origin, content-type"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v36, "Access-Control-Allow-Methods"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v36, "Allow"

    const-string v37, "POST,OPTIONS,GET,HEAD,PUT"

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cc

    .line 320
    .end local v10    # "error":Ljava/lang/Boolean;
    .end local v30    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v32    # "tmpFileName":Ljava/lang/String;
    :cond_830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v30

    goto/16 :goto_cc
.end method

.class Lcom/google/appinventor/components/runtime/Spreadsheet$2;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadRow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rangeReference:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->val$rangeReference:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 485
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$000(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_10c

    .line 487
    const-string v2, ""
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_9e

    .line 489
    .local v2, "cleanRangeReference":Ljava/lang/String;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->val$rangeReference:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "UTF-8"

    invoke-static/range {v16 .. v17}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_19} :catch_91
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_9e

    move-result-object v2

    .line 496
    :try_start_1a
    const-string v16, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v19, v0

    .line 498
    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v2, v17, v18

    .line 496
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "getUrl":Ljava/lang/String;
    const-string v16, "SPREADSHEET"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ReadRow url: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 503
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 504
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const-string v16, "GET"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    const/16 v17, 0x190

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c3

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ReadRow: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 563
    .end local v2    # "cleanRangeReference":Ljava/lang/String;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "getUrl":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :goto_90
    return-void

    .line 490
    .restart local v2    # "cleanRangeReference":Ljava/lang/String;
    :catch_91
    move-exception v4

    .line 491
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    const-string v17, "ReadRow: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9d} :catch_9e

    goto :goto_90

    .line 559
    .end local v2    # "cleanRangeReference":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_9e
    move-exception v4

    .line 560
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ReadRow: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_90

    .line 512
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cleanRangeReference":Ljava/lang/String;
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "getUrl":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_c3
    :try_start_c3
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$200(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    .line 513
    .local v10, "responseContent":Ljava/lang/String;
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    .line 515
    .local v8, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/lists/LList;

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_100

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 516
    .local v5, "elem":Ljava/lang/Object;
    instance-of v0, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    move/from16 v17, v0

    if-eqz v17, :cond_d5

    .line 518
    move-object v0, v5

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v12, v0

    .line 520
    .local v12, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v16

    new-instance v17, Lcom/google/appinventor/components/runtime/Spreadsheet$2$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/google/appinventor/components/runtime/Spreadsheet$2$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$2;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_90

    .line 528
    .end local v5    # "elem":Ljava/lang/Object;
    .end local v12    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    const-string v17, "ReadRow: Could not find a row from the HTTP Request."

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_90

    .line 533
    .end local v2    # "cleanRangeReference":Ljava/lang/String;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "getUrl":Ljava/lang/String;
    .end local v8    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "responseContent":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$400(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v13

    .line 534
    .local v13, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v13}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    .line 535
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->val$rangeReference:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 537
    .local v9, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v9}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v15

    .line 539
    .local v15, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v15, :cond_144

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_151

    .line 540
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    const-string v17, "ReadRow: No data found"

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto/16 :goto_90

    .line 544
    :cond_151
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_162
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_188

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 546
    .local v7, "obj":Ljava/lang/Object;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    if-nez v7, :cond_17c

    const-string v7, ""

    .end local v7    # "obj":Ljava/lang/Object;
    :cond_17c
    aput-object v7, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_162

    .line 550
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v16

    new-instance v17, Lcom/google/appinventor/components/runtime/Spreadsheet$2$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/google/appinventor/components/runtime/Spreadsheet$2$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$2;Ljava/util/List;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_19e} :catch_9e

    goto/16 :goto_90
.end method

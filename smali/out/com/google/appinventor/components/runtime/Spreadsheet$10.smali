.class Lcom/google/appinventor/components/runtime/Spreadsheet$10;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadCell(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$cellReference:Ljava/lang/String;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$cellReference:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 1202
    const-string v16, "SPREADSHEET"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Reading Cell: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$cellReference:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$000(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_14f

    .line 1208
    const-string v3, ""
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_bc

    .line 1210
    .local v3, "cleanRangeReference":Ljava/lang/String;
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$cellReference:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "UTF-8"

    invoke-static/range {v16 .. v17}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_37} :catch_af
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_bc

    move-result-object v3

    .line 1217
    :try_start_38
    const-string v16, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v19, v0

    .line 1219
    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v3, v17, v18

    .line 1217
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1220
    .local v7, "getUrl":Ljava/lang/String;
    const-string v16, "SPREADSHEET"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ReadCell url: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 1225
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string v16, "GET"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    const/16 v17, 0x190

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e1

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ReadCell: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1287
    .end local v3    # "cleanRangeReference":Ljava/lang/String;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "getUrl":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :goto_ae
    return-void

    .line 1211
    .restart local v3    # "cleanRangeReference":Ljava/lang/String;
    :catch_af
    move-exception v5

    .line 1212
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    const-string v17, "ReadCell: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_bb} :catch_bc

    goto :goto_ae

    .line 1283
    .end local v3    # "cleanRangeReference":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_bc
    move-exception v5

    .line 1284
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ReadCell: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_ae

    .line 1233
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cleanRangeReference":Ljava/lang/String;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "getUrl":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_e1
    :try_start_e1
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$200(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    .line 1234
    .local v10, "responseContent":Ljava/lang/String;
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    .line 1236
    .local v8, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/lists/LList;

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_f3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_142

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1237
    .local v6, "elem":Ljava/lang/Object;
    instance-of v0, v6, Lcom/google/appinventor/components/runtime/util/YailList;

    move/from16 v17, v0

    if-eqz v17, :cond_f3

    .line 1239
    move-object v0, v6

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v12, v0

    .line 1240
    .local v12, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    const-string v17, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_139

    const-string v16, ""

    :goto_11b
    aput-object v16, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "cellData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v16

    new-instance v17, Lcom/google/appinventor/components/runtime/Spreadsheet$10$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet$10$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$10;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_ae

    .line 1240
    .end local v2    # "cellData":Ljava/lang/String;
    :cond_139
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v16

    goto :goto_11b

    .line 1251
    .end local v6    # "elem":Ljava/lang/Object;
    .end local v12    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    const-string v17, "ReadCell: Error reading cell data from HTTP Request"

    invoke-virtual/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto/16 :goto_ae

    .line 1256
    .end local v3    # "cleanRangeReference":Ljava/lang/String;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "getUrl":Ljava/lang/String;
    .end local v8    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "responseContent":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$400(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v13

    .line 1257
    .local v13, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v13}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    .line 1258
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$sheetName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$cellReference:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1259
    .local v9, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v9}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v15

    .line 1262
    .local v15, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v15, :cond_1a4

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1bc

    .line 1263
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v16

    new-instance v17, Lcom/google/appinventor/components/runtime/Spreadsheet$10$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet$10$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$10;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_ae

    .line 1273
    :cond_1bc
    const-string v17, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 1274
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1f6

    const-string v16, ""

    :goto_1d8
    aput-object v16, v18, v19

    .line 1273
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1275
    .local v11, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v16

    new-instance v17, Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/google/appinventor/components/runtime/Spreadsheet$10$3;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$10;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_ae

    .line 1274
    .end local v11    # "result":Ljava/lang/String;
    :cond_1f6
    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_207} :catch_bc

    move-result-object v16

    goto :goto_1d8
.end method

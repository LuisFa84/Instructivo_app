.class Lcom/google/appinventor/components/runtime/Spreadsheet$6;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadCol(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rangeRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->val$rangeRef:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 836
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$000(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_12f

    .line 838
    const-string v2, ""
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_9e

    .line 840
    .local v2, "cleanRangeReference":Ljava/lang/String;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->val$rangeRef:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_19} :catch_91
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_9e

    move-result-object v2

    .line 847
    :try_start_1a
    const-string v17, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v20, v0

    .line 849
    invoke-static/range {v20 .. v20}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v2, v18, v19

    .line 847
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 850
    .local v7, "getUrl":Ljava/lang/String;
    const-string v17, "SPREADSHEET"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ReadCol url: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 854
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 855
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0x190

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c3

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ReadCol: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 914
    .end local v2    # "cleanRangeReference":Ljava/lang/String;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "getUrl":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    :goto_90
    return-void

    .line 841
    .restart local v2    # "cleanRangeReference":Ljava/lang/String;
    :catch_91
    move-exception v5

    .line 842
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    const-string v18, "ReadCol: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9d} :catch_9e

    goto :goto_90

    .line 910
    .end local v2    # "cleanRangeReference":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_9e
    move-exception v5

    .line 911
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ReadCol: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_90

    .line 863
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cleanRangeReference":Ljava/lang/String;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "getUrl":Ljava/lang/String;
    .restart local v15    # "url":Ljava/net/URL;
    :cond_c3
    :try_start_c3
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$200(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v10

    .line 864
    .local v10, "responseContent":Ljava/lang/String;
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    .line 865
    .local v8, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v3, "col":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/lists/LList;

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_da
    :goto_da
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_117

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 867
    .local v6, "elem":Ljava/lang/Object;
    instance-of v0, v6, Lcom/google/appinventor/components/runtime/util/YailList;

    move/from16 v17, v0

    if-eqz v17, :cond_da

    .line 869
    move-object v0, v6

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v12, v0

    .line 871
    .local v12, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    const-string v19, "%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_10e

    const-string v17, ""

    :goto_102
    aput-object v17, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_da

    :cond_10e
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v17

    goto :goto_102

    .line 874
    .end local v6    # "elem":Ljava/lang/Object;
    .end local v12    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$6;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_90

    .line 884
    .end local v2    # "cleanRangeReference":Ljava/lang/String;
    .end local v3    # "col":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "getUrl":Ljava/lang/String;
    .end local v8    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "responseContent":Ljava/lang/String;
    .end local v15    # "url":Ljava/net/URL;
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$400(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v14

    .line 886
    .local v14, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v14}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v18, v0

    .line 887
    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->val$rangeRef:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 888
    .local v9, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v9}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v16

    .line 891
    .local v16, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v16, :cond_167

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_174

    .line 892
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    const-string v18, "ReadCol: No data found."

    invoke-virtual/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto/16 :goto_90

    .line 897
    :cond_174
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_17d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1b8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 899
    .local v13, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v19, "%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1af

    const-string v17, ""

    :goto_19d
    aput-object v17, v20, v21

    const/16 v17, 0x1

    const-string v21, ""

    aput-object v21, v20, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17d

    :cond_1af
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    goto :goto_19d

    .line 903
    .end local v13    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v17

    new-instance v18, Lcom/google/appinventor/components/runtime/Spreadsheet$6$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/google/appinventor/components/runtime/Spreadsheet$6$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$6;Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_1ce} :catch_9e

    goto/16 :goto_90
.end method

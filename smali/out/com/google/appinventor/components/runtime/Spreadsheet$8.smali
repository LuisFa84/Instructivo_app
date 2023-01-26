.class Lcom/google/appinventor/components/runtime/Spreadsheet$8;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->AddCol(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$sheetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 1041
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v15}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$400(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v13

    .line 1043
    .local v13, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v13}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    .line 1044
    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$sheetName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1046
    .local v11, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v11}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v14

    .line 1048
    .local v14, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v14, :cond_36

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3f

    .line 1049
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v16, "AddCol: No data found"

    invoke-virtual/range {v15 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1052
    :cond_3f
    const/4 v8, 0x0

    .line 1053
    .local v8, "max_col":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_44
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1054
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1055
    goto :goto_44

    .line 1056
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5b
    add-int/lit8 v9, v8, 0x1

    .line 1057
    .local v9, "nextCol":I
    move v2, v9

    .line 1059
    .local v2, "addedColumn":I
    const/16 v15, 0x1a

    new-array v3, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "A"

    aput-object v16, v3, v15

    const/4 v15, 0x1

    const-string v16, "B"

    aput-object v16, v3, v15

    const/4 v15, 0x2

    const-string v16, "C"

    aput-object v16, v3, v15

    const/4 v15, 0x3

    const-string v16, "D"

    aput-object v16, v3, v15

    const/4 v15, 0x4

    const-string v16, "E"

    aput-object v16, v3, v15

    const/4 v15, 0x5

    const-string v16, "F"

    aput-object v16, v3, v15

    const/4 v15, 0x6

    const-string v16, "G"

    aput-object v16, v3, v15

    const/4 v15, 0x7

    const-string v16, "H"

    aput-object v16, v3, v15

    const/16 v15, 0x8

    const-string v16, "I"

    aput-object v16, v3, v15

    const/16 v15, 0x9

    const-string v16, "J"

    aput-object v16, v3, v15

    const/16 v15, 0xa

    const-string v16, "K"

    aput-object v16, v3, v15

    const/16 v15, 0xb

    const-string v16, "L"

    aput-object v16, v3, v15

    const/16 v15, 0xc

    const-string v16, "M"

    aput-object v16, v3, v15

    const/16 v15, 0xd

    const-string v16, "N"

    aput-object v16, v3, v15

    const/16 v15, 0xe

    const-string v16, "O"

    aput-object v16, v3, v15

    const/16 v15, 0xf

    const-string v16, "P"

    aput-object v16, v3, v15

    const/16 v15, 0x10

    const-string v16, "Q"

    aput-object v16, v3, v15

    const/16 v15, 0x11

    const-string v16, "R"

    aput-object v16, v3, v15

    const/16 v15, 0x12

    const-string v16, "S"

    aput-object v16, v3, v15

    const/16 v15, 0x13

    const-string v16, "T"

    aput-object v16, v3, v15

    const/16 v15, 0x14

    const-string v16, "U"

    aput-object v16, v3, v15

    const/16 v15, 0x15

    const-string v16, "V"

    aput-object v16, v3, v15

    const/16 v15, 0x16

    const-string v16, "W"

    aput-object v16, v3, v15

    const/16 v15, 0x17

    const-string v16, "X"

    aput-object v16, v3, v15

    const/16 v15, 0x18

    const-string v16, "Y"

    aput-object v16, v3, v15

    const/16 v15, 0x19

    const-string v16, "Z"

    aput-object v16, v3, v15

    .line 1062
    .local v3, "alphabet":[Ljava/lang/String;
    const-string v4, ""

    .line 1063
    .local v4, "colReference":Ljava/lang/String;
    :goto_f8
    if-lez v9, :cond_120

    .line 1064
    add-int/lit8 v15, v9, -0x1

    rem-int/lit8 v15, v15, 0x1a

    aget-object v5, v3, v15

    .line 1065
    .local v5, "digit":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1066
    add-int/lit8 v15, v9, -0x1

    div-int/lit8 v15, v15, 0x1a

    int-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v9, v0

    .line 1067
    goto :goto_f8

    .line 1068
    .end local v5    # "digit":Ljava/lang/String;
    :cond_120
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$sheetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1070
    .local v10, "rangeRef":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    move-object/from16 v16, v0

    .line 1071
    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v10, v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v15

    const-string v16, "USER_ENTERED"

    .line 1072
    invoke-virtual/range {v15 .. v16}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->setValueInputOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v15

    .line 1073
    invoke-virtual {v15}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->execute()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;

    .line 1075
    .local v12, "response":Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v15}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v15

    new-instance v16, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$8;I)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_183} :catch_184
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_183} :catch_1a7

    .line 1090
    .end local v2    # "addedColumn":I
    .end local v3    # "alphabet":[Ljava/lang/String;
    .end local v4    # "colReference":Ljava/lang/String;
    .end local v8    # "max_col":I
    .end local v9    # "nextCol":I
    .end local v10    # "rangeRef":Ljava/lang/String;
    .end local v11    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v12    # "response":Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;
    .end local v13    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v14    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :goto_183
    return-void

    .line 1082
    :catch_184
    move-exception v6

    .line 1083
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1084
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AddCol IOException: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_183

    .line 1086
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1a7
    move-exception v6

    .line 1087
    .local v6, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AddCol GeneralSecurityException: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_183
.end method

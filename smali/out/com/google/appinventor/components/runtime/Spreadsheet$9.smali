.class Lcom/google/appinventor/components/runtime/Spreadsheet$9;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->RemoveCol(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$colNumber:I

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$sheetName:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$colNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1123
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$400(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v5

    .line 1124
    .local v5, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$sheetName:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$600(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v3

    .line 1125
    .local v3, "gridId":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_19

    .line 1126
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v7, "RemoveCol: sheetName not found"

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1156
    .end local v3    # "gridId":I
    .end local v5    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :goto_18
    return-void

    .line 1130
    .restart local v3    # "gridId":I
    .restart local v5    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :cond_19
    new-instance v6, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    invoke-direct {v6}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;-><init>()V

    new-instance v7, Lcom/google/api/services/sheets/v4/model/DimensionRange;

    invoke-direct {v7}, Lcom/google/api/services/sheets/v4/model/DimensionRange;-><init>()V

    .line 1133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setSheetId(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v7

    const-string v8, "COLUMNS"

    .line 1134
    invoke-virtual {v7, v8}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setDimension(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$colNumber:I

    add-int/lit8 v8, v8, -0x1

    .line 1135
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setStartIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$colNumber:I

    .line 1136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setEndIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v7

    .line 1131
    invoke-virtual {v6, v7}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;->setRange(Lcom/google/api/services/sheets/v4/model/DimensionRange;)Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    move-result-object v1

    .line 1138
    .local v1, "deleteRequest":Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    .local v4, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    new-instance v6, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v6}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v6, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setDeleteDimension(Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    new-instance v6, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v6}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 1142
    invoke-virtual {v6, v4}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v0

    .line 1143
    .local v0, "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$100(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    .line 1145
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$300(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/google/appinventor/components/runtime/Spreadsheet$9$1;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$9$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$9;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_18

    .line 1152
    .end local v0    # "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    .end local v1    # "deleteRequest":Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;
    .end local v3    # "gridId":I
    .end local v4    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    .end local v5    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :catch_85
    move-exception v2

    .line 1153
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1154
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoveCol: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto/16 :goto_18
.end method

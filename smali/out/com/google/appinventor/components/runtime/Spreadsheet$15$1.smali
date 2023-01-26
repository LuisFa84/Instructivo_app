.class Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

.field final synthetic val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$15;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1695
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$fireEvent:Z

    if-eqz v5, :cond_84

    .line 1696
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    if-ltz v5, :cond_be

    .line 1698
    :try_start_d
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 1699
    .local v2, "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 1700
    .local v1, "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 1701
    .local v3, "rowNum":I
    :cond_18
    :goto_18
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7d

    .line 1702
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    .line 1703
    .local v4, "sheet_row":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    if-lt v5, v6, :cond_18

    .line 1704
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$exact:Z

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    :cond_52
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$exact:Z

    if-nez v5, :cond_7a

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    .line 1705
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1706
    :cond_70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1712
    .end local v4    # "sheet_row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_7d
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v5, v2, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_84} :catch_95

    .line 1722
    .end local v1    # "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "rowNum":I
    :cond_84
    :goto_84
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$700(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1724
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v5, v8, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    .line 1725
    return-void

    .line 1713
    :catch_95
    move-exception v0

    .line 1714
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SPREADSHEET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadWithFilter (no creds) Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_84

    .line 1718
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_be
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotSheetData(Ljava/util/List;)V

    goto :goto_84
.end method

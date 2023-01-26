.class Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;
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

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$15;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->val$ret:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1765
    const-string v5, "SPREADSHEET"

    const-string v6, "RetriveSheet UIThread "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    if-ltz v5, :cond_158

    .line 1767
    const-string v5, "SPREADSHEET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RetriveWithFilter: colID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v7, v7, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :try_start_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v2, "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1772
    .local v1, "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 1773
    .local v3, "rowNum":I
    :goto_35
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->val$ret:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_107

    .line 1774
    const-string v5, "SPREADSHEET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading row row: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->val$ret:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1776
    .local v4, "sheet_row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "SPREADSHEET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read with Filter row: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    if-lt v5, v6, :cond_103

    .line 1779
    const-string v6, "SPREADSHEET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking field : |"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$exact:Z

    if-eqz v5, :cond_c5

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e1

    :cond_c5
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$exact:Z

    if-nez v5, :cond_103

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    .line 1781
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 1783
    :cond_e1
    const-string v5, "SPREADSHEET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read with Filter check col: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1785
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1788
    :cond_103
    add-int/lit8 v3, v3, 0x1

    .line 1789
    goto/16 :goto_35

    .line 1790
    .end local v4    # "sheet_row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_107
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v5, v2, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_10e} :catch_123

    .line 1801
    .end local v1    # "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "rowNum":I
    :goto_10e
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->val$ret:Ljava/util/List;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->access$700(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1802
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v5, v8, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    .line 1803
    :goto_122
    return-void

    .line 1791
    :catch_123
    move-exception v0

    .line 1793
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SPREADSHEET"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read with Filter Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_122

    .line 1798
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_158
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;->val$ret:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotSheetData(Ljava/util/List;)V

    goto :goto_10e
.end method

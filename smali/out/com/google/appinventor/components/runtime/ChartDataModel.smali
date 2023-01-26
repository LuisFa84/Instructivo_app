.class public abstract Lcom/google/appinventor/components/runtime/ChartDataModel;
.super Ljava/lang/Object;
.source "ChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet",
        "<TE;>;D:",
        "Lcom/github/mikephil/charting/data/ChartData",
        "<TT;>;C:",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TD;>;V:",
        "Lcom/google/appinventor/components/runtime/ChartView",
        "<TE;TT;TD;TC;TV;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected data:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected maximumTimeEntries:I

.field protected view:Lcom/google/appinventor/components/runtime/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/ChartView;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 77
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public abstract addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 530
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_10

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 537
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 538
    return-void
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .registers 4
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 587
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    return v0
.end method

.method public clearEntries()V
    .registers 2

    .prologue
    .line 516
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 517
    return-void
.end method

.method public doesEntryExist(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .registers 5
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 362
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 365
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 368
    .local v1, "index":I
    if-ltz v1, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "criterion"    # Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;

    .prologue
    .line 381
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 386
    .local v1, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 388
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 392
    .end local v1    # "entry":Lcom/github/mikephil/charting/data/Entry;
    :cond_25
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method protected findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .registers 5
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 497
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 498
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    .line 503
    .local v0, "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 509
    .end local v0    # "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    .end local v1    # "i":I
    :goto_17
    return v1

    .line 497
    .restart local v0    # "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    .restart local v1    # "i":I
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    :cond_1b
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    return-object v0
.end method

.method protected getDefaultValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 570
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 3

    .prologue
    .line 402
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const-string v0, "0"

    sget-object v1, Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
.end method

.method public abstract getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method protected abstract getTupleSize()I
.end method

.method public getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 12
    .param p1, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "hasHeaders"    # Z

    .prologue
    .line 261
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->determineMaximumListSize(Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v3

    .line 263
    .local v3, "rows":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v6, "tuples":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    if-eqz p2, :cond_2e

    const/4 v1, 0x1

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_61

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v5, "tupleElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_14
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ge v2, v8, :cond_57

    .line 272
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 276
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v8, :cond_30

    .line 277
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 266
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v5    # "tupleElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2e
    const/4 v1, 0x0

    goto :goto_c

    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v5    # "tupleElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_30
    move-object v0, v7

    .line 282
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 284
    .local v0, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-le v8, v1, :cond_41

    .line 286
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 287
    :cond_41
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-nez v8, :cond_51

    .line 290
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 294
    :cond_51
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 304
    .end local v0    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_57
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    .line 305
    .local v4, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 309
    .end local v2    # "j":I
    .end local v4    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v5    # "tupleElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_61
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    return-object v8
.end method

.method public importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .registers 4
    .param p1, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "hasHeaders"    # Z

    .prologue
    .line 243
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 247
    .local v0, "tuples":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromList(Ljava/util/List;)V

    .line 248
    return-void
.end method

.method public importFromList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "entry":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 185
    .local v1, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1c

    move-object v1, v0

    .line 187
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 195
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_16
    :goto_16
    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_4

    .line 188
    .restart local v0    # "entry":Ljava/lang/Object;
    :cond_1c
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_16

    .line 190
    check-cast v0, Ljava/util/List;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_16

    .line 199
    .end local v1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_27
    return-void
.end method

.method protected isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;Ljava/lang/String;)Z
    .registers 14
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "criterion"    # Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 414
    const/4 v1, 0x0

    .line 416
    .local v1, "criterionSatisfied":Z
    sget-object v7, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->$SwitchMap$com$google$appinventor$components$runtime$ChartDataModel$EntryCriterion:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/ChartDataModel$EntryCriterion;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_68

    .line 463
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown criterion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 418
    :pswitch_27
    const/4 v1, 0x1

    .line 466
    :goto_28
    return v1

    .line 424
    :pswitch_29
    instance-of v7, p1, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz v7, :cond_39

    move-object v2, p1

    .line 427
    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    .line 428
    .local v2, "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 429
    goto :goto_28

    .line 434
    .end local v2    # "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    :cond_39
    :try_start_39
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 435
    .local v3, "xValue":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    .line 440
    .local v0, "compareValue":F
    instance-of v7, p1, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v7, :cond_4b

    .line 441
    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_49} :catch_65

    move-result-wide v8

    double-to-float v0, v8

    .line 444
    :cond_4b
    cmpl-float v7, v0, v3

    if-nez v7, :cond_51

    move v1, v5

    :goto_50
    goto :goto_28

    :cond_51
    move v1, v6

    goto :goto_50

    .line 455
    .end local v0    # "compareValue":F
    .end local v3    # "xValue":F
    :pswitch_53
    :try_start_53
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 456
    .local v4, "yValue":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5a} :catch_63

    move-result v7

    cmpl-float v7, v7, v4

    if-nez v7, :cond_61

    move v1, v5

    :goto_60
    goto :goto_28

    :cond_61
    move v1, v6

    goto :goto_60

    .line 457
    .end local v4    # "yValue":F
    :catch_63
    move-exception v5

    goto :goto_28

    .line 445
    :catch_65
    move-exception v5

    goto :goto_28

    .line 416
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_27
        :pswitch_29
        :pswitch_53
    .end packed-switch
.end method

.method public removeEntry(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 349
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    if-ltz p1, :cond_7

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 352
    :cond_7
    return-void
.end method

.method public removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 327
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 329
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_d

    .line 335
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 337
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntry(I)V

    .line 339
    .end local v1    # "index":I
    :cond_d
    return-void
.end method

.method public removeValues(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "entry":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 213
    .local v1, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1c

    move-object v1, v0

    .line 214
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 222
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_16
    :goto_16
    if-eqz v1, :cond_4

    .line 227
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_4

    .line 215
    .restart local v0    # "entry":Ljava/lang/Object;
    :cond_1c
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_27

    .line 217
    check-cast v0, Ljava/util/List;

    .end local v0    # "entry":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    goto :goto_16

    .line 218
    .restart local v0    # "entry":Ljava/lang/Object;
    :cond_27
    instance-of v3, v0, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_16

    goto :goto_4

    .line 229
    .end local v0    # "entry":Ljava/lang/Object;
    .end local v1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_2c
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "argb"    # I

    .prologue
    .line 113
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v0, :cond_d

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColor(I)V

    .line 116
    :cond_d
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v0, :cond_d

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColors(Ljava/util/List;)V

    .line 131
    :cond_d
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .registers 1

    .prologue
    .line 558
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    return-void
.end method

.method public setElements(Ljava/lang/String;)V
    .registers 9
    .param p1, "elements"    # Ljava/lang/String;

    .prologue
    .line 149
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleSize()I

    move-result v5

    .line 152
    .local v5, "tupleSize":I
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "entries":[Ljava/lang/String;
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_c
    array-length v6, v0

    if-ge v1, v6, :cond_2b

    .line 160
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v3, v5, -0x1

    .local v3, "j":I
    :goto_16
    if-ltz v3, :cond_22

    .line 165
    sub-int v2, v1, v3

    .line 166
    .local v2, "index":I
    aget-object v6, v0, v2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 170
    .end local v2    # "index":I
    :cond_22
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 159
    add-int/2addr v1, v5

    goto :goto_c

    .line 172
    .end local v3    # "j":I
    .end local v4    # "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 139
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setLabel(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setMaximumTimeEntries(I)V
    .registers 2
    .param p1, "entries"    # I

    .prologue
    .line 546
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    .line 547
    return-void
.end method

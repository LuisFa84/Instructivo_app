.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;
.super Landroid/widget/Filter;
.source "ListViewArrayAdapterSingleText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;-><init>(IILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "filterQuery":Ljava/lang/String;
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 44
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2a

    .line 45
    :cond_15
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 46
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 57
    :goto_29
    return-object v2

    .line 48
    :cond_2a
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 49
    .local v1, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 50
    const-string v4, "Text1"

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 51
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 54
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_63
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_29
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$102(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Ljava/util/List;)Ljava/util/List;

    .line 63
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$200(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 64
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 66
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$200(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 69
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

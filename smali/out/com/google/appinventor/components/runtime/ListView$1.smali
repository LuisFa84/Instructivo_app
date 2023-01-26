.class Lcom/google/appinventor/components/runtime/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 176
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_34

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->access$000(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_17

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 161
    :cond_17
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->access$000(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->access$100(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListView;->access$000(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    :goto_33
    return-void

    .line 164
    :cond_34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    goto :goto_33
.end method

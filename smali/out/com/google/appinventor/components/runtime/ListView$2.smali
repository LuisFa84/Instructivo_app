.class Lcom/google/appinventor/components/runtime/ListView$2;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V
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
    .line 367
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILandroid/view/View;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->access$000(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    .line 371
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 373
    return-void
.end method

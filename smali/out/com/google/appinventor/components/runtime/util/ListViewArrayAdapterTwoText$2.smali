.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterTwoText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->createAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 77
    .local p5, "arg3":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->access$700(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, "view":Landroid/view/View;
    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, "text1":Landroid/widget/TextView;
    const v6, 0x1020015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, "text2":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 86
    .local v0, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v6, "Text1"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "val1":Ljava/lang/String;
    const-string v6, "Text2"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "val2":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->access$600(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    return-object v5
.end method

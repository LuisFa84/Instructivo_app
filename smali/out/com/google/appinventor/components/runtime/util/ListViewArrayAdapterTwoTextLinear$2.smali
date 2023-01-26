.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterTwoTextLinear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .prologue
    .line 106
    .local p4, "arg2":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$800(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/view/View;

    move-result-object v5

    .line 111
    .local v5, "view":Landroid/view/View;
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 112
    .local v1, "text1":Landroid/widget/TextView;
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 114
    .local v2, "text2":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 115
    .local v0, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v6, "Text1"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "val1":Ljava/lang/String;
    const-string v6, "Text2"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "val2":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$600(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->access$700(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    return-object v5
.end method

.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterImageTwoText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;Landroid/content/Context;IILjava/util/List;)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 121
    .local p5, "arg3":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$800(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/view/View;

    move-result-object v7

    .line 126
    .local v7, "view":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    .local v0, "image":Landroid/widget/ImageView;
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 128
    .local v3, "text1":Landroid/widget/TextView;
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 130
    .local v4, "text2":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 131
    .local v2, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v8, "Image"

    invoke-virtual {v2, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "imageVal":Ljava/lang/String;
    const-string v8, "Text1"

    invoke-virtual {v2, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "val1":Ljava/lang/String;
    const-string v8, "Text2"

    invoke-virtual {v2, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "val2":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-virtual {v8, v0, v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$600(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->access$700(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    return-object v7
.end method

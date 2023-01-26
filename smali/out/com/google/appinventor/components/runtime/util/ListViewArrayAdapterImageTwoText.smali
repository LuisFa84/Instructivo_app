.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterImageTwoText.java"


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private detailTextColor:I

.field private detailTextSize:I

.field private final filter:Landroid/widget/Filter;

.field private filterCurrentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private imageHeight:I

.field private imageWidth:I

.field private itemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>(IIIIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .registers 10
    .param p1, "textSize"    # I
    .param p2, "detailTextSize"    # I
    .param p3, "textColor"    # I
    .param p4, "detailTextColor"    # I
    .param p5, "imageWidth"    # I
    .param p6, "imageHeight"    # I
    .param p7, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textSize:I

    .line 37
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextSize:I

    .line 38
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textColor:I

    .line 39
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextColor:I

    .line 40
    iput p5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageWidth:I

    .line 41
    iput p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageHeight:I

    .line 42
    iput-object p7, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 43
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->currentItems:Ljava/util/List;

    .line 44
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filterCurrentItems:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filter:Landroid/widget/Filter;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->currentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filterCurrentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->createView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->textSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->detailTextSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/Filter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/16 v6, 0xf

    const/16 v8, 0xa

    .line 85
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageWidth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->imageHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 91
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, "textLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v3, "textView1":Landroid/widget/TextView;
    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 97
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v4, "textView2":Landroid/widget/TextView;
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 99
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    return-object v1
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090004

    const v4, 0x1020014

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->currentItems:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_10

    .line 111
    :try_start_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_11

    move-result-object v0

    .line 115
    :goto_d
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_10
    return-void

    .line 112
    :catch_11
    move-exception v1

    .line 113
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

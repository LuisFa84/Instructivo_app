.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterImageSingleText.java"


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
.method public constructor <init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .registers 8
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I
    .param p5, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textSize:I

    .line 37
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textColor:I

    .line 38
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageWidth:I

    .line 39
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageHeight:I

    .line 40
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 41
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->currentItems:Ljava/util/List;

    .line 42
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filterCurrentItems:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filter:Landroid/widget/Filter;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->currentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filterCurrentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filterCurrentItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->createView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/Filter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .registers 8

    .prologue
    const/16 v6, 0xf

    .line 84
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 89
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    return-object v1
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .registers 5
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
    .line 112
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->currentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v2, ""

    if-eq p2, v2, :cond_f

    .line 103
    :try_start_5
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_13

    move-result-object v0

    .line 108
    :cond_f
    :goto_f
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void

    .line 104
    :catch_13
    move-exception v1

    .line 105
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

    goto :goto_f
.end method

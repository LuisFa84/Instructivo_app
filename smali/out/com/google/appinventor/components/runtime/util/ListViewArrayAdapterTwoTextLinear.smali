.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterTwoTextLinear.java"


# static fields
.field private static container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# instance fields
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
    .param p2, "detailTextSize"    # I
    .param p3, "textColor"    # I
    .param p4, "detailTextColor"    # I
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
    .line 34
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textSize:I

    .line 36
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextSize:I

    .line 37
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textColor:I

    .line 38
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextColor:I

    .line 39
    sput-object p5, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 40
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->currentItems:Ljava/util/List;

    .line 41
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filterCurrentItems:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filter:Landroid/widget/Filter;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->currentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filterCurrentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filterCurrentItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->createView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextSize:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/Filter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0xf

    const/16 v4, 0xa

    .line 82
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    new-instance v1, Landroid/widget/TextView;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "textView1":Landroid/widget/TextView;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 94
    new-instance v2, Landroid/widget/TextView;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, "textView2":Landroid/widget/TextView;
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    return-object v0
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
    .line 106
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->currentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

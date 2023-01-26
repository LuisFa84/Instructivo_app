.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterSingleText.java"


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
.method public constructor <init>(IILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .registers 6
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I
    .param p3, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textSize:I

    .line 33
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textColor:I

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 35
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->currentItems:Ljava/util/List;

    .line 36
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filterCurrentItems:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filter:Landroid/widget/Filter;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->currentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filterCurrentItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filterCurrentItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 20
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textColor:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 20
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/Filter;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filter:Landroid/widget/Filter;

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
    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->currentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

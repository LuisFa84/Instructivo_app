.class public Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapterWithRecyclerView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;,
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAdapterRecyclerView"


# instance fields
.field private backgroundColor:I

.field private clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field protected final filter:Landroid/widget/Filter;

.field private filterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private idCard:I

.field private idFirst:I

.field private idImages:I

.field private idSecond:I

.field private imageHeight:I

.field private imageWidth:I

.field public isSelected:Z

.field public isVisible:[Ljava/lang/Boolean;

.field private itemViews:[Landroidx/cardview/widget/CardView;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private layoutType:I

.field private multiSelect:Z

.field public selection:[Ljava/lang/Boolean;

.field private selectionColor:I

.field private textDetailColor:I

.field private textDetailFont:I

.field private textDetailSize:F

.field private textMainColor:I

.field private textMainFont:I

.field private textMainSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/YailList;IFIII)V
    .registers 14
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "stringItems"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "textMainColor"    # I
    .param p4, "textMainSize"    # F
    .param p5, "textMainFont"    # I
    .param p6, "backgroundColor"    # I
    .param p7, "selectionColor"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v3, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    .line 115
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    .line 117
    iput v5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 118
    iput v5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 119
    iput v5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 120
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 147
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 148
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 149
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 150
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:I

    .line 151
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 152
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 153
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:I

    .line 154
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 155
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 156
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 157
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 158
    iput v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 159
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 160
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/cardview/widget/CardView;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 161
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 162
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 164
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 169
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_60
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-gt v0, v3, :cond_80

    .line 170
    invoke-virtual {p2, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "itemString":Ljava/lang/String;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 172
    .local v1, "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v3, "Text1"

    invoke-virtual {v1, v3, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 175
    .end local v1    # "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v2    # "itemString":Ljava/lang/String;
    :cond_80
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFIIIIIIIZ)V
    .registers 18
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p3, "textMainColor"    # I
    .param p4, "textDetailColor"    # I
    .param p5, "textMainSize"    # F
    .param p6, "textDetailSize"    # F
    .param p7, "textMainFont"    # I
    .param p8, "textDetailFont"    # I
    .param p9, "layoutType"    # I
    .param p10, "backgroundColor"    # I
    .param p11, "selectionColor"    # I
    .param p12, "imageWidth"    # I
    .param p13, "imageHeight"    # I
    .param p14, "multiSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;IIFFIIIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 120
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 123
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 126
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 127
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 128
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 129
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:I

    .line 130
    iput p8, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:I

    .line 131
    iput p9, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 132
    iput p10, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 133
    iput p11, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 134
    move/from16 v0, p13

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 135
    iput p12, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 136
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/cardview/widget/CardView;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 137
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 139
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-object v0
.end method


# virtual methods
.method public changeSelections(I)V
    .registers 4
    .param p1, "pos"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, p1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 210
    :goto_26
    return-void

    .line 204
    :cond_27
    const/4 v0, 0x0

    goto :goto_d

    .line 208
    :cond_29
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_26
.end method

.method public clearSelections()V
    .registers 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 182
    :cond_19
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v0, v0

    return v0
.end method

.method public getSelectedItems()Ljava/lang/String;
    .registers 6

    .prologue
    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 419
    .local v3, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    array-length v4, v4

    if-ge v1, v4, :cond_34

    .line 420
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 421
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 422
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v4, "Text1"

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v3, ","

    .line 419
    .end local v0    # "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 427
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public hasVisibleItems()Z
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 40
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .registers 13
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x0

    .line 305
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v7, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;

    invoke-direct {v7, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;)V

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 313
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v6, "Text1"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "first":Ljava/lang/String;
    const-string v5, ""

    .line 315
    .local v5, "second":Ljava/lang/String;
    const-string v6, "Text2"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 316
    const-string v6, "Text2"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    :cond_31
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-nez v6, :cond_6b

    .line 319
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_3a
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14f

    .line 351
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 355
    :goto_4b
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    aget-object v6, v6, p2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_158

    .line 357
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 358
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v6}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 363
    :goto_64
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    iget-object v7, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    aput-object v7, v6, p2

    .line 364
    return-void

    .line 320
    :cond_6b
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7b

    .line 321
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 323
    :cond_7b
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8b

    .line 324
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    .line 326
    :cond_8b
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_dc

    .line 327
    const-string v6, "Image"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "imageName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 330
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_9f
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a8} :catch_b4

    move-result-object v1

    .line 334
    :goto_a9
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3a

    .line 331
    :catch_b4
    move-exception v4

    .line 332
    .local v4, "ioe":Ljava/io/IOException;
    const-string v6, "ListAdapterRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Unable to load image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 336
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_dc
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_133

    .line 337
    const-string v6, "Image"

    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .restart local v3    # "imageName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 340
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_f0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f9} :catch_10b

    move-result-object v1

    .line 344
    :goto_fa
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3a

    .line 341
    :catch_10b
    move-exception v4

    .line 342
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v6, "ListAdapterRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Unable to load image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 348
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_133
    const-string v6, "ListAdapterRecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Layout not recognized: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 353
    :cond_14f
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v6, v7}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto/16 :goto_4b

    .line 360
    :cond_158
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v6, v9}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 361
    iget-object v6, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v6}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_64
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .registers 20
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 218
    new-instance v1, Landroidx/cardview/widget/CardView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v1, v13}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, "cardView":Landroidx/cardview/widget/CardView;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 220
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 221
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 222
    const v13, 0x40066666    # 2.1f

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 223
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 224
    const/high16 v13, 0x40400000    # 3.0f

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 225
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 227
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 228
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    invoke-virtual {v1, v13}, Landroidx/cardview/widget/CardView;->setId(I)V

    .line 230
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v10, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v10, "params1":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v1, v13}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 236
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v11, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 238
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setId(I)V

    .line 239
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v3, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v3, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v13, 0xa

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v13, v14, v15}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 245
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v8, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v6, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_ce

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_fd

    .line 252
    :cond_ce
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 254
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 255
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    invoke-direct {v5, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 256
    .local v5, "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    :cond_fd
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-eqz v13, :cond_10a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_11b

    .line 262
    :cond_10a
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    :cond_10d
    :goto_10d
    invoke-virtual {v1, v10}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v1, v8}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 299
    new-instance v13, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    return-object v13

    .line 265
    :cond_11b
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v12, "textViewSecond":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 267
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 268
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v4, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v4, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 271
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_163

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_192

    .line 273
    :cond_163
    const/16 v13, 0xa

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 274
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .local v9, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    const/4 v14, -0x2

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v7, v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 278
    .local v7, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10d

    .line 285
    .end local v7    # "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_192
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10d

    .line 287
    const/16 v13, 0x32

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 290
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 292
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10d
.end method

.method public setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V
    .registers 2
    .param p1, "clickListener"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .line 410
    return-void
.end method

.method public toggleSelection(I)V
    .registers 5
    .param p1, "pos"    # I

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 190
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1c

    .line 191
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 188
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 194
    :cond_1f
    if-ltz p1, :cond_39

    .line 195
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    .line 196
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_39

    .line 197
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v1, v1, p1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 200
    :cond_39
    return-void
.end method

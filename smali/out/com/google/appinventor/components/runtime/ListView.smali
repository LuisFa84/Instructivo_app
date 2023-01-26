.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "recyclerview.jar, cardview.jar, cardview.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_IMAGE_WIDTH:I = 0xc8

.field private static final DEFAULT_TEXT_SIZE:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private detailTextColor:I

.field private dictItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private fontSizeDetail:F

.field private fontSizeMain:F

.field private fontTypeDetail:I

.field private fontTypeface:I

.field private imageHeight:I

.field private imageWidth:I

.field private layout:I

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field private orientation:I

.field private propertyValue:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selection:Ljava/lang/String;

.field private selectionColor:I

.field private selectionDetailText:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

.field private textColor:I

.field private txtSearchBox:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 10
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v7, -0x2

    const/high16 v6, -0x1000000

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 123
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 88
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 131
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 133
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 135
    .local v0, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v1, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 139
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setWidth(I)V

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const-string v2, "Search list..."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    if-nez v1, :cond_72

    .line 143
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 146
    :cond_72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 147
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 148
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 152
    :cond_86
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v2, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v1, :cond_ec

    .line 180
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    :goto_99
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 191
    const v1, -0x333334

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 192
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColorDetail(I)V

    .line 194
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 195
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->FontSizeDetail(F)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->FontTypeface(I)V

    .line 197
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->FontTypefaceDetail(I)V

    .line 199
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ImageWidth(I)V

    .line 200
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ImageHeight(I)V

    .line 201
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 202
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ListView;->ListData(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 207
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 208
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 209
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->ListViewLayout(I)V

    .line 211
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 212
    return-void

    .line 182
    :cond_ec
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_99
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/ListView;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public AfterPicking()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .prologue
    .line 493
    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .prologue
    .line 511
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 527
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 528
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 531
    return-void
.end method

.method public CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 6
    .param p1, "mainText"    # Ljava/lang/String;
    .param p2, "detailText"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional."
    .end annotation

    .prologue
    .line 940
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 941
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v1, "Text2"

    invoke-virtual {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string v1, "Image"

    invoke-virtual {v0, v1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-object v0
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 327
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_e
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 8
    .param p1, "itemsList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name."
    .end annotation

    .prologue
    .line 288
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 289
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 290
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-lez v4, :cond_50

    .line 291
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "firstitem":Ljava/lang/Object;
    instance-of v4, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_48

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v1, v4, :cond_50

    .line 297
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 298
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_34

    move-object v3, v2

    .line 299
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 300
    .local v3, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 303
    .end local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_34
    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 304
    .restart local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "Text1"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_31

    .line 310
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_48
    const-string v4, "Listview"

    invoke-static {p1, v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 313
    .end local v0    # "firstitem":Ljava/lang/Object;
    :cond_50
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 314
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .registers 3
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .prologue
    .line 343
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 345
    return-void
.end method

.method public FontSize()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
        userVisible = false
    .end annotation

    .prologue
    .line 666
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    return v0
.end method

.method public FontSize(F)V
    .registers 3
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 680
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    .line 681
    :cond_c
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    .line 684
    :goto_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 685
    return-void

    .line 683
    :cond_15
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    goto :goto_11
.end method

.method public FontSizeDetail()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
    .end annotation

    .prologue
    .line 695
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    return v0
.end method

.method public FontSizeDetail(F)V
    .registers 3
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 708
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    .line 709
    :cond_c
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    .line 712
    :goto_11
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 713
    return-void

    .line 711
    :cond_15
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    goto :goto_11
.end method

.method public FontTypeface()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 728
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .registers 2
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 745
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    .line 746
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 747
    return-void
.end method

.method public FontTypefaceDetail()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 762
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:I

    return v0
.end method

.method public FontTypefaceDetail(I)V
    .registers 2
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 779
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:I

    .line 780
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 781
    return-void
.end method

.method public GetDetailText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .registers 3
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Detail Text of a ListView element."
    .end annotation

    .prologue
    .line 954
    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetImageName(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .registers 3
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the filename of the image of a ListView element that has been uploaded to Media."
    .end annotation

    .prologue
    .line 959
    const-string v0, "Image"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMainText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .registers 3
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Main Text of a ListView element."
    .end annotation

    .prologue
    .line 949
    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .registers 3
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .prologue
    .line 228
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 229
    const/4 p1, -0x2

    .line 231
    :cond_4
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 232
    return-void
.end method

.method public ImageHeight()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image height of the listview image stringItems."
    .end annotation

    .prologue
    .line 816
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    return v0
.end method

.method public ImageHeight(I)V
    .registers 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 828
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    .line 829
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 830
    return-void
.end method

.method public ImageWidth()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image width of the listview image."
    .end annotation

    .prologue
    .line 791
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    return v0
.end method

.method public ImageWidth(I)V
    .registers 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 803
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    .line 804
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 805
    return-void
.end method

.method public ListData()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public ListData(Ljava/lang/String;)V
    .registers 12
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "ListViewAddData"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 906
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    .line 907
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 908
    if-eqz p1, :cond_86

    const-string v5, ""

    if-eq p1, v5, :cond_86

    .line 910
    :try_start_e
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 912
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_86

    .line 913
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 914
    .local v3, "jsonItem":Lorg/json/JSONObject;
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 915
    .local v4, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "Text1"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 916
    const-string v5, "Text1"

    const-string v6, "Text1"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v6, "Text2"

    const-string v5, "Text2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    const-string v5, "Text2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_46
    invoke-virtual {v4, v6, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v6, "Image"

    const-string v5, "Image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    const-string v5, "Image"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_59
    invoke-virtual {v4, v6, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 917
    :cond_64
    const-string v5, ""

    goto :goto_46

    .line 918
    :cond_67
    const-string v5, ""
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_69} :catch_6a

    goto :goto_59

    .line 922
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonItem":Lorg/json/JSONObject;
    .end local v4    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :catch_6a
    move-exception v1

    .line 923
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "ListView"

    const-string v6, "Malformed JSON in ListView.ListData"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 924
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    const-string v6, "ListView.ListData"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, v6, v9, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 927
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 928
    return-void
.end method

.method public ListViewLayout()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 839
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    return v0
.end method

.method public ListViewLayout(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "ListViewLayout"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 851
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 852
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 853
    return-void
.end method

.method public Orientation()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 864
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    return v0
.end method

.method public Orientation(I)V
    .registers 2
    .param p1, "orientation"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "recyclerview_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the layout\'s orientation (vertical, horizontal). "
    .end annotation

    .prologue
    .line 880
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 881
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 882
    return-void
.end method

.method public Refresh()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the ListView to reflect any changes in the data."
    .end annotation

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 965
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 447
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 448
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_37

    .line 449
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 450
    .local v1, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v2, "Text1"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_3d

    .line 451
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 452
    const-string v2, "Text2"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 461
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_37
    :goto_37
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 462
    return-void

    .line 456
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_3d
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 459
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_43
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    goto :goto_37
.end method

.method public SelectionColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .prologue
    .line 545
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    return v0
.end method

.method public SelectionColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 562
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    .line 563
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 564
    return-void
.end method

.method public SelectionDetailText()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the secondary text of the selected row in the ListView."
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public SelectionIndex()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 393
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .registers 4
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the one-indexed position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text2"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 421
    :goto_48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    if-eqz v0, :cond_55

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    .line 424
    :cond_55
    return-void

    .line 416
    :cond_56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_48
.end method

.method public ShowFilterBar(Z)V
    .registers 4
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 261
    if-eqz p1, :cond_b

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 266
    :goto_a
    return-void

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_a
.end method

.method public ShowFilterBar()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public TextColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview stringItems."
    .end annotation

    .prologue
    .line 579
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 595
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 596
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 597
    return-void
.end method

.method public TextColorDetail()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of DetailText of listview stringItems. "
    .end annotation

    .prologue
    .line 608
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    return v0
.end method

.method public TextColorDetail(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 621
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    .line 622
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 623
    return-void
.end method

.method public TextSize()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview items."
    .end annotation

    .prologue
    .line 638
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public TextSize(I)V
    .registers 3
    .param p1, "textSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 650
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_6

    .line 651
    const/16 p1, 0x3e7

    .line 653
    :cond_6
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 654
    return-void
.end method

.method public Width(I)V
    .registers 3
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .prologue
    .line 243
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 244
    const/4 p1, -0x2

    .line 246
    :cond_4
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 247
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 480
    .local v0, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 481
    const-string v1, "Text2"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 482
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 483
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 484
    return-void
.end method

.method public setAdapterData()V
    .registers 18

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_95

    .line 354
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFIIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 356
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_83

    .line 357
    new-instance v16, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 367
    .local v16, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v2, Lcom/google/appinventor/components/runtime/ListView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 377
    return-void

    .line 359
    .end local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_83
    new-instance v16, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .restart local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_60

    .line 363
    .end local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_95
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Lcom/google/appinventor/components/runtime/util/YailList;IFIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 365
    new-instance v16, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .restart local v16    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_60
.end method

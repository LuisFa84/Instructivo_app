.class public Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "KIO4_AnimatedGif.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Set an animated gif into a layout. Touch over an image and trigger an event. Juan Antonio Villalpando - KIO4.COM "
    iconName = "http://juanant91.byethost3.com/gif.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public context:Landroid/content/Context;

.field private density:F

.field private isRepl:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->isRepl:Z

    .line 52
    iput-object p1, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->context:Landroid/content/Context;

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->density:F

    .line 55
    iget-object v0, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->isRepl:Z

    .line 56
    :cond_2b
    return-void
.end method


# virtual methods
.method public AnimatedGif(Lcom/google/appinventor/components/runtime/HVArrangement;Ljava/lang/String;)V
    .registers 15
    .param p1, "layout"    # Lcom/google/appinventor/components/runtime/HVArrangement;
    .param p2, "image"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set an animated gif file in assets."
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 62
    .local v4, "disposicion":Landroid/widget/FrameLayout;
    const-string v6, ""

    .line 63
    .local v6, "imagen":Ljava/lang/String;
    const/4 v2, 0x0

    .line 64
    .local v2, "ancho":I
    const/4 v1, 0x0

    .line 65
    .local v1, "alto":I
    new-instance v0, Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->context:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "addWeb":Landroid/webkit/WebView;
    const-string v10, ""

    if-eq p2, v10, :cond_6f

    iget-boolean v10, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->isRepl:Z

    if-eqz v10, :cond_6f

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/AppInventor/assets/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/AppInventor/assets/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 75
    iget v1, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 77
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_6f
    const-string v10, ""

    if-eq p2, v10, :cond_a8

    iget-boolean v10, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->isRepl:Z

    if-nez v10, :cond_a8

    .line 78
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file:///android_asset/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    iget-object v10, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 82
    .local v3, "asset":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 84
    .local v7, "is":Ljava/io/InputStream;
    :try_start_94
    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_d5

    move-result-object v7

    .line 88
    :goto_98
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .restart local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    const/4 v10, 0x0

    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 91
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 92
    iget v1, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 97
    .end local v3    # "asset":Landroid/content/res/AssetManager;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_a8
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    .local v9, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 100
    const/4 v10, 0x0

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 101
    iget v10, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->density:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-int/2addr v10, v1

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 102
    iget v10, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->density:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    mul-int/2addr v10, v2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 103
    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 107
    new-instance v5, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif$1;

    invoke-direct {v5, p0}, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif$1;-><init>(Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;)V

    .line 123
    .local v5, "handleTouch":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    return-void

    .line 85
    .end local v5    # "handleTouch":Landroid/view/View$OnTouchListener;
    .end local v9    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "asset":Landroid/content/res/AssetManager;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_d5
    move-exception v10

    goto :goto_98
.end method

.method public ImageTouched()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When touch image, trigger this event."
    .end annotation

    .prologue
    .line 130
    const-string v0, "ImageTouched"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

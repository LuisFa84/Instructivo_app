.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonBase"

.field private static final ROUNDED_CORNERS_ARRAY:[F

.field private static final ROUNDED_CORNERS_RADIUS:F = 10.0f

.field private static final SHAPED_DEFAULT_BACKGROUND_COLOR:I = -0x333334

.field private static defaultButtonMinHeight:I

.field private static defaultButtonMinWidth:I


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private bold:Z

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private fontTypeface:I

.field private imagePath:Ljava/lang/String;

.field private isBigText:Z

.field private isHighContrast:Z

.field private italic:Z

.field private myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private shape:I

.field private showFeedback:Z

.field private textAlignment:I

.field private textColor:I

.field private final view:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    .line 118
    sput v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 125
    sput v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    return-void

    .line 59
    nop

    :array_10
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 7
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 80
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    .line 111
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    .line 134
    new-instance v0, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    .line 143
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 153
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 158
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 160
    iput v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 162
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 163
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 165
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    .line 166
    return-void
.end method

.method private createRippleState()Landroid/content/res/ColorStateList;
    .registers 9

    .prologue
    const v6, 0x101009e

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 472
    new-array v2, v5, [[I

    new-array v3, v5, [I

    aput v6, v3, v7

    aput-object v3, v2, v7

    .line 473
    .local v2, "states":[[I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 474
    .local v1, "enabled_color":I
    new-array v0, v5, [I

    const/16 v3, 0x46

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 475
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 474
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v7

    .line 477
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    .line 451
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1c

    .line 452
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 453
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_2c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2c

    .line 455
    :try_start_12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1c} :catch_1f

    .line 467
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1c
    :goto_1c
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 456
    .restart local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :catch_1f
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "ButtonBase"

    const-string v3, "Unable to clone button drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1c

    .line 464
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2c
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1c
.end method

.method private setShape()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 482
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 485
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    packed-switch v1, :pswitch_data_a6

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 487
    :pswitch_11
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    invoke-direct {v1, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 500
    :goto_1b
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    if-nez v1, :cond_61

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_61

    .line 501
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->createRippleState()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 506
    :goto_35
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, 0xffffff

    if-ne v1, v2, :cond_67

    .line 507
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 520
    :goto_49
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 521
    return-void

    .line 490
    :pswitch_4f
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_1b

    .line 493
    :pswitch_58
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_1b

    .line 503
    :cond_61
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_35

    .line 509
    :cond_67
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v1, :cond_98

    .line 510
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 511
    :cond_7b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_49

    .line 513
    :cond_89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x333334

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_49

    .line 517
    :cond_98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_49

    .line 485
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_4f
        :pswitch_58
    .end packed-switch
.end method

.method private updateAppearance()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8e

    .line 410
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_8a

    .line 411
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_4b

    .line 414
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 415
    :cond_1e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 442
    :goto_39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    .line 448
    :goto_42
    return-void

    .line 420
    :cond_43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_39

    .line 423
    :cond_4b
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v1, 0xffffff

    if-ne v0, v1, :cond_6e

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_39

    .line 431
    :cond_6e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 435
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_39

    .line 440
    :cond_8a
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setShape()V

    goto :goto_39

    .line 445
    :cond_8e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v3, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto :goto_42
.end method


# virtual methods
.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .prologue
    .line 382
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 400
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 401
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 402
    return-void
.end method

.method public Enabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 545
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap %type% to cause action."
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .registers 5
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 574
    return-void
.end method

.method public FontBold()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in bold."
    .end annotation

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .registers 5
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    .line 634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 635
    return-void
.end method

.method public FontItalic()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in italics."
    .end annotation

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for %type% text."
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .registers 4
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 662
    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 663
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 667
    :goto_19
    return-void

    .line 665
    :cond_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_19
.end method

.method public FontTypeface()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for %type% text."
        userVisible = false
    .end annotation

    .prologue
    .line 683
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .registers 6
    .param p1, "typeface"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 700
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 702
    return-void
.end method

.method public GotFocus()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the %type% so it is now possible to click it."
    .end annotation

    .prologue
    .line 230
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public Image()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 348
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 369
    .end local p1    # "path":Ljava/lang/String;
    :goto_c
    return-void

    .line 352
    .restart local p1    # "path":Ljava/lang/String;
    :cond_d
    if-nez p1, :cond_11

    const-string p1, ""

    .end local p1    # "path":Ljava/lang/String;
    :cond_11
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 359
    :try_start_1e
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2c} :catch_30

    .line 368
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    goto :goto_c

    .line 360
    :catch_30
    move-exception v0

    .line 362
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "ButtonBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public Initialize()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 170
    return-void
.end method

.method public LostFocus()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it."
    .end annotation

    .prologue
    .line 240
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public Shape()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 290
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    return v0
.end method

.method public Shape(I)V
    .registers 2
    .param p1, "shape"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .prologue
    .line 314
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    .line 315
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 316
    return-void
.end method

.method public ShowFeedback(Z)V
    .registers 2
    .param p1, "showFeedback"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background."
    .end annotation

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    .line 590
    return-void
.end method

.method public ShowFeedback()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the visual feedback state of the %type%"
    .end annotation

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->showFeedback:Z

    return v0
.end method

.method public Text()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on %type%."
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public TextAlignment()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .prologue
    .line 257
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .registers 4
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 274
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 276
    return-void
.end method

.method public TextColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .prologue
    .line 739
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 753
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 754
    if-eqz p1, :cond_a

    .line 755
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 764
    :goto_9
    return-void

    .line 757
    :cond_a
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 758
    :cond_1a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_9

    .line 761
    :cond_21
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_9
.end method

.method public TouchDown()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% was pressed down."
    .end annotation

    .prologue
    .line 212
    const-string v0, "TouchDown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public TouchUp()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% has been released."
    .end annotation

    .prologue
    .line 220
    const-string v0, "TouchUp"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public abstract click()V
.end method

.method public getHighContrast()Z
    .registers 2

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    return v0
.end method

.method public getLargeFont()Z
    .registers 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public longClick()Z
    .registers 2

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    .line 781
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 787
    if-eqz p2, :cond_6

    .line 788
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    .line 792
    :goto_5
    return-void

    .line 790
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    goto :goto_5
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x15

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_29

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_24

    .line 185
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 188
    :cond_24
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V

    .line 199
    :cond_27
    :goto_27
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 192
    :cond_37
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_47

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_53

    .line 193
    :cond_47
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 196
    :cond_53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V

    goto :goto_27
.end method

.method public setHighContrast(Z)V
    .registers 5
    .param p1, "isHighContrast"    # Z

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_2a

    .line 805
    if-eqz p1, :cond_37

    .line 806
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 815
    :cond_2a
    :goto_2a
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    if-nez v0, :cond_36

    .line 816
    if-eqz p1, :cond_3f

    .line 817
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 822
    :cond_36
    :goto_36
    return-void

    .line 810
    :cond_37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2a

    .line 819
    :cond_3f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_36
.end method

.method public setLargeFont(Z)V
    .registers 7
    .param p1, "isLargeFont"    # Z

    .prologue
    const/high16 v4, 0x41600000    # 14.0f

    .line 831
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2e

    .line 832
    :cond_25
    if-eqz p1, :cond_2f

    .line 833
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 838
    :cond_2e
    :goto_2e
    return-void

    .line 835
    :cond_2f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_2e
.end method

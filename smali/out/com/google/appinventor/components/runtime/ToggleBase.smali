.class public abstract Lcom/google/appinventor/components/runtime/ToggleBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ToggleBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/CompoundButton;",
        ">",
        "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Lcom/google/appinventor/components/runtime/AccessibleComponent;"
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private isBigText:Z

.field private italic:Z

.field private textColor:I

.field protected view:Landroid/widget/CompoundButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 59
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->isBigText:Z

    .line 60
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The background color of the %type% as an alpha-red-green-blue integer."
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->backgroundColor:I

    .line 147
    if-eqz p1, :cond_a

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 152
    :goto_9
    return-void

    .line 150
    :cond_a
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_9
.end method

.method public Changed()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User tapped and released the %type%."
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "Changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 118
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
        description = "True if the %type% is active and clickable."
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 178
    return-void
.end method

.method public Enabled()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

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
        description = "Set to true if the text of the %type% should be bold."
        userVisible = false
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 206
    return-void
.end method

.method public FontBold()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

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
        description = "Set to true if the text of the %type% should be italic."
        userVisible = false
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 237
    return-void
.end method

.method public FontItalic()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .registers 8
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text font size of the %type% in scale-independent pixels."
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v4, 0x41600000    # 14.0f

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 264
    sub-float v0, p1, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1f

    sub-float v0, p1, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3b

    .line 265
    :cond_1f
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->isBigText:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 266
    :cond_2f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 275
    :goto_34
    return-void

    .line 269
    :cond_35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_34

    .line 273
    :cond_3b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_34
.end method

.method public FontTypeface()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

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
        description = "Specifies the text font face of the %type%."
        userVisible = false
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 306
    return-void
.end method

.method public GotFocus()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "%type% became the focused component."
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public LostFocus()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "%type% stopped being the focused component."
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public Text()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text displayed by the %type%."
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public TextColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the text color of the %type% as an alpha-red-green-blue integer."
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->textColor:I

    .line 360
    if-eqz p1, :cond_a

    .line 361
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 365
    :goto_9
    return-void

    .line 363
    :cond_a
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, -0x1

    :goto_19
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_9

    :cond_1d
    const/high16 v0, -0x1000000

    goto :goto_19
.end method

.method public getHighContrast()Z
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getLargeFont()Z
    .registers 2

    .prologue
    .line 109
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->isBigText:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 82
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method protected initToggle()V
    .registers 6

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 70
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->BackgroundColor(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Enabled(Z)V

    .line 72
    iput v4, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 74
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->FontSize(F)V

    .line 75
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Text(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ToggleBase;->TextColor(I)V

    .line 78
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 384
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->Changed()V

    .line 385
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .prologue
    .line 390
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    if-eqz p2, :cond_6

    .line 391
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->GotFocus()V

    .line 395
    :goto_5
    return-void

    .line 393
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ToggleBase;->LostFocus()V

    goto :goto_5
.end method

.method public setHighContrast(Z)V
    .registers 2
    .param p1, "isHighContrast"    # Z

    .prologue
    .line 89
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    return-void
.end method

.method public setLargeFont(Z)V
    .registers 7
    .param p1, "isLargeFont"    # Z

    .prologue
    .local p0, "this":Lcom/google/appinventor/components/runtime/ToggleBase;, "Lcom/google/appinventor/components/runtime/ToggleBase<TT;>;"
    const/high16 v4, 0x41600000    # 14.0f

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2e

    .line 99
    :cond_25
    if-eqz p1, :cond_2f

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 105
    :cond_2e
    :goto_2e
    return-void

    .line 102
    :cond_2f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ToggleBase;->view:Landroid/widget/CompoundButton;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_2e
.end method

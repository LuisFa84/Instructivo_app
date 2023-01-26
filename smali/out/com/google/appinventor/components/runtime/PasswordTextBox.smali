.class public final Lcom/google/appinventor/components/runtime/PasswordTextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "PasswordTextBox.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for entering passwords.  This is the same as the ordinary <code>TextBox</code> component except this does not display the characters typed by the user.</p><p>The value of the text in the box can be found or set through the <code>Text</code> property. If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p> <p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p>"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private acceptsNumbersOnly:Z

.field private passwordVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->PasswordVisible(Z)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->NumbersOnly(Z)V

    .line 77
    return-void
.end method

.method private setPasswordInputType(ZZ)V
    .registers 5
    .param p1, "acceptsNumbersOnly"    # Z
    .param p2, "passwordVisible"    # Z

    .prologue
    .line 132
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 141
    :cond_a
    :goto_a
    return-void

    .line 134
    :cond_b
    if-eqz p2, :cond_17

    if-nez p1, :cond_17

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_a

    .line 136
    :cond_17
    if-eqz p1, :cond_23

    if-nez p2, :cond_23

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_a

    .line 138
    :cond_23
    if-nez p1, :cond_a

    if-nez p2, :cond_a

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_a
.end method


# virtual methods
.method public NumbersOnly(Z)V
    .registers 3
    .param p1, "acceptsNumbersOnly"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then this password text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->acceptsNumbersOnly:Z

    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->setPasswordInputType(ZZ)V

    .line 129
    return-void
.end method

.method public NumbersOnly()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this password text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->acceptsNumbersOnly:Z

    return v0
.end method

.method public PasswordVisible(Z)V
    .registers 3
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Visibility of password."
    .end annotation

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    .line 82
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->acceptsNumbersOnly:Z

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->setPasswordInputType(ZZ)V

    .line 83
    return-void
.end method

.method public PasswordVisible()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Visibility of password."
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    return v0
.end method

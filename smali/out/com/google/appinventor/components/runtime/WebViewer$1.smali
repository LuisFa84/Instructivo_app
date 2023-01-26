.class Lcom/google/appinventor/components/runtime/WebViewer$1;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/WebViewer;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$1;->this$0:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 180
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 175
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 172
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

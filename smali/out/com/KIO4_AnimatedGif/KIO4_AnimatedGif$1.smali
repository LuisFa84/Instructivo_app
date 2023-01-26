.class Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif$1;
.super Ljava/lang/Object;
.source "KIO4_AnimatedGif.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->AnimatedGif(Lcom/google/appinventor/components/runtime/HVArrangement;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;


# direct methods
.method constructor <init>(Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;)V
    .registers 2
    .param p1, "this$0"    # Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif$1;->this$0:Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 119
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 112
    :pswitch_9
    iget-object v0, p0, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif$1;->this$0:Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;

    invoke-virtual {v0}, Lcom/KIO4_AnimatedGif/KIO4_AnimatedGif;->ImageTouched()V

    goto :goto_7

    .line 110
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

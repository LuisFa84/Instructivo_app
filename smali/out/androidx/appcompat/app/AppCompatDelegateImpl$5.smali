.class Landroidx/appcompat/app/AppCompatDelegateImpl$5;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/appcompat/app/AppCompatDelegateImpl;

    .prologue
    .line 715
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$5;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .registers 1

    .prologue
    .line 717
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$5;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dismissPopups()V

    .line 722
    return-void
.end method

.class Landroidx/core/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/ContentLoadingProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroidx/core/widget/ContentLoadingProgressBar;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/core/widget/ContentLoadingProgressBar;

    .prologue
    .line 55
    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    iput-boolean v1, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mPostedShow:Z

    .line 60
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    iget-boolean v0, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mDismissed:Z

    if-nez v0, :cond_18

    .line 61
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/ContentLoadingProgressBar;->mStartTime:J

    .line 62
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar$2;->this$0:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0, v1}, Landroidx/core/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 64
    :cond_18
    return-void
.end method

.class Landroidx/customview/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/FocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mTemp1:Landroid/graphics/Rect;

.field private final mTemp2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V
    .registers 4
    .param p1, "isLayoutRtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    .local p2, "adapter":Landroidx/customview/widget/FocusStrategy$BoundsAdapter;, "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    .line 102
    iput-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 103
    iput-object p2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 104
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroidx/customview/widget/FocusStrategy$SequentialComparator;, "Landroidx/customview/widget/FocusStrategy$SequentialComparator<TT;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    .local p2, "second":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 108
    iget-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    .line 109
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    .line 111
    .local v1, "secondRect":Landroid/graphics/Rect;
    iget-object v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    invoke-interface {v4, p1, v0}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 112
    iget-object v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    invoke-interface {v4, p2, v1}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 114
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_17

    .line 135
    :cond_16
    :goto_16
    return v3

    .line 116
    :cond_17
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1f

    move v3, v2

    .line 117
    goto :goto_16

    .line 118
    :cond_1f
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_2d

    .line 119
    iget-boolean v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_2b

    :goto_29
    move v3, v2

    goto :goto_16

    :cond_2b
    move v2, v3

    goto :goto_29

    .line 120
    :cond_2d
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_39

    .line 121
    iget-boolean v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-nez v4, :cond_16

    move v3, v2

    goto :goto_16

    .line 122
    :cond_39
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_16

    .line 124
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_47

    move v3, v2

    .line 125
    goto :goto_16

    .line 126
    :cond_47
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_55

    .line 127
    iget-boolean v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_53

    :goto_51
    move v3, v2

    goto :goto_16

    :cond_53
    move v2, v3

    goto :goto_51

    .line 128
    :cond_55
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_61

    .line 129
    iget-boolean v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-nez v4, :cond_16

    move v3, v2

    goto :goto_16

    .line 135
    :cond_61
    const/4 v3, 0x0

    goto :goto_16
.end method

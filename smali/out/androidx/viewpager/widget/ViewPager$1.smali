.class final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I
    .registers 5
    .param p1, "lhs"    # Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .param p2, "rhs"    # Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .prologue
    .line 143
    iget v0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 140
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$1;->compare(Landroidx/viewpager/widget/ViewPager$ItemInfo;Landroidx/viewpager/widget/ViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method

.class Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeProviderApi19"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V
    .registers 2
    .param p1, "compat"    # Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi16;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;)V

    .line 81
    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4
    .param p1, "focus"    # I

    .prologue
    .line 85
    iget-object v1, p0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi19;->mCompat:Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 86
    .local v0, "compatInfo":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v0, :cond_a

    .line 87
    const/4 v1, 0x0

    .line 89
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_9
.end method

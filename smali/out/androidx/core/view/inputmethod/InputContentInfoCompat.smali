.class public final Landroidx/core/view/inputmethod/InputContentInfoCompat;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;,
        Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;,
        Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .registers 6
    .param p1, "contentUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Landroid/content/ClipDescription;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "linkUri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_11

    .line 171
    new-instance v0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    invoke-direct {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 175
    :goto_10
    return-void

    .line 173
    :cond_11
    new-instance v0, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;

    invoke-direct {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatBaseImpl;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    goto :goto_10
.end method

.method private constructor <init>(Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V
    .registers 2
    .param p1, "impl"    # Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 179
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .registers 4
    .param p0, "inputContentInfo"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 219
    if-nez p0, :cond_4

    .line 225
    :cond_3
    :goto_3
    return-object v0

    .line 222
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_3

    .line 225
    new-instance v0, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    new-instance v1, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;

    invoke-direct {v1, p0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatApi25Impl;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;)V

    goto :goto_3
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public releasePermission()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->releasePermission()V

    .line 257
    return-void
.end method

.method public requestPermission()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->requestPermission()V

    .line 248
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Landroidx/core/view/inputmethod/InputContentInfoCompat;->mImpl:Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    invoke-interface {v0}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getInputContentInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

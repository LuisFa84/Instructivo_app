.class Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatBaseImpl"
.end annotation


# instance fields
.field private mLocaleList:Landroidx/core/os/LocaleListHelper;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/core/os/LocaleListHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    check-cast p1, Landroidx/core/os/LocaleListCompat;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListHelper;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 53
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0, p1}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3
    .param p1, "supportedLocales"    # [Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0, p1}, Landroidx/core/os/LocaleListHelper;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 99
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocaleList()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0}, Landroidx/core/os/LocaleListHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0, p1}, Landroidx/core/os/LocaleListHelper;->indexOf(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0}, Landroidx/core/os/LocaleListHelper;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .registers 3
    .param p1, "list"    # [Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    new-instance v0, Landroidx/core/os/LocaleListHelper;

    invoke-direct {v0, p1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    .line 44
    return-void
.end method

.method public size()I
    .registers 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0}, Landroidx/core/os/LocaleListHelper;->size()I

    move-result v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0}, Landroidx/core/os/LocaleListHelper;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0}, Landroidx/core/os/LocaleListHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

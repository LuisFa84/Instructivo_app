.class public Landroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    }
.end annotation


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field mDisabledMessage:Ljava/lang/CharSequence;

.field mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field mId:Ljava/lang/String;

.field mIntents:[Landroid/content/Intent;

.field mIsAlwaysBadged:Z

.field mLabel:Ljava/lang/CharSequence;

.field mLongLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 7
    .param p1, "outIntent"    # Landroid/content/Intent;

    .prologue
    .line 77
    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 78
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v2, :cond_46

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    if-eqz v2, :cond_3f

    .line 82
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 83
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_33

    .line 85
    :try_start_2d
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_32} :catch_47

    move-result-object v0

    .line 90
    :cond_33
    :goto_33
    if-nez v0, :cond_3f

    .line 91
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_3f
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, v0, v3}, Landroidx/core/graphics/drawable/IconCompat;->addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    .line 96
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_46
    return-object p1

    .line 86
    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_47
    move-exception v2

    goto :goto_33
.end method

.method public getActivity()Landroid/content/ComponentName;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x19
    .end annotation

    .prologue
    .line 58
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    .line 61
    .local v0, "builder":Landroid/content/pm/ShortcutInfo$Builder;
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_22

    .line 62
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 64
    :cond_22
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 65
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 67
    :cond_2f
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 68
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 70
    :cond_3c
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_45

    .line 71
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 73
    :cond_45
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    return-object v1
.end method

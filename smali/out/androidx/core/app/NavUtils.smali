.class public final Landroidx/core/app/NavUtils;
.super Ljava/lang/Object;
.source "NavUtils.java"


# static fields
.field public static final PARENT_ACTIVITY:Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final TAG:Ljava/lang/String; = "NavUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    return-void
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 10
    .param p0, "sourceActivity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 129
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_e

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 133
    .local v3, "result":Landroid/content/Intent;
    if-eqz v3, :cond_e

    .line 150
    .end local v3    # "result":Landroid/content/Intent;
    :goto_d
    return-object v3

    .line 137
    :cond_e
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "parentName":Ljava/lang/String;
    if-nez v2, :cond_16

    move-object v3, v5

    goto :goto_d

    .line 141
    :cond_16
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    .local v4, "target":Landroid/content/ComponentName;
    :try_start_1b
    invoke-static {p0, v4}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "grandparent":Ljava/lang/String;
    if-nez v1, :cond_27

    .line 145
    invoke-static {v4}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    :goto_25
    move-object v3, v5

    .line 146
    goto :goto_d

    .line 145
    :cond_27
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 146
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_2f} :catch_31

    move-result-object v5

    goto :goto_25

    .line 147
    .end local v1    # "grandparent":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "NavUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in manifest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 150
    goto :goto_d
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_8

    const/4 v2, 0x0

    .line 205
    :goto_7
    return-object v2

    .line 199
    :cond_8
    new-instance v3, Landroid/content/ComponentName;

    .line 200
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v3, "target":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "grandparent":Ljava/lang/String;
    if-nez v0, :cond_1c

    .line 203
    invoke-static {v3}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 205
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_1b
    goto :goto_7

    .line 203
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 204
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1b
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v4}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_d

    const/4 v2, 0x0

    .line 178
    :goto_c
    return-object v2

    .line 173
    :cond_d
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v3, "target":Landroid/content/ComponentName;
    invoke-static {p0, v3}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "grandparent":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 176
    invoke-static {v3}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 178
    .local v2, "parentIntent":Landroid/content/Intent;
    :goto_1c
    goto :goto_c

    .line 176
    .end local v2    # "parentIntent":Landroid/content/Intent;
    :cond_1d
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 177
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_1c
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3
    .param p0, "sourceActivity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/app/NavUtils;->getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 221
    :catch_9
    move-exception v0

    .line 223
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "componentName"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 241
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 242
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_16

    .line 243
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 244
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_16

    .line 258
    .end local v3    # "result":Ljava/lang/String;
    :goto_15
    return-object v3

    .line 248
    :cond_16
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1c

    move-object v3, v4

    .line 249
    goto :goto_15

    .line 251
    :cond_1c
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_28

    move-object v3, v4

    .line 253
    goto :goto_15

    .line 255
    :cond_28
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_46

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_46
    move-object v3, v1

    .line 258
    goto :goto_15
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
    .registers 5
    .param p0, "sourceActivity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "upIntent":Landroid/content/Intent;
    if-nez v0, :cond_39

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a parent activity name specified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " element in your manifest?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_39
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4
    .param p0, "sourceActivity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "upIntent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 115
    :goto_9
    return-void

    .line 111
    :cond_a
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 5
    .param p0, "sourceActivity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "targetIntent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_b

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    .line 64
    :goto_a
    return v1

    .line 63
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1f

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_a

    :cond_1f
    const/4 v1, 0x0

    goto :goto_a
.end method

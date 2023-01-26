.class public final Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animation"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x1f40

    const/16 v4, 0xfa0

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    const-string v0, "ScrollRightSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 59
    invoke-static {p0, v1, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    .line 73
    :cond_13
    :goto_13
    return-void

    .line 60
    :cond_14
    const-string v0, "ScrollRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61
    invoke-static {p0, v1, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_13

    .line 62
    :cond_20
    const-string v0, "ScrollRightFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 63
    invoke-static {p0, v1, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_13

    .line 64
    :cond_2c
    const-string v0, "ScrollLeftSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 65
    invoke-static {p0, v2, v5}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_13

    .line 66
    :cond_38
    const-string v0, "ScrollLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 67
    invoke-static {p0, v2, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_13

    .line 68
    :cond_44
    const-string v0, "ScrollLeftFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 69
    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_13

    .line 70
    :cond_50
    const-string v0, "Stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    goto :goto_13
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .prologue
    .line 158
    if-nez p1, :cond_3

    .line 201
    :goto_2
    return-void

    .line 162
    :cond_3
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_12

    .line 163
    const-string v2, "AnimationUtil"

    const-string v3, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 166
    :cond_12
    const/4 v0, 0x0

    .line 167
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 169
    .local v1, "exit":I
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    goto :goto_2

    .line 171
    :pswitch_20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "fadeout"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "hold"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 200
    :goto_40
    :pswitch_40
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    goto :goto_2

    .line 175
    :pswitch_44
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_exit_reverse"

    const-string v4, "anim"

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_enter_reverse"

    const-string v4, "anim"

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 179
    goto :goto_40

    .line 181
    :pswitch_65
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_exit_reverse"

    const-string v4, "anim"

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_enter_reverse"

    const-string v4, "anim"

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 185
    goto :goto_40

    .line 187
    :pswitch_86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_exit_reverse"

    const-string v4, "anim"

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_enter_reverse"

    const-string v4, "anim"

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 191
    goto :goto_40

    .line 169
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_20
        :pswitch_44
        :pswitch_65
        :pswitch_86
        :pswitch_40
    .end packed-switch
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 147
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 148
    return-void
.end method

.method private static ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # Z
    .param p2, "speed"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x2

    .line 34
    if-eqz p1, :cond_38

    const/high16 v10, 0x3f800000    # 1.0f

    .line 35
    .local v10, "sign":F
    :goto_7
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 36
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, -0x1

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 37
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 39
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, v10

    const v3, -0x40cccccd    # -0.7f

    mul-float v4, v10, v3

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 42
    .local v0, "move":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 43
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 44
    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 45
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 46
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    return-void

    .line 34
    .end local v0    # "move":Landroid/view/animation/TranslateAnimation;
    .end local v9    # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v10    # "sign":F
    :cond_38
    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_7
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .prologue
    .line 94
    if-nez p1, :cond_3

    .line 137
    :goto_2
    return-void

    .line 98
    :cond_3
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_12

    .line 99
    const-string v2, "AnimationUtil"

    const-string v3, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 102
    :cond_12
    const/4 v0, 0x0

    .line 103
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 105
    .local v1, "exit":I
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a8

    goto :goto_2

    .line 107
    :pswitch_20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "fadein"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "hold"

    const-string v4, "anim"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 136
    :goto_40
    :pswitch_40
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    goto :goto_2

    .line 111
    :pswitch_44
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_exit"

    const-string v4, "anim"

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "zoom_enter"

    const-string v4, "anim"

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    goto :goto_40

    .line 117
    :pswitch_65
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_exit"

    const-string v4, "anim"

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_enter"

    const-string v4, "anim"

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    goto :goto_40

    .line 123
    :pswitch_86
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_exit"

    const-string v4, "anim"

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "slide_v_enter"

    const-string v4, "anim"

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    goto :goto_40

    .line 105
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_20
        :pswitch_44
        :pswitch_65
        :pswitch_86
        :pswitch_40
    .end packed-switch
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 83
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 84
    return-void
.end method

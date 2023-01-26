.class Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
.super Landroid/widget/VideoView;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizableVideoView"
.end annotation


# instance fields
.field public forcedHeight:I

.field public forcedWidth:I

.field private mFoundMediaPlayer:Ljava/lang/Boolean;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 648
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 649
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 634
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 640
    iput v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 646
    iput v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 650
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    return-void
.end method

.method private onMeasure(III)V
    .registers 22
    .param p1, "specwidth"    # I
    .param p2, "specheight"    # I
    .param p3, "trycount"    # I

    .prologue
    .line 666
    const/4 v11, 0x0

    .line 667
    .local v11, "scaleHeight":Z
    const/4 v12, 0x0

    .line 668
    .local v12, "scaleWidth":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    .line 669
    .local v7, "deviceDensity":F
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Device Density = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AI setting dimensions as:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dimenions from super>>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 673
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 674
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 672
    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v13, 0xb0

    .line 678
    .local v13, "width":I
    const/16 v8, 0x90

    .line 680
    .local v8, "height":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    packed-switch v14, :pswitch_data_274

    .line 714
    const/4 v12, 0x1

    .line 715
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 718
    :cond_90
    :goto_90
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    const/16 v15, -0x3e8

    if-gt v14, v15, :cond_1d5

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v5

    .line 720
    .local v5, "cWidth":I
    if-nez v5, :cond_15e

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ge v0, v14, :cond_15e

    .line 721
    const-string v14, "VideoPlayer...onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Width not stable... trying again (onMeasure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v14}, Lcom/google/appinventor/components/runtime/VideoPlayer;->access$100(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v16, 0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    const/16 v14, 0x64

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    .line 794
    .end local v5    # "cWidth":I
    :goto_f0
    return-void

    .line 682
    :pswitch_f1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    sparse-switch v14, :sswitch_data_27c

    goto :goto_90

    .line 685
    :sswitch_f9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 686
    goto :goto_90

    .line 689
    :sswitch_fe
    :try_start_fe
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I
    :try_end_107
    .catch Ljava/lang/ClassCastException; {:try_start_fe .. :try_end_107} :catch_109
    .catch Ljava/lang/NullPointerException; {:try_start_fe .. :try_end_107} :catch_10d

    move-result v13

    goto :goto_90

    .line 690
    :catch_109
    move-exception v6

    .line 691
    .local v6, "cast":Ljava/lang/ClassCastException;
    const/16 v13, 0xb0

    .line 694
    goto :goto_90

    .line 692
    .end local v6    # "cast":Ljava/lang/ClassCastException;
    :catch_10d
    move-exception v9

    .line 693
    .local v9, "nullParent":Ljava/lang/NullPointerException;
    const/16 v13, 0xb0

    goto :goto_90

    .line 698
    .end local v9    # "nullParent":Ljava/lang/NullPointerException;
    :pswitch_111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_90

    .line 700
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    .line 701
    const-string v14, "VideoPlayer.onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got width from MediaPlayer>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catch Ljava/lang/NullPointerException; {:try_start_11b .. :try_end_13b} :catch_13d

    goto/16 :goto_90

    .line 703
    :catch_13d
    move-exception v10

    .line 704
    .local v10, "nullVideoPlayer":Ljava/lang/NullPointerException;
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get MediaPlayer for width:\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 707
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 704
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/16 v13, 0xb0

    .line 709
    goto/16 :goto_90

    .line 731
    .end local v10    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    .restart local v5    # "cWidth":I
    :cond_15e
    add-int/lit16 v14, v13, 0x3e8

    neg-int v14, v14

    mul-int/2addr v14, v5

    div-int/lit8 v14, v14, 0x64

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v13, v14

    .line 736
    .end local v5    # "cWidth":I
    :cond_167
    :goto_167
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    packed-switch v14, :pswitch_data_28a

    .line 765
    const/4 v11, 0x1

    .line 766
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 769
    :cond_173
    :goto_173
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    const/16 v15, -0x3e8

    if-gt v14, v15, :cond_26e

    .line 770
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    .line 771
    .local v4, "cHeight":I
    if-nez v4, :cond_235

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ge v0, v14, :cond_235

    .line 772
    const-string v14, "VideoPlayer...onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Height not stable... trying again (onMeasure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v14}, Lcom/google/appinventor/components/runtime/VideoPlayer;->access$100(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v16, 0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 779
    const/16 v14, 0x64

    const/16 v15, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    goto/16 :goto_f0

    .line 732
    .end local v4    # "cHeight":I
    :cond_1d5
    if-eqz v12, :cond_167

    .line 733
    int-to-float v14, v13

    mul-float/2addr v14, v7

    float-to-int v13, v14

    goto :goto_167

    .line 738
    :pswitch_1db
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    sparse-switch v14, :sswitch_data_292

    goto :goto_173

    .line 741
    :sswitch_1e3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 742
    goto :goto_173

    .line 750
    :pswitch_1e8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_173

    .line 752
    :try_start_1f2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v8

    .line 753
    const-string v14, "VideoPlayer.onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got height from MediaPlayer>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_212
    .catch Ljava/lang/NullPointerException; {:try_start_1f2 .. :try_end_212} :catch_214

    goto/16 :goto_173

    .line 755
    :catch_214
    move-exception v10

    .line 756
    .restart local v10    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    const-string v14, "VideoPlayer..onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get MediaPlayer for height:\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 759
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 756
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/16 v8, 0x90

    .line 761
    goto/16 :goto_173

    .line 782
    .end local v10    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    .restart local v4    # "cHeight":I
    :cond_235
    add-int/lit16 v14, v8, 0x3e8

    neg-int v14, v14

    mul-int/2addr v14, v4

    div-int/lit8 v14, v14, 0x64

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v8, v14

    .line 789
    .end local v4    # "cHeight":I
    :cond_23e
    :goto_23e
    const-string v14, "VideoPlayer.onMeasure"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Setting dimensions to:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-interface {v14, v13, v8}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 793
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    goto/16 :goto_f0

    .line 783
    :cond_26e
    if-eqz v11, :cond_23e

    .line 784
    int-to-float v14, v8

    mul-float/2addr v14, v7

    float-to-int v8, v14

    goto :goto_23e

    .line 680
    :pswitch_data_274
    .packed-switch -0x2
        :pswitch_f1
        :pswitch_111
    .end packed-switch

    .line 682
    :sswitch_data_27c
    .sparse-switch
        -0x80000000 -> :sswitch_f9
        0x0 -> :sswitch_fe
        0x40000000 -> :sswitch_f9
    .end sparse-switch

    .line 736
    :pswitch_data_28a
    .packed-switch -0x2
        :pswitch_1db
        :pswitch_1e8
    .end packed-switch

    .line 738
    :sswitch_data_292
    .sparse-switch
        -0x80000000 -> :sswitch_1e3
        0x40000000 -> :sswitch_1e3
    .end sparse-switch
.end method


# virtual methods
.method public changeVideoSize(II)V
    .registers 3
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 800
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 801
    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 803
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 804
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 805
    return-void
.end method

.method public invalidateMediaPlayer(Z)V
    .registers 3
    .param p1, "triggerRedraw"    # Z

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 814
    if-eqz p1, :cond_12

    .line 815
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 816
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 818
    :cond_12
    return-void
.end method

.method public onMeasure(II)V
    .registers 4
    .param p1, "specwidth"    # I
    .param p2, "specheight"    # I

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    .line 654
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;Z)V
    .registers 4
    .param p1, "newMediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "triggerRedraw"    # Z

    .prologue
    .line 822
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 823
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 825
    if-eqz p2, :cond_11

    .line 826
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 827
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 829
    :cond_11
    return-void
.end method

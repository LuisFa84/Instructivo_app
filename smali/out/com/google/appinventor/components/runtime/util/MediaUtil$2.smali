.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$2;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$desiredHeight:I

.field final synthetic val$desiredWidth:I

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$mediaPath:Ljava/lang/String;

.field final synthetic val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;II)V
    .registers 7

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput p5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    iput p6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 466
    const-string v16, "MediaUtil"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mediaPath = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v7, 0x0

    .line 468
    .local v7, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 469
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x1000

    move/from16 v0, v16

    new-array v4, v0, [B

    .line 473
    .local v4, "buf":[B
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$000(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v7

    .line 474
    :goto_40
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "read":I
    if-lez v11, :cond_7a

    .line 475
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4d
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_2a .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4d} :catch_142
    .catchall {:try_start_2a .. :try_end_4d} :catchall_1cc

    goto :goto_40

    .line 478
    .end local v11    # "read":I
    :catch_4e
    move-exception v6

    .line 479
    .local v6, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PERMISSION_DENIED:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_1cc

    .line 494
    if-eqz v7, :cond_74

    .line 496
    :try_start_71
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_134

    .line 502
    .end local v6    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :cond_74
    :goto_74
    const/4 v7, 0x0

    .line 504
    :try_start_75
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_32d

    .line 508
    :goto_78
    const/4 v3, 0x0

    .line 568
    :cond_79
    :goto_79
    return-void

    .line 477
    .restart local v11    # "read":I
    :cond_7a
    :try_start_7a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7d
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_7a .. :try_end_7d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_142
    .catchall {:try_start_7a .. :try_end_7d} :catchall_1cc

    move-result-object v4

    .line 494
    if-eqz v7, :cond_83

    .line 496
    :try_start_80
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_126

    .line 502
    :cond_83
    :goto_83
    const/4 v7, 0x0

    .line 504
    :try_start_84
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_32a

    .line 508
    :goto_87
    const/4 v3, 0x0

    .line 510
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 511
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    array-length v11, v4

    .line 512
    const/4 v4, 0x0

    .line 514
    :try_start_8f
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$100(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 516
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 517
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v17, 0x0

    .line 518
    move-object/from16 v0, v17

    invoke-static {v2, v0, v9}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->access$200(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 532
    .local v10, "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    move/from16 v16, v0

    if-lez v16, :cond_1e5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    move/from16 v16, v0

    if-ltz v16, :cond_1e5

    const/4 v8, 0x1

    .line 534
    .local v8, "needsResize":Z
    :goto_e8
    if-nez v8, :cond_1e8

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v16

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_1e8

    .line 535
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_111} :catch_2e8
    .catchall {:try_start_8f .. :try_end_111} :catchall_316

    .line 559
    if-eqz v2, :cond_79

    .line 561
    :try_start_113
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_118

    goto/16 :goto_79

    .line 562
    :catch_118
    move-exception v6

    .line 564
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_79

    .line 497
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "needsResize":Z
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_126
    move-exception v6

    .line 499
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_83

    .line 497
    .end local v11    # "read":I
    .local v6, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :catch_134
    move-exception v6

    .line 499
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_74

    .line 481
    .end local v6    # "e":Ljava/io/IOException;
    :catch_142
    move-exception v6

    .line 482
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-object/from16 v16, v0

    sget-object v17, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_19b

    .line 484
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v17, v0

    .line 485
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1080066

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 487
    .local v5, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_182
    .catchall {:try_start_143 .. :try_end_182} :catchall_1cc

    .line 494
    if-eqz v7, :cond_187

    .line 496
    :try_start_184
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_18e

    .line 502
    :cond_187
    :goto_187
    const/4 v7, 0x0

    .line 504
    :try_start_188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_330

    .line 508
    :goto_18b
    const/4 v3, 0x0

    .line 488
    goto/16 :goto_79

    .line 497
    :catch_18e
    move-exception v6

    .line 499
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_187

    .line 490
    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_19b
    :try_start_19b
    const-string v16, "MediaUtil"

    const-string v17, "IOException reading file."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_19b .. :try_end_1b3} :catchall_1cc

    .line 494
    if-eqz v7, :cond_1b8

    .line 496
    :try_start_1b5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1bf

    .line 502
    :cond_1b8
    :goto_1b8
    const/4 v7, 0x0

    .line 504
    :try_start_1b9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_333

    .line 508
    :goto_1bc
    const/4 v3, 0x0

    .line 492
    goto/16 :goto_79

    .line 497
    :catch_1bf
    move-exception v6

    .line 499
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b8

    .line 494
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1cc
    move-exception v16

    if-eqz v7, :cond_1d2

    .line 496
    :try_start_1cf
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1d8

    .line 502
    :cond_1d2
    :goto_1d2
    const/4 v7, 0x0

    .line 504
    :try_start_1d3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d6} :catch_336

    .line 508
    :goto_1d6
    const/4 v3, 0x0

    throw v16

    .line 497
    :catch_1d8
    move-exception v6

    .line 499
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v17, "MediaUtil"

    const-string v18, "Unexpected error on close"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d2

    .line 533
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v11    # "read":I
    :cond_1e5
    const/4 v8, 0x0

    goto/16 :goto_e8

    .line 538
    .restart local v8    # "needsResize":Z
    :cond_1e8
    :try_start_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    move/from16 v16, v0

    if-lez v16, :cond_2dc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    move/from16 v16, v0

    .line 539
    :goto_200
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v15, v0

    .line 540
    .local v15, "scaledWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    move/from16 v16, v0

    if-lez v16, :cond_2e2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    move/from16 v16, v0

    .line 541
    :goto_222
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v14, v0

    .line 542
    .local v14, "scaledHeight":I
    const-string v16, "MediaUtil"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "form.deviceDensity() = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v16, "MediaUtil"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 544
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 543
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v16, "MediaUtil"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 546
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 545
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v15, v14, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 549
    .local v12, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    .line 550
    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 551
    .local v13, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 552
    const/4 v10, 0x0

    .line 553
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_2c7} :catch_2e8
    .catchall {:try_start_1e8 .. :try_end_2c7} :catchall_316

    .line 559
    if-eqz v2, :cond_79

    .line 561
    :try_start_2c9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2cc
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2cc} :catch_2ce

    goto/16 :goto_79

    .line 562
    :catch_2ce
    move-exception v6

    .line 564
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_79

    .line 539
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "scaledHeight":I
    .end local v15    # "scaledWidth":I
    :cond_2dc
    :try_start_2dc
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v16

    goto/16 :goto_200

    .line 541
    .restart local v15    # "scaledWidth":I
    :cond_2e2
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2dc .. :try_end_2e5} :catch_2e8
    .catchall {:try_start_2dc .. :try_end_2e5} :catchall_316

    move-result v16

    goto/16 :goto_222

    .line 555
    .end local v8    # "needsResize":Z
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v15    # "scaledWidth":I
    :catch_2e8
    move-exception v6

    .line 556
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2e9
    const-string v16, "MediaUtil"

    const-string v17, "Exception while loading media."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_301
    .catchall {:try_start_2e9 .. :try_end_301} :catchall_316

    .line 559
    if-eqz v2, :cond_79

    .line 561
    :try_start_303
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_306
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_306} :catch_308

    goto/16 :goto_79

    .line 562
    :catch_308
    move-exception v6

    .line 564
    .local v6, "e":Ljava/io/IOException;
    const-string v16, "MediaUtil"

    const-string v17, "Unexpected error on close"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_79

    .line 559
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_316
    move-exception v16

    if-eqz v2, :cond_31c

    .line 561
    :try_start_319
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_31c
    .catch Ljava/io/IOException; {:try_start_319 .. :try_end_31c} :catch_31d

    .line 565
    :cond_31c
    :goto_31c
    throw v16

    .line 562
    :catch_31d
    move-exception v6

    .line 564
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v17, "MediaUtil"

    const-string v18, "Unexpected error on close"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31c

    .line 505
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    :catch_32a
    move-exception v16

    goto/16 :goto_87

    .end local v11    # "read":I
    :catch_32d
    move-exception v16

    goto/16 :goto_78

    .restart local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_330
    move-exception v16

    goto/16 :goto_18b

    .end local v5    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_333
    move-exception v16

    goto/16 :goto_1bc

    .end local v6    # "e":Ljava/io/IOException;
    :catch_336
    move-exception v17

    goto/16 :goto_1d6
.end method

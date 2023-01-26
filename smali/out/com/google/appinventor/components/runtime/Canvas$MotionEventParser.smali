.class Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private isDrag:Z

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 233
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    .line 261
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 262
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 265
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 266
    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 270
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 272
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method parse(Landroid/view/MotionEvent;)V
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v11

    .line 276
    .local v11, "width":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v0

    .line 282
    .local v0, "height":I
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 283
    .local v12, "x":F
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 287
    .local v13, "y":F
    new-instance v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    const/4 v3, 0x0

    float-to-int v4, v12

    add-int/lit8 v4, v4, -0xc

    .line 288
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v2, v3

    const/4 v4, 0x0

    float-to-int v5, v13

    add-int/lit8 v5, v5, -0xc

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    add-int/lit8 v6, v11, -0x1

    float-to-int v7, v12

    add-int/lit8 v7, v7, 0xc

    .line 290
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v6, v6

    add-int/lit8 v8, v0, -0x1

    float-to-int v9, v13

    add-int/lit8 v9, v9, 0xc

    .line 291
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-double v8, v8

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 293
    .local v1, "rect":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_22a

    .line 397
    :cond_6a
    :goto_6a
    return-void

    .line 295
    :pswitch_6b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 296
    iput v12, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 297
    iput v13, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 298
    iput v12, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 299
    iput v13, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 300
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 301
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 302
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_88
    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 303
    .local v2, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 304
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v2, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    goto :goto_88

    .line 308
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_b3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    goto :goto_6a

    .line 313
    :pswitch_bd
    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_dd

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_dd

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_dd

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_f5

    .line 314
    :cond_dd
    const-string v3, "Canvas"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_f5
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    if-nez v3, :cond_11f

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    sub-float v3, v12, v3

    .line 320
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$100(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11f

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    sub-float v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->access$100(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_6a

    .line 324
    :cond_11f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 325
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 329
    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-lez v3, :cond_139

    int-to-float v3, v11

    cmpl-float v3, v12, v3

    if-gtz v3, :cond_139

    const/4 v3, 0x0

    cmpg-float v3, v13, v3

    if-lez v3, :cond_139

    int-to-float v3, v0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_141

    :cond_139
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 330
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$200(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 336
    :cond_141
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14b
    :goto_14b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_177

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 337
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14b

    .line 338
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_14b

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_14b

    .line 339
    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_14b

    .line 340
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14b

    .line 345
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_177
    const/4 v10, 0x0

    .line 346
    .local v10, "handled":Z
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17e
    :goto_17e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 347
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_17e

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 348
    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v7, v12

    move v8, v13

    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    .line 349
    const/4 v10, 0x1

    goto :goto_17e

    .line 354
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_1a5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v8, v12

    move v9, v13

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 355
    iput v12, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 356
    iput v13, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_6a

    .line 363
    .end local v10    # "handled":Z
    :pswitch_1ba
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    if-nez v3, :cond_204

    .line 365
    const/4 v10, 0x0

    .line 366
    .restart local v10    # "handled":Z
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c5
    :goto_1c5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 367
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_1c5

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 368
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 369
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 370
    const/4 v10, 0x1

    goto :goto_1c5

    .line 374
    .end local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_1e5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3, v12, v13, v10}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    .line 387
    .end local v10    # "handled":Z
    :cond_1ea
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3, v12, v13}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 390
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 391
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 392
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 393
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 394
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_6a

    .line 377
    :cond_204
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20a
    :goto_20a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Sprite;

    .line 378
    .restart local v2    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_20a

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_20a

    .line 379
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 380
    invoke-virtual {v2, v12, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    goto :goto_20a

    .line 293
    nop

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_1ba
        :pswitch_bd
    .end packed-switch
.end method

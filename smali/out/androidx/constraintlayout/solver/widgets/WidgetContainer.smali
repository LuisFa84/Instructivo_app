.class public Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(II)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getBounds(Ljava/util/ArrayList;)Landroidx/constraintlayout/solver/widgets/Rectangle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)",
            "Landroidx/constraintlayout/solver/widgets/Rectangle;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    .line 206
    .local v0, "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c

    .line 229
    :goto_b
    return-object v0

    .line 209
    :cond_c
    const v4, 0x7fffffff

    .line 210
    .local v4, "minX":I
    const/4 v2, 0x0

    .line 211
    .local v2, "maxX":I
    const v5, 0x7fffffff

    .line 212
    .local v5, "minY":I
    const/4 v3, 0x0

    .line 213
    .local v3, "maxY":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "widgetsSize":I
    :goto_19
    if-ge v1, v7, :cond_4c

    .line 214
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 215
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v8

    if-ge v8, v4, :cond_2b

    .line 216
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v4

    .line 218
    :cond_2b
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    if-ge v8, v5, :cond_35

    .line 219
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v5

    .line 221
    :cond_35
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v8

    if-le v8, v2, :cond_3f

    .line 222
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    .line 224
    :cond_3f
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v8

    if-le v8, v3, :cond_49

    .line 225
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v3

    .line 213
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 228
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_4c
    sub-int v8, v2, v4

    sub-int v9, v3, v5

    invoke-virtual {v0, v4, v5, v8, v9}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    goto :goto_b
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 4
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 72
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 74
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .line 75
    .local v0, "container":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 77
    .end local v0    # "container":Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    :cond_14
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 78
    return-void
.end method

.method public varargs add([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 5
    .param p1, "widgets"    # [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 86
    array-length v0, p1

    .line 87
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_c

    .line 88
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_c
    return-void
.end method

.method public findWidget(FF)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "found":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v4

    .line 147
    .local v4, "l":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v7

    .line 148
    .local v7, "t":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getWidth()I

    move-result v9

    add-int v6, v4, v9

    .line 149
    .local v6, "r":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getHeight()I

    move-result v9

    add-int v0, v7, v9

    .line 150
    .local v0, "b":I
    int-to-float v9, v4

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_2a

    int-to-float v9, v6

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_2a

    int-to-float v9, v7

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_2a

    int-to-float v9, v0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_2a

    .line 151
    move-object v2, p0

    .line 153
    :cond_2a
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "mChildrenSize":I
    :goto_31
    if-ge v3, v5, :cond_75

    .line 154
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 155
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v9, v8, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v9, :cond_4b

    .line 156
    check-cast v8, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v8, p1, p2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->findWidget(FF)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 157
    .local v1, "f":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v1, :cond_48

    .line 158
    move-object v2, v1

    .line 153
    .end local v1    # "f":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 161
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_4b
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v4

    .line 162
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v7

    .line 163
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int v6, v4, v9

    .line 164
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    add-int v0, v7, v9

    .line 165
    int-to-float v9, v4

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_48

    int-to-float v9, v6

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_48

    int-to-float v9, v7

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_48

    int-to-float v9, v0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_48

    .line 166
    move-object v2, v8

    goto :goto_48

    .line 170
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_75
    return-object v2
.end method

.method public findWidgets(IIII)Ljava/util/ArrayList;
    .registers 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    .line 185
    .local v0, "area":Landroidx/constraintlayout/solver/widgets/Rectangle;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 186
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "mChildrenSize":I
    :goto_14
    if-ge v3, v4, :cond_42

    .line 187
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 188
    .local v5, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    new-instance v1, Landroidx/constraintlayout/solver/widgets/Rectangle;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/Rectangle;-><init>()V

    .line 189
    .local v1, "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v6

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v7

    .line 190
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    .line 189
    invoke-virtual {v1, v6, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 191
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Rectangle;->intersects(Landroidx/constraintlayout/solver/widgets/Rectangle;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 192
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 195
    .end local v1    # "bounds":Landroidx/constraintlayout/solver/widgets/Rectangle;
    .end local v5    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_42
    return-object v2
.end method

.method public getChildren()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRootConstraintContainer()Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .registers 5

    .prologue
    .line 117
    move-object v1, p0

    .line 118
    .local v1, "item":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 119
    .local v2, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v0, 0x0

    .line 120
    .local v0, "container":Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_d

    move-object v0, p0

    .line 121
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 123
    :cond_d
    :goto_d
    if-eqz v2, :cond_1c

    .line 124
    move-object v1, v2

    .line 125
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 126
    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_d

    move-object v0, v1

    .line 127
    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    goto :goto_d

    .line 130
    :cond_1c
    return-object v0
.end method

.method public layout()V
    .registers 5

    .prologue
    .line 277
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->updateDrawPosition()V

    .line 278
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 288
    :cond_7
    return-void

    .line 281
    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_7

    .line 283
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 284
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v3, :cond_22

    .line 285
    check-cast v2, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    .line 282
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 3
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .prologue
    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 100
    return-void
.end method

.method public removeAllChildren()V
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 64
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .registers 6
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 293
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 295
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 296
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 298
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1a
    return-void
.end method

.method public setOffset(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 246
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 247
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_22

    .line 248
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 249
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getRootX()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getRootY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 251
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_22
    return-void
.end method

.method public updateDrawPosition()V
    .registers 6

    .prologue
    .line 259
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 260
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 271
    :cond_7
    return-void

    .line 263
    :cond_8
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_7

    .line 265
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 266
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawX()I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->getDrawY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOffset(II)V

    .line 267
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v3, :cond_2b

    .line 268
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateDrawPosition()V

    .line 264
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

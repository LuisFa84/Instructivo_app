.class public abstract Landroidx/cursoradapter/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;,
        Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mCursor:Landroid/database/Cursor;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mDataSetObserver:Landroid/database/DataSetObserver;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mDataValid:Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mRowIDColumn:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    if-eqz p3, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    return-void

    .line 151
    :cond_a
    const/4 v0, 0x2

    goto :goto_6
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 335
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 336
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_9
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 387
    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 217
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 219
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 280
    iget-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_1d

    .line 281
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 283
    if-nez p2, :cond_1b

    .line 284
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, "v":Landroid/view/View;
    :goto_13
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 291
    .end local v0    # "v":Landroid/view/View;
    :goto_1a
    return-object v0

    .line 286
    :cond_1b
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_13

    .line 291
    .end local v0    # "v":Landroid/view/View;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    if-nez v0, :cond_b

    .line 427
    new-instance v0, Landroidx/cursoradapter/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    .line 429
    :cond_b
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 228
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 229
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 230
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 232
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 241
    iget-boolean v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    .line 242
    iget-object v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 243
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 248
    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    iget-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-nez v1, :cond_c

    .line 263
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_c
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 266
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_2d
    if-nez p2, :cond_3f

    .line 270
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "v":Landroid/view/View;
    :goto_37
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 275
    return-object v0

    .line 272
    .end local v0    # "v":Landroid/view/View;
    :cond_3f
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_37
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 177
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_45

    .line 178
    or-int/lit8 p3, p3, 0x2

    .line 179
    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    .line 183
    :goto_b
    if-eqz p2, :cond_48

    .line 184
    .local v0, "cursorPresent":Z
    :goto_d
    iput-object p2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 185
    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 186
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 187
    if-eqz v0, :cond_4a

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1b
    iput v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 188
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 189
    new-instance v1, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    iput-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 190
    new-instance v1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v1, p0}, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    iput-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 196
    :goto_30
    if-eqz v0, :cond_44

    .line 197
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_3b
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 200
    :cond_44
    return-void

    .line 181
    .end local v0    # "cursorPresent":Z
    :cond_45
    iput-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_b

    :cond_48
    move v0, v1

    .line 183
    goto :goto_d

    .line 187
    .restart local v0    # "cursorPresent":Z
    :cond_4a
    const/4 v1, -0x1

    goto :goto_1b

    .line 192
    :cond_4c
    iput-object v3, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 193
    iput-object v3, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_30
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    if-eqz p3, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 174
    return-void

    .line 173
    :cond_7
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 314
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .registers 2

    .prologue
    .line 469
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 471
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 473
    :cond_18
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 417
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 418
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 421
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 458
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 459
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 351
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_6

    .line 352
    const/4 v0, 0x0

    .line 373
    :goto_5
    return-object v0

    .line 354
    :cond_6
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 355
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1c

    .line 356
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 357
    :cond_13
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 359
    :cond_1c
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 360
    if-eqz p1, :cond_41

    .line 361
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    :cond_29
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 363
    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 366
    invoke-virtual {p0}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 368
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 369
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 371
    invoke-virtual {p0}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_5
.end method

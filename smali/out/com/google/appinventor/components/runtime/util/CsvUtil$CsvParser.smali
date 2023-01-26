.class Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
.super Ljava/lang/Object;
.source "CsvUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CsvParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

.field private final buf:[C

.field private cellLength:I

.field private delimitedCellLength:I

.field private final in:Ljava/io/Reader;

.field private lastException:Ljava/lang/Exception;

.field private limit:I

.field private opened:Z

.field private pos:I

.field private previouslyRead:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, -0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "\"\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    const/16 v0, 0x2800

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    .line 130
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 138
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    .line 150
    return-void
.end method

.method private checkedIndex(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 310
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v0, :cond_5

    .end local p1    # "i":I
    :goto_4
    return p1

    .restart local p1    # "i":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    goto :goto_4
.end method

.method private compact(I)I
    .registers 8
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 224
    .local v0, "oldPos":I
    iput v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 225
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int v1, v2, v0

    .line 226
    .local v1, "toMove":I
    if-lez v1, :cond_12

    .line 227
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_12
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    .line 230
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    .line 231
    sub-int v2, p1, v0

    return v2
.end method

.method private fill()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 238
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int v2, v3, v4

    .line 239
    .local v2, "toFill":I
    :goto_8
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    if-eqz v3, :cond_2c

    if-lez v2, :cond_2c

    .line 241
    :try_start_e
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 242
    .local v1, "n":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_25

    .line 243
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_8

    .line 248
    .end local v1    # "n":I
    :catch_1f
    move-exception v0

    .line 249
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 250
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    goto :goto_8

    .line 245
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "n":I
    :cond_25
    :try_start_25
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_1f

    .line 246
    sub-int/2addr v2, v1

    goto :goto_8

    .line 253
    .end local v1    # "n":I
    :cond_2c
    return-void
.end method

.method private findDelimOrEnd(I)Z
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 278
    :goto_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v2, :cond_d

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v2, :cond_49

    .line 279
    :cond_d
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v2, v2, p1

    sparse-switch v2, :sswitch_data_52

    .line 295
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 297
    const/4 v1, 0x0

    .line 301
    :goto_1e
    return v1

    .line 287
    :sswitch_1f
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .line 288
    .local v0, "j":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_33

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .end local v0    # "j":I
    :cond_33
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    goto :goto_1e

    .line 292
    :sswitch_3a
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    goto :goto_1e

    .line 278
    :sswitch_46
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 300
    :cond_49
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    goto :goto_1e

    .line 279
    nop

    :sswitch_data_52
    .sparse-switch
        0x9 -> :sswitch_46
        0xa -> :sswitch_3a
        0xd -> :sswitch_1f
        0x20 -> :sswitch_46
        0x2c -> :sswitch_3a
    .end sparse-switch
.end method

.method private findUnescapedEndQuote(I)Z
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/16 v1, 0x22

    .line 260
    :goto_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v0, :cond_e

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v0, :cond_32

    .line 261
    :cond_e
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    if-ne v0, v1, :cond_2f

    .line 262
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result p1

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-eq p1, v0, :cond_24

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    if-eq v0, v1, :cond_2f

    .line 264
    :cond_24
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 265
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findDelimOrEnd(I)Z

    move-result v0

    .line 270
    :goto_2e
    return v0

    .line 260
    :cond_2f
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 269
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Syntax Error. unclosed quoted cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 270
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private findUnquotedCellEnd(I)Z
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 314
    :goto_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v2, :cond_d

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result p1

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v2, :cond_50

    .line 315
    :cond_d
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v2, v2, p1

    sparse-switch v2, :sswitch_data_5a

    .line 314
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 318
    :sswitch_17
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v2, p1, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 319
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 334
    :goto_23
    return v1

    .line 324
    :sswitch_24
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v2, p1, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 325
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .line 326
    .local v0, "j":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3e

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .end local v0    # "j":I
    :cond_3e
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    goto :goto_23

    .line 329
    :sswitch_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Syntax Error: quote in unquoted cell"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 330
    const/4 v1, 0x0

    goto :goto_23

    .line 333
    :cond_50
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    goto :goto_23

    .line 315
    :sswitch_data_5a
    .sparse-switch
        0xa -> :sswitch_17
        0xd -> :sswitch_24
        0x22 -> :sswitch_45
        0x2c -> :sswitch_17
    .end sparse-switch
.end method

.method private indexAfterCompactionAndFilling(I)I
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 211
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    if-lez v0, :cond_8

    .line 212
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->compact(I)I

    move-result p1

    .line 214
    :cond_8
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    .line 215
    return p1
.end method

.method private lookingAtCell()Z
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnescapedEndQuote(I)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnquotedCellEnd(I)Z

    move-result v0

    goto :goto_12
.end method


# virtual methods
.method public getCharPosition()J
    .registers 5

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-nez v0, :cond_7

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    .line 167
    :cond_7
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_17

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_1f

    :cond_17
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x2c

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 177
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v7, v7, v8

    const/16 v8, 0x22

    if-eq v7, v8, :cond_6f

    .line 180
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v9, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v10, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_24
    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    if-lez v7, :cond_92

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v9, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-char v7, v7, v8

    if-ne v7, v11, :cond_92

    move v4, v5

    .line 186
    .local v4, "trailingComma":Z
    :goto_36
    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 187
    const/4 v7, -0x1

    iput v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 188
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    .line 189
    .local v2, "oldLimit":I
    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v7, v8, :cond_54

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v7}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v7

    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v7, v8, :cond_94

    :cond_54
    move v1, v5

    .line 195
    .local v1, "haveMoreData":Z
    :goto_55
    if-nez v1, :cond_64

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    add-int/lit8 v8, v2, -0x1

    aget-char v7, v7, v8

    if-ne v7, v11, :cond_64

    .line 196
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_64
    if-eqz v4, :cond_6e

    if-eqz v1, :cond_6e

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v7

    if-nez v7, :cond_8

    .line 199
    :cond_6e
    return-object v3

    .line 182
    .end local v1    # "haveMoreData":Z
    .end local v2    # "oldLimit":I
    .end local v4    # "trailingComma":Z
    :cond_6f
    new-instance v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/lit8 v9, v9, -0x2

    invoke-direct {v0, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 183
    .local v0, "cell":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .end local v0    # "cell":Ljava/lang/String;
    :cond_92
    move v4, v6

    .line 185
    goto :goto_36

    .restart local v2    # "oldLimit":I
    .restart local v4    # "trailingComma":Z
    :cond_94
    move v1, v6

    .line 189
    goto :goto_55
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)V
    .registers 10
    .param p1, "charPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_19

    .line 154
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    const/4 v3, 0x0

    long-to-int v4, p1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 155
    .local v0, "n":I
    if-gez v0, :cond_1a

    .line 161
    .end local v0    # "n":I
    :cond_19
    return-void

    .line 158
    .restart local v0    # "n":I
    :cond_1a
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    .line 159
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 160
    goto :goto_0
.end method

.method public throwAnyProblem()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_7

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    throw v0

    .line 345
    :cond_7
    return-void
.end method

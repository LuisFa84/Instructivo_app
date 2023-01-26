.class public Lgnu/bytecode/StackMapTableAttr;
.super Lgnu/bytecode/MiscAttr;
.source "StackMapTableAttr.java"


# static fields
.field public static compressStackMapTable:Z


# instance fields
.field countLocals:I

.field countStack:I

.field encodedLocals:[I

.field encodedStack:[I

.field numEntries:I

.field prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 23
    const-string v0, "StackMapTable"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 24
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 25
    return-void
.end method

.method public constructor <init>([BLgnu/bytecode/CodeAttr;)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string v0, "StackMapTable"

    array-length v1, p1

    invoke-direct {p0, v0, p1, v2, v1}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 31
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 32
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 33
    return-void
.end method

.method static reallocBuffer([II)[I
    .registers 5
    .param p0, "buffer"    # [I
    .param p1, "needed"    # I

    .prologue
    const/4 v2, 0x0

    .line 258
    if-nez p0, :cond_8

    .line 259
    add-int/lit8 v1, p1, 0xa

    new-array p0, v1, [I

    .line 266
    :cond_7
    :goto_7
    return-object p0

    .line 260
    :cond_8
    array-length v1, p0

    if-le p1, v1, :cond_7

    .line 262
    add-int/lit8 v1, p1, 0xa

    new-array v0, v1, [I

    .line 263
    .local v0, "tmp":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object p0, v0

    goto :goto_7
.end method


# virtual methods
.method public emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V
    .registers 27
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    .line 100
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int/lit8 v13, v20, -0x1

    .line 101
    .local v13, "offset_delta":I
    const/4 v11, 0x0

    .line 102
    .local v11, "matchingLocals":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v15, v0

    .line 103
    .local v15, "rawLocalsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v15, v0, :cond_5f

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v15

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 106
    .local v18, "tmp":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 109
    .end local v18    # "tmp":[I
    :cond_5f
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .line 110
    .local v16, "rawStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_b1

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v16

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 113
    .restart local v18    # "tmp":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 116
    .end local v18    # "tmp":[I
    :cond_b1
    const/16 v19, 0x0

    .line 117
    .local v19, "unchangedLocals":I
    const/4 v5, 0x0

    .line 118
    .local v5, "curLocalsCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    move v6, v5

    .end local v5    # "curLocalsCount":I
    .local v6, "curLocalsCount":I
    :goto_b6
    if-ge v9, v15, :cond_27c

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    aget v14, v20, v6

    .line 121
    .local v14, "prevType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    aget-object v20, v20, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 123
    .local v12, "nextType":I
    if-ne v14, v12, :cond_da

    move/from16 v0, v19

    if-ne v0, v6, :cond_da

    .line 124
    add-int/lit8 v19, v6, 0x1

    .line 125
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "curLocalsCount":I
    .restart local v5    # "curLocalsCount":I
    aput v12, v20, v6

    .line 126
    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v12, v0, :cond_f0

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v12, v0, :cond_f2

    .line 127
    :cond_f0
    add-int/lit8 v9, v9, 0x1

    .line 118
    :cond_f2
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5    # "curLocalsCount":I
    .restart local v6    # "curLocalsCount":I
    goto :goto_b6

    .line 129
    .end local v6    # "curLocalsCount":I
    .end local v12    # "nextType":I
    .end local v14    # "prevType":I
    .restart local v5    # "curLocalsCount":I
    :goto_f6
    if-lez v5, :cond_107

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v5, -0x1

    aget v20, v20, v21

    if-nez v20, :cond_107

    .line 130
    add-int/lit8 v5, v5, -0x1

    goto :goto_f6

    .line 131
    :cond_107
    const/4 v7, 0x0

    .line 132
    .local v7, "curStackCount":I
    const/4 v9, 0x0

    move v8, v7

    .end local v7    # "curStackCount":I
    .local v8, "curStackCount":I
    :goto_10a
    move/from16 v0, v16

    if-ge v9, v0, :cond_148

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    aget v14, v20, v8

    .line 135
    .restart local v14    # "prevType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    aget-object v17, v20, v9

    .line 136
    .local v17, "t":Lgnu/bytecode/Type;
    sget-object v20, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_130

    .line 137
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    add-int/lit8 v9, v9, 0x1

    aget-object v17, v20, v9

    .line 138
    :cond_130
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 139
    .restart local v12    # "nextType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "curStackCount":I
    .restart local v7    # "curStackCount":I
    aput v12, v20, v8

    .line 132
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7    # "curStackCount":I
    .restart local v8    # "curStackCount":I
    goto :goto_10a

    .line 141
    .end local v12    # "nextType":I
    .end local v14    # "prevType":I
    .end local v17    # "t":Lgnu/bytecode/Type;
    :cond_148
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v20, v0

    sub-int v10, v5, v20

    .line 142
    .local v10, "localsDelta":I
    sget-boolean v20, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v20, :cond_1cf

    if-nez v10, :cond_1cf

    move/from16 v0, v19

    if-ne v5, v0, :cond_1cf

    const/16 v20, 0x1

    move/from16 v0, v20

    if-gt v8, v0, :cond_1cf

    .line 145
    if-nez v8, :cond_19f

    .line 147
    const/16 v20, 0x3f

    move/from16 v0, v20

    if-gt v13, v0, :cond_190

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 195
    :cond_16d
    :goto_16d
    move-object/from16 v0, p0

    iput v5, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 196
    move-object/from16 v0, p0

    iput v8, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 197
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 199
    return-void

    .line 151
    :cond_190
    const/16 v20, 0xfb

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_16d

    .line 157
    :cond_19f
    const/16 v20, 0x3f

    move/from16 v0, v20

    if-gt v13, v0, :cond_1c0

    .line 158
    add-int/lit8 v20, v13, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 164
    :goto_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    goto :goto_16d

    .line 161
    :cond_1c0
    const/16 v20, 0xf7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_1ae

    .line 167
    :cond_1cf
    sget-boolean v20, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v20, :cond_1fb

    if-nez v8, :cond_1fb

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v5, v0, :cond_1fb

    move/from16 v0, v19

    if-ne v0, v5, :cond_1fb

    const/16 v20, -0x3

    move/from16 v0, v20

    if-lt v10, v0, :cond_1fb

    .line 172
    add-int/lit16 v0, v10, 0xfb

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto/16 :goto_16d

    .line 175
    :cond_1fb
    sget-boolean v20, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v20, :cond_23a

    if-nez v8, :cond_23a

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_23a

    const/16 v20, 0x3

    move/from16 v0, v20

    if-gt v10, v0, :cond_23a

    .line 179
    add-int/lit16 v0, v10, 0xfb

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 180
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 181
    const/4 v9, 0x0

    :goto_224
    if-ge v9, v10, :cond_16d

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    add-int v21, v19, v9

    aget v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 181
    add-int/lit8 v9, v9, 0x1

    goto :goto_224

    .line 186
    :cond_23a
    const/16 v20, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 189
    const/4 v9, 0x0

    :goto_24e
    if-ge v9, v5, :cond_262

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 189
    add-int/lit8 v9, v9, 0x1

    goto :goto_24e

    .line 191
    :cond_262
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 192
    const/4 v9, 0x0

    :goto_268
    if-ge v9, v8, :cond_16d

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v20, v0

    aget v20, v20, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 192
    add-int/lit8 v9, v9, 0x1

    goto :goto_268

    .end local v5    # "curLocalsCount":I
    .end local v8    # "curStackCount":I
    .end local v10    # "localsDelta":I
    .restart local v6    # "curLocalsCount":I
    :cond_27c
    move v5, v6

    .end local v6    # "curLocalsCount":I
    .restart local v5    # "curLocalsCount":I
    goto/16 :goto_f6
.end method

.method emitVerificationType(I)V
    .registers 4
    .param p1, "encoding"    # I

    .prologue
    .line 48
    and-int/lit16 v0, p1, 0xff

    .line 49
    .local v0, "tag":I
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 50
    const/4 v1, 0x7

    if-lt v0, v1, :cond_d

    .line 51
    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 52
    :cond_d
    return-void
.end method

.method encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I
    .registers 7
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .prologue
    const/4 v2, 0x0

    .line 57
    if-nez p1, :cond_4

    .line 90
    :goto_3
    return v2

    .line 59
    :cond_4
    instance-of v3, p1, Lgnu/bytecode/UninitializedType;

    if-eqz v3, :cond_18

    move-object v1, p1

    .line 61
    check-cast v1, Lgnu/bytecode/UninitializedType;

    .line 62
    .local v1, "utype":Lgnu/bytecode/UninitializedType;
    iget-object v0, v1, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    .line 63
    .local v0, "label":Lgnu/bytecode/Label;
    if-nez v0, :cond_11

    .line 64
    const/4 v2, 0x6

    goto :goto_3

    .line 66
    :cond_11
    iget v2, v0, Lgnu/bytecode/Label;->position:I

    shl-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x8

    goto :goto_3

    .line 70
    .end local v0    # "label":Lgnu/bytecode/Label;
    .end local v1    # "utype":Lgnu/bytecode/UninitializedType;
    :cond_18
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 71
    instance-of v3, p1, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_32

    .line 73
    iget-object v3, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_4a

    goto :goto_3

    .line 76
    :sswitch_2a
    const/4 v2, 0x1

    goto :goto_3

    .line 78
    :sswitch_2c
    const/4 v2, 0x4

    goto :goto_3

    .line 80
    :sswitch_2e
    const/4 v2, 0x2

    goto :goto_3

    .line 82
    :sswitch_30
    const/4 v2, 0x3

    goto :goto_3

    .line 87
    :cond_32
    sget-object v2, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v2, :cond_38

    .line 88
    const/4 v2, 0x5

    goto :goto_3

    .line 90
    :cond_38
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lgnu/bytecode/ObjectType;

    invoke-virtual {v3, v2}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolClass;->index:I

    shl-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 73
    :sswitch_data_4a
    .sparse-switch
        0x42 -> :sswitch_2a
        0x43 -> :sswitch_2a
        0x44 -> :sswitch_30
        0x46 -> :sswitch_2e
        0x49 -> :sswitch_2a
        0x4a -> :sswitch_2c
        0x53 -> :sswitch_2a
        0x5a -> :sswitch_2a
    .end sparse-switch
.end method

.method extractVerificationType(II)I
    .registers 5
    .param p1, "startOffset"    # I
    .param p2, "tag"    # I

    .prologue
    .line 248
    const/4 v1, 0x7

    if-eq p2, v1, :cond_7

    const/16 v1, 0x8

    if-ne p2, v1, :cond_10

    .line 250
    :cond_7
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    .line 251
    .local v0, "value":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p2, v1

    .line 253
    .end local v0    # "value":I
    :cond_10
    return p2
.end method

.method extractVerificationTypes(III[I)I
    .registers 10
    .param p1, "startOffset"    # I
    .param p2, "count"    # I
    .param p3, "startIndex"    # I
    .param p4, "buffer"    # [I

    .prologue
    .line 272
    move v1, p1

    .local v1, "offset":I
    move v2, p3

    .line 273
    .end local p3    # "startIndex":I
    .local v2, "startIndex":I
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_25

    .line 276
    iget v4, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v1, v4, :cond_11

    .line 277
    const/4 v0, -0x1

    .line 284
    .local v0, "encoding":I
    :goto_b
    add-int/lit8 p3, v2, 0x1

    .end local v2    # "startIndex":I
    .restart local p3    # "startIndex":I
    aput v0, p4, v2

    move v2, p3

    .line 285
    .end local p3    # "startIndex":I
    .restart local v2    # "startIndex":I
    goto :goto_2

    .line 280
    .end local v0    # "encoding":I
    :cond_11
    iget-object v4, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v3, v4, v1

    .line 281
    .local v3, "tag":I
    invoke-virtual {p0, v1, v3}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationType(II)I

    move-result v0

    .line 282
    .restart local v0    # "encoding":I
    const/4 v4, 0x7

    if-eq v3, v4, :cond_20

    const/16 v4, 0x8

    if-ne v3, v4, :cond_23

    :cond_20
    const/4 v4, 0x3

    :goto_21
    add-int/2addr v1, v4

    goto :goto_b

    :cond_23
    const/4 v4, 0x1

    goto :goto_21

    .line 286
    .end local v0    # "encoding":I
    .end local v3    # "tag":I
    :cond_25
    return v1
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v0, Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .registers 22
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .prologue
    .line 325
    const-string v18, "Attribute \""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 327
    const-string v18, "\", length:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getLength()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 329
    const-string v18, ", number of entries: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 331
    const/4 v10, 0x2

    .line 332
    .local v10, "ipos":I
    const/16 v16, -0x1

    .line 333
    .local v16, "pc_offset":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v12

    .line 334
    .local v12, "method":Lgnu/bytecode/Method;
    const/4 v8, 0x0

    .line 335
    .local v8, "encodedTypes":[I
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v18

    if-eqz v18, :cond_71

    const/16 v18, 0x0

    :goto_4e
    iget-object v0, v12, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 336
    .local v5, "curLocals":I
    const/4 v6, 0x0

    .line 337
    .local v6, "curStack":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_70

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_74

    .line 341
    const/4 v9, -0x1

    .line 448
    :cond_70
    :goto_70
    return-void

    .line 335
    .end local v5    # "curLocals":I
    .end local v6    # "curStack":I
    .end local v9    # "i":I
    :cond_71
    const/16 v18, 0x1

    goto :goto_4e

    .line 344
    .restart local v5    # "curLocals":I
    .restart local v6    # "curStack":I
    .restart local v9    # "i":I
    :cond_74
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "ipos":I
    .local v11, "ipos":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->u1(I)I

    move-result v17

    .line 345
    .local v17, "tag":I
    add-int/lit8 v16, v16, 0x1

    .line 346
    const/4 v7, -0x1

    .line 347
    .local v7, "delta":I
    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_ba

    .line 348
    and-int/lit8 v18, v17, 0x3f

    add-int v16, v16, v18

    move v10, v11

    .line 360
    .end local v11    # "ipos":I
    .restart local v10    # "ipos":I
    :goto_8c
    const-string v18, "  offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 362
    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_d5

    .line 364
    const-string v18, " - same_frame"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 365
    const/4 v6, 0x0

    .line 442
    :goto_ae
    if-gez v10, :cond_254

    .line 444
    const-string v18, "<ERROR - missing data>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    goto :goto_70

    .line 349
    .end local v10    # "ipos":I
    .restart local v11    # "ipos":I
    :cond_ba
    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_ca

    .line 351
    const/4 v10, -0x1

    .line 352
    .end local v11    # "ipos":I
    .restart local v10    # "ipos":I
    goto :goto_70

    .line 356
    .end local v10    # "ipos":I
    .restart local v11    # "ipos":I
    :cond_ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v7

    .line 357
    add-int v16, v16, v7

    .line 358
    add-int/lit8 v10, v11, 0x2

    .end local v11    # "ipos":I
    .restart local v10    # "ipos":I
    goto :goto_8c

    .line 367
    :cond_d5
    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e5

    const/16 v18, 0xf7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_120

    .line 369
    :cond_e5
    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_11d

    const-string v18, " - same_locals_1_stack_item_frame"

    :goto_ef
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 371
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v8, v0}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v8

    .line 372
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2, v8}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 373
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v8, v1, v2, v3}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 374
    const/4 v6, 0x1

    goto :goto_ae

    .line 369
    :cond_11d
    const-string v18, " - same_locals_1_stack_item_frame_extended"

    goto :goto_ef

    .line 376
    :cond_120
    const/16 v18, 0xf6

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_13a

    .line 378
    const-string v18, " - tag reserved for future use - "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    goto/16 :goto_70

    .line 382
    :cond_13a
    const/16 v18, 0xfa

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_161

    .line 384
    move/from16 v0, v17

    rsub-int v4, v0, 0xfb

    .line 385
    .local v4, "count":I
    const-string v18, " - chop_frame - undefine "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 387
    const-string v18, " locals"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 388
    sub-int/2addr v5, v4

    .line 389
    const/4 v6, 0x0

    .line 390
    goto/16 :goto_ae

    .line 391
    .end local v4    # "count":I
    :cond_161
    const/16 v18, 0xfb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_175

    .line 393
    const-string v18, " - same_frame_extended"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 394
    const/4 v6, 0x0

    goto/16 :goto_ae

    .line 396
    :cond_175
    const/16 v18, 0xfe

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1b1

    .line 398
    move/from16 v0, v17

    add-int/lit16 v4, v0, -0xfb

    .line 399
    .restart local v4    # "count":I
    const-string v18, " - append_frame - define "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 401
    const-string v18, " more locals"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 402
    add-int v18, v5, v4

    move/from16 v0, v18

    invoke-static {v8, v0}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v8

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4, v5, v8}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v5, v4, v1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 405
    add-int/2addr v5, v4

    .line 406
    const/4 v6, 0x0

    .line 407
    goto/16 :goto_ae

    .line 410
    .end local v4    # "count":I
    :cond_1b1
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c2

    .line 412
    const/4 v10, -0x1

    .line 413
    goto/16 :goto_70

    .line 415
    :cond_1c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v14

    .line 416
    .local v14, "num_locals":I
    add-int/lit8 v10, v10, 0x2

    .line 417
    const-string v18, " - full_frame.  Locals count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 419
    invoke-static {v8, v14}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v8

    .line 420
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v14, v1, v8}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 421
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v8, v1, v14, v2}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 422
    move v5, v14

    .line 423
    add-int/lit8 v18, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_203

    .line 425
    const/4 v10, -0x1

    .line 426
    goto/16 :goto_70

    .line 428
    :cond_203
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v15

    .line 429
    .local v15, "num_stack":I
    add-int/lit8 v10, v10, 0x2

    .line 430
    const-string v18, "    (end of locals)"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 432
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 433
    .local v13, "nspaces":I
    :goto_21c
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_22a

    .line 434
    const/16 v18, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_21c

    .line 435
    :cond_22a
    const-string v18, "       Stack count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 437
    invoke-static {v8, v15}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v8

    .line 438
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v15, v1, v8}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 439
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v8, v1, v15, v2}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 440
    move v6, v15

    goto/16 :goto_ae

    .line 337
    .end local v13    # "nspaces":I
    .end local v14    # "num_locals":I
    .end local v15    # "num_stack":I
    :cond_254
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5b
.end method

.method printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V
    .registers 8
    .param p1, "encoding"    # I
    .param p2, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .prologue
    .line 203
    and-int/lit16 v2, p1, 0xff

    .line 204
    .local v2, "tag":I
    packed-switch v2, :pswitch_data_62

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<bad verification type tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 240
    :goto_21
    return-void

    .line 207
    :pswitch_22
    const-string v3, "top/unavailable"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 210
    :pswitch_28
    const-string v3, "integer"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 213
    :pswitch_2e
    const-string v3, "float"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 216
    :pswitch_34
    const-string v3, "double"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 219
    :pswitch_3a
    const-string v3, "long"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 222
    :pswitch_40
    const-string v3, "null"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 225
    :pswitch_46
    const-string v3, "uninitialized this"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 228
    :pswitch_4c
    shr-int/lit8 v0, p1, 0x8

    .line 229
    .local v0, "index":I
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 230
    const/4 v3, 0x7

    invoke-virtual {p2, v0, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_21

    .line 233
    .end local v0    # "index":I
    :pswitch_56
    shr-int/lit8 v1, p1, 0x8

    .line 234
    .local v1, "offset":I
    const-string v3, "uninitialized object created at "

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_21

    .line 204
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_4c
        :pswitch_56
    .end packed-switch
.end method

.method printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V
    .registers 11
    .param p1, "encodings"    # [I
    .param p2, "startIndex"    # I
    .param p3, "count"    # I
    .param p4, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .prologue
    const/16 v5, 0x20

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "regno":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    add-int v4, p2, p3

    if-ge v1, v4, :cond_3d

    .line 299
    aget v0, p1, v1

    .line 300
    .local v0, "encoding":I
    and-int/lit16 v3, v0, 0xff

    .line 301
    .local v3, "tag":I
    if-lt v1, p2, :cond_25

    .line 303
    const-string v4, "  "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 304
    const/16 v4, 0x64

    if-lt v2, v4, :cond_32

    .line 312
    :goto_17
    invoke-virtual {p4, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 313
    const-string v4, ": "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v0, p4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V

    .line 315
    invoke-virtual {p4}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 317
    :cond_25
    add-int/lit8 v2, v2, 0x1

    .line 318
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2d

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2f

    .line 319
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 297
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 308
    :cond_32
    const/16 v4, 0xa

    if-ge v2, v4, :cond_39

    .line 309
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 310
    :cond_39
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_17

    .line 321
    .end local v0    # "encoding":I
    .end local v3    # "tag":I
    :cond_3d
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 4
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(II)V

    .line 43
    invoke-super {p0, p1}, Lgnu/bytecode/MiscAttr;->write(Ljava/io/DataOutputStream;)V

    .line 44
    return-void
.end method

.class public Lgnu/text/IntegerFormat;
.super Lgnu/text/ReportFormat;
.source "IntegerFormat.java"


# static fields
.field public static final MIN_DIGITS:I = 0x40

.field public static final PAD_RIGHT:I = 0x10

.field public static final SHOW_BASE:I = 0x8

.field public static final SHOW_GROUPS:I = 0x1

.field public static final SHOW_PLUS:I = 0x2

.field public static final SHOW_SPACE:I = 0x4

.field public static final UPPERCASE:I = 0x20


# instance fields
.field public base:I

.field public commaChar:I

.field public commaInterval:I

.field public flags:I

.field public minWidth:I

.field public padChar:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lgnu/text/IntegerFormat;->base:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lgnu/text/IntegerFormat;->minWidth:I

    .line 51
    const/16 v0, 0x20

    iput v0, p0, Lgnu/text/IntegerFormat;->padChar:I

    .line 52
    const/16 v0, 0x2c

    iput v0, p0, Lgnu/text/IntegerFormat;->commaChar:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lgnu/text/IntegerFormat;->commaInterval:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/IntegerFormat;->flags:I

    .line 55
    return-void
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "radix"    # I

    .prologue
    .line 165
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    .line 170
    .end local p1    # "x":Ljava/lang/Object;
    :goto_5
    return-object v0

    .line 167
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_11

    .line 168
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 170
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_11
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 29
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p1

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v22, v0

    if-eqz v22, :cond_cb

    move-object/from16 v22, p1

    check-cast v22, [Ljava/lang/Object;

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v3, v22

    .line 69
    .local v3, "args":[Ljava/lang/Object;
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->minWidth:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v9

    .line 70
    .local v9, "minWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->minWidth:I

    move/from16 v22, v0

    const/high16 v23, -0x60000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_32

    add-int/lit8 p2, p2, 0x1

    .line 71
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->padChar:I

    move/from16 v22, v0

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v13

    .line 72
    .local v13, "padChar":C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->padChar:I

    move/from16 v22, v0

    const/high16 v23, -0x60000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_54

    add-int/lit8 p2, p2, 0x1

    .line 73
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaChar:I

    move/from16 v22, v0

    const/16 v23, 0x2c

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v5

    .line 74
    .local v5, "commaChar":C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaChar:I

    move/from16 v22, v0

    const/high16 v23, -0x60000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_76

    add-int/lit8 p2, p2, 0x1

    .line 75
    :cond_76
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    .line 76
    .local v6, "commaInterval":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    move/from16 v22, v0

    const/high16 v23, -0x60000000

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_98

    add-int/lit8 p2, p2, 0x1

    .line 77
    :cond_98
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_ce

    const/16 v16, 0x1

    .line 78
    .local v16, "printCommas":Z
    :goto_a4
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x10

    if-eqz v22, :cond_d1

    const/4 v15, 0x1

    .line 79
    .local v15, "padRight":Z
    :goto_af
    const/16 v22, 0x30

    move/from16 v0, v22

    if-ne v13, v0, :cond_d3

    const/4 v14, 0x1

    .line 80
    .local v14, "padInternal":Z
    :goto_b6
    if-eqz v3, :cond_d7

    .line 82
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v22

    if-lt v0, v1, :cond_d5

    .line 84
    const-string v22, "#<missing format argument>"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    .end local p2    # "start":I
    :goto_ca
    return p2

    .line 68
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v5    # "commaChar":C
    .end local v6    # "commaInterval":I
    .end local v9    # "minWidth":I
    .end local v13    # "padChar":C
    .end local v14    # "padInternal":Z
    .end local v15    # "padRight":Z
    .end local v16    # "printCommas":Z
    .restart local p2    # "start":I
    :cond_cb
    const/4 v3, 0x0

    goto/16 :goto_10

    .line 77
    .restart local v3    # "args":[Ljava/lang/Object;
    .restart local v5    # "commaChar":C
    .restart local v6    # "commaInterval":I
    .restart local v9    # "minWidth":I
    .restart local v13    # "padChar":C
    :cond_ce
    const/16 v16, 0x0

    goto :goto_a4

    .line 78
    .restart local v16    # "printCommas":Z
    :cond_d1
    const/4 v15, 0x0

    goto :goto_af

    .line 79
    .restart local v15    # "padRight":Z
    :cond_d3
    const/4 v14, 0x0

    goto :goto_b6

    .line 87
    .restart local v14    # "padInternal":Z
    :cond_d5
    aget-object p1, v3, p2

    .line 89
    :cond_d7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v17

    .line 90
    .local v17, "sarg":Ljava/lang/String;
    if-eqz v17, :cond_269

    .line 92
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 93
    .local v18, "sarg0":C
    const/16 v22, 0x2d

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_164

    const/4 v11, 0x1

    .line 94
    .local v11, "neg":Z
    :goto_fc
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    .line 95
    .local v19, "slen":I
    if-eqz v11, :cond_166

    add-int/lit8 v10, v19, -0x1

    .line 96
    .local v10, "ndigits":I
    :goto_104
    if-eqz v16, :cond_169

    add-int/lit8 v22, v10, -0x1

    div-int v12, v22, v6

    .line 97
    .local v12, "numCommas":I
    :goto_10a
    add-int v20, v10, v12

    .line 98
    .local v20, "unpadded_len":I
    if-nez v11, :cond_118

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x6

    if-eqz v22, :cond_11a

    .line 99
    :cond_118
    add-int/lit8 v20, v20, 0x1

    .line 101
    :cond_11a
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_134

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v22, v0

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16b

    .line 104
    add-int/lit8 v20, v20, 0x2

    .line 108
    :cond_134
    :goto_134
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    if-eqz v22, :cond_154

    .line 110
    move/from16 v20, v10

    .line 111
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_154

    const/16 v22, 0x30

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_154

    if-nez v9, :cond_154

    .line 112
    const/16 v19, 0x0

    .line 114
    :cond_154
    if-nez v15, :cond_184

    if-nez v14, :cond_184

    .line 115
    :goto_158
    move/from16 v0, v20

    if-le v9, v0, :cond_184

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 115
    add-int/lit8 v9, v9, -0x1

    goto :goto_158

    .line 93
    .end local v10    # "ndigits":I
    .end local v11    # "neg":Z
    .end local v12    # "numCommas":I
    .end local v19    # "slen":I
    .end local v20    # "unpadded_len":I
    :cond_164
    const/4 v11, 0x0

    goto :goto_fc

    .restart local v11    # "neg":Z
    .restart local v19    # "slen":I
    :cond_166
    move/from16 v10, v19

    .line 95
    goto :goto_104

    .line 96
    .restart local v10    # "ndigits":I
    :cond_169
    const/4 v12, 0x0

    goto :goto_10a

    .line 105
    .restart local v12    # "numCommas":I
    .restart local v20    # "unpadded_len":I
    :cond_16b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_134

    const/16 v22, 0x30

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_134

    .line 106
    add-int/lit8 v20, v20, 0x1

    goto :goto_134

    .line 117
    :cond_184
    const/4 v7, 0x0

    .line 118
    .local v7, "i":I
    if-eqz v11, :cond_1e8

    .line 120
    const/16 v22, 0x2d

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 121
    add-int/lit8 v7, v7, 0x1

    .line 122
    add-int/lit8 v19, v19, -0x1

    .line 128
    :cond_194
    :goto_194
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_210

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x20

    if-eqz v22, :cond_210

    const/16 v21, 0x1

    .line 129
    .local v21, "uppercase":Z
    :goto_1ae
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_1da

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v22, v0

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_216

    .line 133
    const/16 v22, 0x30

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 134
    if-eqz v21, :cond_213

    const/16 v22, 0x58

    :goto_1d3
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 139
    :cond_1da
    :goto_1da
    if-eqz v14, :cond_278

    .line 140
    :goto_1dc
    move/from16 v0, v20

    if-le v9, v0, :cond_278

    .line 141
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 140
    add-int/lit8 v9, v9, -0x1

    goto :goto_1dc

    .line 124
    .end local v21    # "uppercase":Z
    :cond_1e8
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_1fc

    .line 125
    const/16 v22, 0x2b

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_194

    .line 126
    :cond_1fc
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_194

    .line 127
    const/16 v22, 0x20

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_194

    .line 128
    :cond_210
    const/16 v21, 0x0

    goto :goto_1ae

    .line 134
    .restart local v21    # "uppercase":Z
    :cond_213
    const/16 v22, 0x78

    goto :goto_1d3

    .line 136
    :cond_216
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/IntegerFormat;->base:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1da

    const/16 v22, 0x30

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_1da

    .line 137
    const/16 v22, 0x30

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1da

    .line 146
    .end local v7    # "i":I
    .local v8, "i":I
    :cond_236
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 147
    .local v4, "ch":C
    if-eqz v21, :cond_244

    .line 148
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 149
    :cond_244
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(I)V

    .line 150
    add-int/lit8 v19, v19, -0x1

    .line 151
    if-eqz v16, :cond_258

    if-lez v19, :cond_258

    rem-int v22, v19, v6

    if-nez v22, :cond_258

    .line 152
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(I)V

    :cond_258
    move v8, v7

    .line 144
    .end local v4    # "ch":C
    .end local v7    # "i":I
    .restart local v8    # "i":I
    :goto_259
    if-nez v19, :cond_236

    .line 154
    if-eqz v15, :cond_274

    .line 155
    :goto_25d
    move/from16 v0, v20

    if-le v9, v0, :cond_274

    .line 156
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/io/Writer;->write(I)V

    .line 155
    add-int/lit8 v9, v9, -0x1

    goto :goto_25d

    .line 159
    .end local v8    # "i":I
    .end local v10    # "ndigits":I
    .end local v11    # "neg":Z
    .end local v12    # "numCommas":I
    .end local v18    # "sarg0":C
    .end local v19    # "slen":I
    .end local v20    # "unpadded_len":I
    .end local v21    # "uppercase":Z
    :cond_269
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/text/IntegerFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 160
    :cond_274
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_ca

    .restart local v7    # "i":I
    .restart local v10    # "ndigits":I
    .restart local v11    # "neg":Z
    .restart local v12    # "numCommas":I
    .restart local v18    # "sarg0":C
    .restart local v19    # "slen":I
    .restart local v20    # "unpadded_len":I
    .restart local v21    # "uppercase":Z
    :cond_278
    move v8, v7

    .end local v7    # "i":I
    .restart local v8    # "i":I
    goto :goto_259
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/IntegerFormat;->format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v0

    return v0
.end method

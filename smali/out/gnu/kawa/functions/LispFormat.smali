.class public Lgnu/kawa/functions/LispFormat;
.super Lgnu/text/CompoundFormat;
.source "LispFormat.java"


# static fields
.field public static final paramFromCount:Ljava/lang/String; = "<from count>"

.field public static final paramFromList:Ljava/lang/String; = "<from list>"

.field public static final paramUnspecified:Ljava/lang/String; = "<unspecified>"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/kawa/functions/LispFormat;-><init>([C)V

    .line 464
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "format"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lgnu/kawa/functions/LispFormat;-><init>([CII)V

    .line 515
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 52
    .param p1, "format"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;I)V

    .line 24
    const/16 v46, -0x1

    .line 25
    .local v46, "start_nesting":I
    const/16 v23, 0x0

    .line 27
    .local v23, "choices_seen":I
    new-instance v33, Ljava/lang/StringBuffer;

    const/16 v11, 0x64

    move-object/from16 v0, v33

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    .local v33, "litbuf":Ljava/lang/StringBuffer;
    new-instance v44, Ljava/util/Stack;

    invoke-direct/range {v44 .. v44}, Ljava/util/Stack;-><init>()V

    .line 30
    .local v44, "stack":Ljava/util/Stack;
    add-int v32, p2, p3

    .line 31
    .local v32, "limit":I
    move/from16 v28, p2

    .local v28, "i":I
    move/from16 v29, v28

    .line 34
    .end local v28    # "i":I
    .local v29, "i":I
    :cond_1f
    :goto_1f
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_2b

    aget-char v11, p1, v29

    const/16 v12, 0x7e

    if-ne v11, v12, :cond_43

    :cond_2b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_43

    .line 36
    new-instance v11, Lgnu/text/LiteralFormat;

    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Lgnu/text/LiteralFormat;-><init>(Ljava/lang/StringBuffer;)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/4 v11, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 39
    :cond_43
    move/from16 v0, v29

    move/from16 v1, v32

    if-lt v0, v1, :cond_55

    .line 430
    move/from16 v0, v29

    move/from16 v1, v32

    if-le v0, v1, :cond_78f

    .line 431
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v11}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v11

    .line 41
    :cond_55
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    .line 42
    .local v21, "ch":C
    const/16 v11, 0x7e

    move/from16 v0, v21

    if-eq v0, v11, :cond_69

    .line 44
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v29, v28

    .line 45
    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto :goto_1f

    .line 47
    .end local v29    # "i":I
    .restart local v28    # "i":I
    :cond_69
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->size()I

    move-result v43

    .line 48
    .local v43, "speci":I
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "i":I
    .restart local v29    # "i":I
    aget-char v21, p1, v28

    .line 51
    :goto_71
    const/16 v11, 0x23

    move/from16 v0, v21

    if-ne v0, v11, :cond_a1

    .line 53
    const-string v11, "<from count>"

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    move/from16 v29, v28

    .line 90
    .end local v28    # "i":I
    .restart local v29    # "i":I
    :goto_84
    const/16 v11, 0x2c

    move/from16 v0, v21

    if-eq v0, v11, :cond_145

    move/from16 v28, v29

    .line 94
    .end local v29    # "i":I
    .restart local v28    # "i":I
    :goto_8c
    const/16 v42, 0x0

    .line 95
    .local v42, "seenColon":Z
    const/16 v41, 0x0

    .local v41, "seenAt":Z
    move/from16 v29, v28

    .line 98
    .end local v28    # "i":I
    .restart local v29    # "i":I
    :goto_92
    const/16 v11, 0x3a

    move/from16 v0, v21

    if-ne v0, v11, :cond_14d

    .line 99
    const/16 v42, 0x1

    .line 104
    :goto_9a
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    move/from16 v29, v28

    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto :goto_92

    .line 56
    .end local v41    # "seenAt":Z
    .end local v42    # "seenColon":Z
    :cond_a1
    const/16 v11, 0x76

    move/from16 v0, v21

    if-eq v0, v11, :cond_ad

    const/16 v11, 0x56

    move/from16 v0, v21

    if-ne v0, v11, :cond_bb

    .line 58
    :cond_ad
    const-string v11, "<from list>"

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    move/from16 v29, v28

    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto :goto_84

    .line 61
    :cond_bb
    const/16 v11, 0x2d

    move/from16 v0, v21

    if-eq v0, v11, :cond_cb

    const/16 v11, 0xa

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    if-ltz v11, :cond_11d

    .line 63
    :cond_cb
    const/16 v11, 0x2d

    move/from16 v0, v21

    if-ne v0, v11, :cond_100

    const/16 v34, 0x1

    .line 64
    .local v34, "neg":Z
    :goto_d3
    if-eqz v34, :cond_7c3

    .line 65
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    .line 66
    :goto_d9
    const/16 v47, 0x0

    .line 67
    .local v47, "val":I
    move/from16 v45, v28

    .line 70
    .local v45, "start":I
    :goto_dd
    const/16 v11, 0xa

    move/from16 v0, v21

    invoke-static {v0, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v26

    .line 71
    .local v26, "dig":I
    if-gez v26, :cond_103

    .line 76
    sub-int v11, v28, v45

    const/16 v12, 0x8

    if-ge v11, v12, :cond_10e

    if-eqz v34, :cond_f4

    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v47, v0

    .end local v47    # "val":I
    :cond_f4
    invoke-static/range {v47 .. v47}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    :goto_f8
    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v29, v28

    .line 78
    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto :goto_84

    .line 63
    .end local v26    # "dig":I
    .end local v34    # "neg":Z
    .end local v45    # "start":I
    :cond_100
    const/16 v34, 0x0

    goto :goto_d3

    .line 73
    .end local v29    # "i":I
    .restart local v26    # "dig":I
    .restart local v28    # "i":I
    .restart local v34    # "neg":Z
    .restart local v45    # "start":I
    .restart local v47    # "val":I
    :cond_103
    mul-int/lit8 v11, v47, 0xa

    add-int v47, v11, v26

    .line 74
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "i":I
    .restart local v29    # "i":I
    aget-char v21, p1, v28

    move/from16 v28, v29

    .line 75
    .end local v29    # "i":I
    .restart local v28    # "i":I
    goto :goto_dd

    .line 76
    :cond_10e
    sub-int v11, v28, v45

    const/16 v12, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v45

    move/from16 v2, v34

    invoke-static {v0, v1, v11, v12, v2}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v11

    goto :goto_f8

    .line 79
    .end local v26    # "dig":I
    .end local v28    # "i":I
    .end local v34    # "neg":Z
    .end local v45    # "start":I
    .end local v47    # "val":I
    .restart local v29    # "i":I
    :cond_11d
    const/16 v11, 0x27

    move/from16 v0, v21

    if-ne v0, v11, :cond_136

    .line 81
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v11, p1, v29

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v29, v28, 0x1

    .end local v28    # "i":I
    .restart local v29    # "i":I
    aget-char v21, p1, v28

    goto/16 :goto_84

    .line 84
    :cond_136
    const/16 v11, 0x2c

    move/from16 v0, v21

    if-ne v0, v11, :cond_7bf

    .line 86
    const-string v11, "<unspecified>"

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_84

    .line 92
    :cond_145
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    move/from16 v29, v28

    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto/16 :goto_71

    .line 100
    .restart local v41    # "seenAt":Z
    .restart local v42    # "seenColon":Z
    :cond_14d
    const/16 v11, 0x40

    move/from16 v0, v21

    if-ne v0, v11, :cond_157

    .line 101
    const/16 v41, 0x1

    goto/16 :goto_9a

    .line 106
    :cond_157
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v21

    .line 107
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->size()I

    move-result v11

    sub-int v36, v11, v43

    .line 110
    .local v36, "numParams":I
    sparse-switch v21, :sswitch_data_7c8

    .line 425
    new-instance v11, Ljava/text/ParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unrecognized format specifier ~"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 113
    :sswitch_181
    move/from16 v18, v43

    .line 115
    .local v18, "argstart":I
    const/16 v11, 0x52

    move/from16 v0, v21

    if-ne v0, v11, :cond_1d0

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "argstart":I
    .local v19, "argstart":I
    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v4

    .local v4, "base":I
    move/from16 v18, v19

    .line 120
    .end local v19    # "argstart":I
    .restart local v18    # "argstart":I
    :goto_195
    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    .line 121
    .local v5, "minWidth":I
    add-int/lit8 v11, v18, 0x1

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v6

    .line 122
    .local v6, "padChar":I
    add-int/lit8 v11, v18, 0x2

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v7

    .line 123
    .local v7, "commaChar":I
    add-int/lit8 v11, v18, 0x3

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v8

    .line 124
    .local v8, "commaInterval":I
    const/4 v9, 0x0

    .line 125
    .local v9, "flags":I
    if-eqz v42, :cond_1ba

    .line 126
    or-int/lit8 v9, v9, 0x1

    .line 127
    :cond_1ba
    if-eqz v41, :cond_1be

    .line 128
    or-int/lit8 v9, v9, 0x2

    .line 129
    :cond_1be
    invoke-static/range {v4 .. v9}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v10

    .line 427
    .end local v4    # "base":I
    .end local v5    # "minWidth":I
    .end local v6    # "padChar":I
    .end local v7    # "commaChar":I
    .end local v8    # "commaInterval":I
    .end local v9    # "flags":I
    .end local v18    # "argstart":I
    .local v10, "fmt":Ljava/text/Format;
    :goto_1c2
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 428
    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    .line 116
    .end local v10    # "fmt":Ljava/text/Format;
    .restart local v18    # "argstart":I
    :cond_1d0
    const/16 v11, 0x44

    move/from16 v0, v21

    if-ne v0, v11, :cond_1d9

    const/16 v4, 0xa

    .restart local v4    # "base":I
    goto :goto_195

    .line 117
    .end local v4    # "base":I
    :cond_1d9
    const/16 v11, 0x4f

    move/from16 v0, v21

    if-ne v0, v11, :cond_1e2

    const/16 v4, 0x8

    .restart local v4    # "base":I
    goto :goto_195

    .line 118
    .end local v4    # "base":I
    :cond_1e2
    const/16 v11, 0x58

    move/from16 v0, v21

    if-ne v0, v11, :cond_1eb

    const/16 v4, 0x10

    .restart local v4    # "base":I
    goto :goto_195

    .line 119
    .end local v4    # "base":I
    :cond_1eb
    const/4 v4, 0x2

    .restart local v4    # "base":I
    goto :goto_195

    .line 133
    .end local v4    # "base":I
    .end local v18    # "argstart":I
    :sswitch_1ed
    move/from16 v0, v42

    move/from16 v1, v41

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispPluralFormat;->getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;

    move-result-object v10

    .line 134
    .restart local v10    # "fmt":Ljava/text/Format;
    goto :goto_1c2

    .line 139
    .end local v10    # "fmt":Ljava/text/Format;
    :sswitch_1f6
    new-instance v25, Lgnu/kawa/functions/LispRealFormat;

    invoke-direct/range {v25 .. v25}, Lgnu/kawa/functions/LispRealFormat;-><init>()V

    .line 140
    .local v25, "dfmt":Lgnu/kawa/functions/LispRealFormat;
    move/from16 v0, v21

    move-object/from16 v1, v25

    iput-char v0, v1, Lgnu/kawa/functions/LispRealFormat;->op:C

    .line 141
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    .line 142
    add-int/lit8 v11, v43, 0x1

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    .line 143
    add-int/lit8 v11, v43, 0x2

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    .line 144
    add-int/lit8 v11, v43, 0x3

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    .line 145
    const/16 v11, 0x24

    move/from16 v0, v21

    if-eq v0, v11, :cond_267

    .line 147
    add-int/lit8 v11, v43, 0x4

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    .line 148
    const/16 v11, 0x45

    move/from16 v0, v21

    if-eq v0, v11, :cond_24f

    const/16 v11, 0x47

    move/from16 v0, v21

    if-ne v0, v11, :cond_267

    .line 150
    :cond_24f
    add-int/lit8 v11, v43, 0x5

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    .line 151
    add-int/lit8 v11, v43, 0x6

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v25

    iput v11, v0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    .line 154
    :cond_267
    move/from16 v0, v41

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    .line 155
    move/from16 v0, v42

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    .line 156
    move-object/from16 v0, v25

    iget v11, v0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    if-nez v11, :cond_283

    .line 157
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v10

    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 159
    .end local v10    # "fmt":Ljava/text/Format;
    :cond_283
    move-object/from16 v10, v25

    .line 160
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 164
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v25    # "dfmt":Lgnu/kawa/functions/LispRealFormat;
    :sswitch_287
    const/16 v11, 0x41

    move/from16 v0, v21

    if-eq v0, v11, :cond_2c5

    const/4 v11, 0x1

    :goto_28e
    invoke-static {v11}, Lgnu/kawa/functions/ObjectFormat;->getInstance(Z)Lgnu/kawa/functions/ObjectFormat;

    move-result-object v27

    .line 165
    .local v27, "fmt":Ljava/text/Format;
    if-lez v36, :cond_7bb

    .line 167
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    .line 168
    .restart local v5    # "minWidth":I
    add-int/lit8 v11, v43, 0x1

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v13

    .line 169
    .local v13, "colInc":I
    add-int/lit8 v11, v43, 0x2

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v14

    .line 170
    .local v14, "minPad":I
    add-int/lit8 v11, v43, 0x3

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v6

    .line 171
    .restart local v6    # "padChar":I
    new-instance v10, Lgnu/kawa/functions/LispObjectFormat;

    move-object/from16 v11, v27

    check-cast v11, Lgnu/text/ReportFormat;

    if-eqz v41, :cond_2c7

    const/16 v16, 0x0

    :goto_2be
    move v12, v5

    move v15, v6

    invoke-direct/range {v10 .. v16}, Lgnu/kawa/functions/LispObjectFormat;-><init>(Lgnu/text/ReportFormat;IIIII)V

    .line 174
    .end local v27    # "fmt":Ljava/text/Format;
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 164
    .end local v5    # "minWidth":I
    .end local v6    # "padChar":I
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v13    # "colInc":I
    .end local v14    # "minPad":I
    :cond_2c5
    const/4 v11, 0x0

    goto :goto_28e

    .line 171
    .restart local v5    # "minWidth":I
    .restart local v6    # "padChar":I
    .restart local v13    # "colInc":I
    .restart local v14    # "minPad":I
    .restart local v27    # "fmt":Ljava/text/Format;
    :cond_2c7
    const/16 v16, 0x64

    goto :goto_2be

    .line 177
    .end local v5    # "minWidth":I
    .end local v6    # "padChar":I
    .end local v13    # "colInc":I
    .end local v14    # "minPad":I
    .end local v27    # "fmt":Ljava/text/Format;
    :sswitch_2ca
    if-lez v36, :cond_2e1

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v22

    .line 179
    .local v22, "charVal":I
    :goto_2d4
    const/4 v11, 0x1

    move/from16 v0, v22

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-static {v0, v11, v1, v2}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v10

    .line 181
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 177
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v22    # "charVal":I
    :cond_2e1
    const/high16 v22, -0x60000000

    goto :goto_2d4

    .line 183
    :sswitch_2e4
    new-instance v10, Lgnu/kawa/functions/LispRepositionFormat;

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move/from16 v0, v42

    move/from16 v1, v41

    invoke-direct {v10, v11, v0, v1}, Lgnu/kawa/functions/LispRepositionFormat;-><init>(IZZ)V

    .line 185
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 187
    .end local v10    # "fmt":Ljava/text/Format;
    :sswitch_2f7
    if-eqz v42, :cond_325

    if-eqz v41, :cond_322

    const/16 v21, 0x55

    .line 188
    :goto_2fd
    new-instance v20, Lgnu/text/CaseConvertFormat;

    const/4 v11, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v11, v1}, Lgnu/text/CaseConvertFormat;-><init>(Ljava/text/Format;C)V

    .line 189
    .local v20, "cfmt":Lgnu/text/CaseConvertFormat;
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 190
    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static/range {v46 .. v46}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move/from16 v46, v43

    .line 193
    goto/16 :goto_1f

    .line 187
    .end local v20    # "cfmt":Lgnu/text/CaseConvertFormat;
    :cond_322
    const/16 v21, 0x43

    goto :goto_2fd

    :cond_325
    if-eqz v41, :cond_32a

    const/16 v21, 0x54

    goto :goto_2fd

    :cond_32a
    const/16 v21, 0x4c

    goto :goto_2fd

    .line 195
    :sswitch_32d
    if-ltz v46, :cond_33b

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/text/CaseConvertFormat;

    if-nez v11, :cond_345

    .line 198
    :cond_33b
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "saw ~) without matching ~("

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 199
    :cond_345
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/text/CaseConvertFormat;

    .line 200
    .restart local v20    # "cfmt":Lgnu/text/CaseConvertFormat;
    add-int/lit8 v11, v46, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lgnu/text/CaseConvertFormat;->setBaseFormat(Ljava/text/Format;)V

    .line 201
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v46

    .line 202
    goto/16 :goto_1f

    .line 204
    .end local v20    # "cfmt":Lgnu/text/CaseConvertFormat;
    :sswitch_36a
    new-instance v31, Lgnu/kawa/functions/LispIterationFormat;

    invoke-direct/range {v31 .. v31}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    .line 205
    .local v31, "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    move/from16 v0, v41

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 206
    const/4 v11, 0x1

    move-object/from16 v0, v31

    iput v11, v0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 207
    const/4 v11, 0x1

    move-object/from16 v0, v31

    iput-boolean v11, v0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 208
    move-object/from16 v10, v31

    .line 209
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 211
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v31    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_383
    new-instance v31, Lgnu/kawa/functions/LispIterationFormat;

    invoke-direct/range {v31 .. v31}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    .line 212
    .restart local v31    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    move/from16 v0, v41

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 213
    move/from16 v0, v42

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    .line 214
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v31

    iput v11, v0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 215
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 216
    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static/range {v46 .. v46}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move/from16 v46, v43

    .line 219
    goto/16 :goto_1f

    .line 221
    .end local v31    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_3bb
    if-ltz v46, :cond_3c9

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/kawa/functions/LispIterationFormat;

    if-nez v11, :cond_3d3

    .line 224
    :cond_3c9
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "saw ~} without matching ~{"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 225
    :cond_3d3
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lgnu/kawa/functions/LispIterationFormat;

    .line 226
    .restart local v31    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    move/from16 v0, v42

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 227
    add-int/lit8 v11, v46, 0x2

    move/from16 v0, v43

    if-le v0, v11, :cond_3f7

    .line 228
    add-int/lit8 v11, v46, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v11

    move-object/from16 v0, v31

    iput-object v11, v0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    .line 229
    :cond_3f7
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v46

    .line 230
    goto/16 :goto_1f

    .line 232
    .end local v31    # "lfmt":Lgnu/kawa/functions/LispIterationFormat;
    :sswitch_403
    new-instance v40, Lgnu/kawa/functions/LispPrettyFormat;

    invoke-direct/range {v40 .. v40}, Lgnu/kawa/functions/LispPrettyFormat;-><init>()V

    .line 233
    .local v40, "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    move/from16 v0, v41

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    .line 234
    if-eqz v42, :cond_442

    .line 236
    const-string v11, "("

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 237
    const-string v11, ")"

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 244
    :goto_41c
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 245
    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static/range {v46 .. v46}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static/range {v23 .. v23}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move/from16 v46, v43

    .line 249
    const/16 v23, 0x0

    .line 250
    goto/16 :goto_1f

    .line 241
    :cond_442
    const-string v11, ""

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 242
    const-string v11, ""

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto :goto_41c

    .line 252
    .end local v40    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    :sswitch_44f
    if-ltz v46, :cond_45d

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/kawa/functions/LispPrettyFormat;

    if-nez v11, :cond_467

    .line 255
    :cond_45d
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "saw ~> without matching ~<"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 256
    :cond_467
    add-int/lit8 v11, v46, 0x3

    add-int v11, v11, v23

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v10

    .line 257
    .restart local v10    # "fmt":Ljava/text/Format;
    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lgnu/kawa/functions/LispPrettyFormat;

    .line 259
    .restart local v40    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    add-int/lit8 v11, v46, 0x3

    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->size()I

    move-result v12

    move-object/from16 v0, v44

    invoke-static {v0, v11, v12}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v11

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    .line 260
    add-int/lit8 v11, v46, 0x3

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->setSize(I)V

    .line 261
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v46

    .line 262
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v46

    .line 263
    if-eqz v42, :cond_534

    .line 265
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    array-length v0, v11

    move/from16 v35, v0

    .line 266
    .local v35, "nsegments":I
    const/4 v11, 0x3

    move/from16 v0, v35

    if-le v0, v11, :cond_4c5

    .line 267
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "too many segments in Logical Block format"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 268
    :cond_4c5
    const/4 v11, 0x2

    move/from16 v0, v35

    if-lt v0, v11, :cond_515

    .line 270
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    instance-of v11, v11, Lgnu/text/LiteralFormat;

    if-nez v11, :cond_4df

    .line 271
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "prefix segment is not literal"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 272
    :cond_4df
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    check-cast v11, Lgnu/text/LiteralFormat;

    invoke-virtual {v11}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 273
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    .line 277
    :goto_4fb
    const/4 v11, 0x3

    move/from16 v0, v35

    if-lt v0, v11, :cond_1f

    .line 279
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    instance-of v11, v11, Lgnu/text/LiteralFormat;

    if-nez v11, :cond_521

    .line 280
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "suffix segment is not literal"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 276
    :cond_515
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    goto :goto_4fb

    .line 281
    :cond_521
    move-object/from16 v0, v40

    iget-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    check-cast v11, Lgnu/text/LiteralFormat;

    invoke-virtual {v11}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v40

    iput-object v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto/16 :goto_1f

    .line 285
    .end local v35    # "nsegments":I
    :cond_534
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "not implemented: justfication i.e. ~<...~>"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 288
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v40    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    :sswitch_53e
    new-instance v17, Lgnu/kawa/functions/LispChoiceFormat;

    invoke-direct/range {v17 .. v17}, Lgnu/kawa/functions/LispChoiceFormat;-><init>()V

    .line 289
    .local v17, "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    move-object/from16 v0, v17

    iput v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 290
    move-object/from16 v0, v17

    iget v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    const/high16 v12, -0x40000000    # -2.0f

    if-ne v11, v12, :cond_55d

    .line 291
    const/high16 v11, -0x60000000

    move-object/from16 v0, v17

    iput v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 292
    :cond_55d
    if-eqz v42, :cond_564

    .line 293
    const/4 v11, 0x1

    move-object/from16 v0, v17

    iput-boolean v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    .line 294
    :cond_564
    if-eqz v41, :cond_56b

    .line 295
    const/4 v11, 0x1

    move-object/from16 v0, v17

    iput-boolean v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    .line 296
    :cond_56b
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 297
    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static/range {v46 .. v46}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static/range {v23 .. v23}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move/from16 v46, v43

    .line 301
    const/16 v23, 0x0

    .line 302
    goto/16 :goto_1f

    .line 304
    .end local v17    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    :sswitch_591
    if-ltz v46, :cond_5f7

    .line 306
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/kawa/functions/LispChoiceFormat;

    if-eqz v11, :cond_5c5

    .line 309
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/kawa/functions/LispChoiceFormat;

    .line 310
    .restart local v17    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    if-eqz v42, :cond_5b0

    .line 311
    const/4 v11, 0x1

    move-object/from16 v0, v17

    iput-boolean v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    .line 312
    :cond_5b0
    add-int/lit8 v11, v46, 0x3

    add-int v11, v11, v23

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v10

    .line 314
    .restart local v10    # "fmt":Ljava/text/Format;
    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v23, v23, 0x1

    .line 316
    goto/16 :goto_1f

    .line 318
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v17    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    :cond_5c5
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/kawa/functions/LispPrettyFormat;

    if-eqz v11, :cond_5f7

    .line 321
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lgnu/kawa/functions/LispPrettyFormat;

    .line 322
    .restart local v40    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    if-eqz v41, :cond_5e2

    .line 323
    const/4 v11, 0x1

    move-object/from16 v0, v40

    iput-boolean v11, v0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    .line 324
    :cond_5e2
    add-int/lit8 v11, v46, 0x3

    add-int v11, v11, v23

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v10

    .line 326
    .restart local v10    # "fmt":Ljava/text/Format;
    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v23, v23, 0x1

    .line 328
    goto/16 :goto_1f

    .line 332
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v40    # "pfmt":Lgnu/kawa/functions/LispPrettyFormat;
    :cond_5f7
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "saw ~; without matching ~[ or ~<"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 334
    :sswitch_601
    if-ltz v46, :cond_60f

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/kawa/functions/LispChoiceFormat;

    if-nez v11, :cond_619

    .line 337
    :cond_60f
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "saw ~] without matching ~["

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 338
    :cond_619
    add-int/lit8 v11, v46, 0x3

    add-int v11, v11, v23

    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v11, v1}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v10

    .line 339
    .restart local v10    # "fmt":Ljava/text/Format;
    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/kawa/functions/LispChoiceFormat;

    .line 341
    .restart local v17    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    add-int/lit8 v11, v46, 0x3

    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->size()I

    move-result v12

    move-object/from16 v0, v44

    invoke-static {v0, v11, v12}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v11

    move-object/from16 v0, v17

    iput-object v11, v0, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    .line 342
    add-int/lit8 v11, v46, 0x3

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->setSize(I)V

    .line 343
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v23

    .line 344
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/math/IntNum;

    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v46

    .line 345
    goto/16 :goto_1f

    .line 347
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v17    # "afmt":Lgnu/kawa/functions/LispChoiceFormat;
    :sswitch_661
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    .line 348
    .local v37, "param1":I
    add-int/lit8 v11, v43, 0x1

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 349
    .local v38, "param2":I
    add-int/lit8 v11, v43, 0x2

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v39

    .line 350
    .local v39, "param3":I
    new-instance v10, Lgnu/kawa/functions/LispEscapeFormat;

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v10, v0, v1, v2}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(III)V

    .line 351
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 353
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v37    # "param1":I
    .end local v38    # "param2":I
    .end local v39    # "param3":I
    :sswitch_686
    if-eqz v41, :cond_68f

    .line 354
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    :cond_68f
    if-nez v42, :cond_1f

    .line 357
    :goto_691
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_1f

    .line 359
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "i":I
    .restart local v28    # "i":I
    aget-char v21, p1, v29

    .line 360
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_7b7

    .line 362
    add-int/lit8 v28, v28, -0x1

    move/from16 v29, v28

    .line 363
    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto/16 :goto_1f

    .line 369
    :sswitch_6a7
    invoke-static {}, Lgnu/text/FlushFormat;->getInstance()Lgnu/text/FlushFormat;

    move-result-object v10

    .line 370
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 372
    .end local v10    # "fmt":Ljava/text/Format;
    :sswitch_6ad
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    .line 373
    .restart local v37    # "param1":I
    add-int/lit8 v11, v43, 0x1

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v38

    .line 374
    .restart local v38    # "param2":I
    add-int/lit8 v11, v43, 0x2

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v39

    .line 375
    .restart local v39    # "param3":I
    new-instance v10, Lgnu/kawa/functions/LispTabulateFormat;

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v41

    invoke-direct {v10, v0, v1, v2, v3}, Lgnu/kawa/functions/LispTabulateFormat;-><init>(IIIZ)V

    .line 376
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 378
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v37    # "param1":I
    .end local v38    # "param2":I
    .end local v39    # "param3":I
    :sswitch_6d4
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    .line 379
    .restart local v37    # "param1":I
    new-instance v10, Lgnu/kawa/functions/LispFreshlineFormat;

    move/from16 v0, v37

    invoke-direct {v10, v0}, Lgnu/kawa/functions/LispFreshlineFormat;-><init>(I)V

    .line 380
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 382
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v37    # "param1":I
    :sswitch_6e5
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    .line 383
    .restart local v37    # "param1":I
    const/high16 v11, -0x40000000    # -2.0f

    move/from16 v0, v37

    if-ne v0, v11, :cond_6f5

    .line 384
    const/16 v37, 0x0

    .line 385
    :cond_6f5
    move/from16 v0, v37

    move/from16 v1, v42

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispIndentFormat;->getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;

    move-result-object v10

    .line 386
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 388
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v37    # "param1":I
    :sswitch_6ff
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v37

    .line 389
    .restart local v37    # "param1":I
    const/high16 v11, -0x40000000    # -2.0f

    move/from16 v0, v37

    if-ne v0, v11, :cond_70f

    .line 390
    const/16 v37, 0x1

    .line 391
    :cond_70f
    if-eqz v42, :cond_725

    if-eqz v41, :cond_725

    const/16 v22, 0xa

    .line 393
    .restart local v22    # "charVal":I
    :goto_715
    if-eqz v41, :cond_728

    if-eqz v42, :cond_728

    const/16 v30, 0x52

    .line 397
    .local v30, "kind":I
    :goto_71b
    move/from16 v0, v37

    move/from16 v1, v30

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v10

    .line 398
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 391
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v22    # "charVal":I
    .end local v30    # "kind":I
    :cond_725
    const/16 v22, 0x20

    goto :goto_715

    .line 394
    .restart local v22    # "charVal":I
    :cond_728
    if-eqz v41, :cond_72d

    const/16 v30, 0x4d

    .restart local v30    # "kind":I
    goto :goto_71b

    .line 395
    .end local v30    # "kind":I
    :cond_72d
    if-eqz v42, :cond_732

    const/16 v30, 0x46

    .restart local v30    # "kind":I
    goto :goto_71b

    .line 396
    .end local v30    # "kind":I
    :cond_732
    const/16 v30, 0x4e

    .restart local v30    # "kind":I
    goto :goto_71b

    .line 400
    .end local v22    # "charVal":I
    .end local v30    # "kind":I
    .end local v37    # "param1":I
    :sswitch_735
    if-nez v36, :cond_740

    .line 402
    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    .line 407
    :cond_740
    :sswitch_740
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v24

    .line 408
    .local v24, "count":I
    const/high16 v11, -0x40000000    # -2.0f

    move/from16 v0, v24

    if-ne v0, v11, :cond_750

    .line 409
    const/16 v24, 0x1

    .line 411
    :cond_750
    add-int/lit8 v11, v43, 0x1

    move-object/from16 v0, v44

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v22

    .line 412
    .restart local v22    # "charVal":I
    const/high16 v11, -0x40000000    # -2.0f

    move/from16 v0, v22

    if-ne v0, v11, :cond_766

    .line 413
    const/16 v11, 0x7c

    move/from16 v0, v21

    if-ne v0, v11, :cond_772

    const/16 v22, 0xc

    .line 414
    :cond_766
    :goto_766
    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1, v11, v12}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v10

    .line 416
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 413
    .end local v10    # "fmt":Ljava/text/Format;
    :cond_772
    const/16 v22, 0x7e

    goto :goto_766

    .line 418
    .end local v22    # "charVal":I
    .end local v24    # "count":I
    :sswitch_775
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v24

    .line 419
    .restart local v24    # "count":I
    const/high16 v11, -0x40000000    # -2.0f

    move/from16 v0, v24

    if-ne v0, v11, :cond_785

    .line 420
    const/16 v24, 0x1

    .line 421
    :cond_785
    const/16 v11, 0x4c

    move/from16 v0, v24

    invoke-static {v0, v11}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v10

    .line 423
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .line 432
    .end local v10    # "fmt":Ljava/text/Format;
    .end local v21    # "ch":C
    .end local v24    # "count":I
    .end local v36    # "numParams":I
    .end local v41    # "seenAt":Z
    .end local v42    # "seenColon":Z
    .end local v43    # "speci":I
    :cond_78f
    if-ltz v46, :cond_79b

    .line 434
    new-instance v11, Ljava/text/ParseException;

    const-string v12, "missing ~] or ~}"

    move/from16 v0, v29

    invoke-direct {v11, v12, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 436
    :cond_79b
    invoke-virtual/range {v44 .. v44}, Ljava/util/Stack;->size()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lgnu/kawa/functions/LispFormat;->length:I

    .line 437
    move-object/from16 v0, p0

    iget v11, v0, Lgnu/kawa/functions/LispFormat;->length:I

    new-array v11, v11, [Ljava/text/Format;

    move-object/from16 v0, p0

    iput-object v11, v0, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    .line 438
    move-object/from16 v0, p0

    iget-object v11, v0, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 439
    return-void

    .end local v29    # "i":I
    .restart local v21    # "ch":C
    .restart local v28    # "i":I
    .restart local v36    # "numParams":I
    .restart local v41    # "seenAt":Z
    .restart local v42    # "seenColon":Z
    .restart local v43    # "speci":I
    :cond_7b7
    move/from16 v29, v28

    .end local v28    # "i":I
    .restart local v29    # "i":I
    goto/16 :goto_691

    .restart local v27    # "fmt":Ljava/text/Format;
    :cond_7bb
    move-object/from16 v10, v27

    .end local v27    # "fmt":Ljava/text/Format;
    .restart local v10    # "fmt":Ljava/text/Format;
    goto/16 :goto_1c2

    .end local v10    # "fmt":Ljava/text/Format;
    .end local v36    # "numParams":I
    .end local v41    # "seenAt":Z
    .end local v42    # "seenColon":Z
    :cond_7bf
    move/from16 v28, v29

    .end local v29    # "i":I
    .restart local v28    # "i":I
    goto/16 :goto_8c

    .end local v28    # "i":I
    .restart local v29    # "i":I
    .restart local v34    # "neg":Z
    :cond_7c3
    move/from16 v28, v29

    .end local v29    # "i":I
    .restart local v28    # "i":I
    goto/16 :goto_d9

    .line 110
    nop

    :sswitch_data_7c8
    .sparse-switch
        0xa -> :sswitch_686
        0x21 -> :sswitch_6a7
        0x24 -> :sswitch_1f6
        0x25 -> :sswitch_775
        0x26 -> :sswitch_6d4
        0x28 -> :sswitch_2f7
        0x29 -> :sswitch_32d
        0x2a -> :sswitch_2e4
        0x3b -> :sswitch_591
        0x3c -> :sswitch_403
        0x3e -> :sswitch_44f
        0x3f -> :sswitch_36a
        0x41 -> :sswitch_287
        0x42 -> :sswitch_181
        0x43 -> :sswitch_2ca
        0x44 -> :sswitch_181
        0x45 -> :sswitch_1f6
        0x46 -> :sswitch_1f6
        0x47 -> :sswitch_1f6
        0x49 -> :sswitch_6e5
        0x4f -> :sswitch_181
        0x50 -> :sswitch_1ed
        0x52 -> :sswitch_181
        0x53 -> :sswitch_287
        0x54 -> :sswitch_6ad
        0x57 -> :sswitch_287
        0x58 -> :sswitch_181
        0x59 -> :sswitch_287
        0x5b -> :sswitch_53e
        0x5d -> :sswitch_601
        0x5e -> :sswitch_661
        0x5f -> :sswitch_6ff
        0x7b -> :sswitch_383
        0x7c -> :sswitch_740
        0x7d -> :sswitch_3bb
        0x7e -> :sswitch_735
    .end sparse-switch
.end method

.method public static asArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 535
    instance-of v7, p0, [Ljava/lang/Object;

    if-eqz v7, :cond_a

    .line 536
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "arg":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    .line 557
    .local v0, "arr":[Ljava/lang/Object;
    .local v1, "count":I
    .local v2, "i":I
    :goto_9
    return-object p0

    .line 537
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_a
    instance-of v7, p0, Lgnu/lists/Sequence;

    if-nez v7, :cond_10

    move-object p0, v8

    .line 538
    goto :goto_9

    :cond_10
    move-object v7, p0

    .line 539
    check-cast v7, Lgnu/lists/Sequence;

    invoke-interface {v7}, Lgnu/lists/Sequence;->size()I

    move-result v1

    .line 540
    .restart local v1    # "count":I
    new-array v0, v1, [Ljava/lang/Object;

    .line 541
    .restart local v0    # "arr":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 542
    .restart local v2    # "i":I
    :goto_1a
    instance-of v7, p0, Lgnu/lists/Pair;

    if-eqz v7, :cond_2f

    move-object v5, p0

    .line 544
    check-cast v5, Lgnu/lists/Pair;

    .line 545
    .local v5, "pair":Lgnu/lists/Pair;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v2

    .line 546
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    move v2, v3

    .line 547
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1a

    .line 548
    .end local v5    # "pair":Lgnu/lists/Pair;
    :cond_2f
    if-ge v2, v1, :cond_48

    .line 550
    instance-of v7, p0, Lgnu/lists/Sequence;

    if-nez v7, :cond_37

    move-object p0, v8

    .line 551
    goto :goto_9

    .line 552
    :cond_37
    move v4, v2

    .local v4, "npairs":I
    move-object v6, p0

    .line 553
    check-cast v6, Lgnu/lists/Sequence;

    .line 554
    .local v6, "seq":Lgnu/lists/Sequence;
    :goto_3b
    if-ge v2, v1, :cond_48

    .line 555
    add-int v7, v4, v2

    invoke-interface {v6, v7}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v2

    .line 554
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .end local v4    # "npairs":I
    .end local v6    # "seq":Lgnu/lists/Sequence;
    :cond_48
    move-object p0, v0

    .line 557
    goto :goto_9
.end method

.method static getFormats(Ljava/util/Vector;II)[Ljava/text/Format;
    .registers 7
    .param p0, "vector"    # Ljava/util/Vector;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 443
    sub-int v2, p2, p1

    new-array v0, v2, [Ljava/text/Format;

    .line 444
    .local v0, "f":[Ljava/text/Format;
    move v1, p1

    .local v1, "i":I
    :goto_5
    if-ge v1, p2, :cond_14

    .line 445
    sub-int v3, v1, p1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v0, v3

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 446
    :cond_14
    return-object v0
.end method

.method public static getParam(Ljava/util/Vector;I)I
    .registers 5
    .param p0, "vec"    # Ljava/util/Vector;
    .param p1, "index"    # I

    .prologue
    const/high16 v1, -0x40000000    # -2.0f

    .line 519
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_9

    .line 528
    :cond_8
    :goto_8
    return v1

    .line 521
    :cond_9
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "arg":Ljava/lang/Object;
    const-string v2, "<from list>"

    if-ne v0, v2, :cond_14

    .line 523
    const/high16 v1, -0x60000000

    goto :goto_8

    .line 524
    :cond_14
    const-string v2, "<from count>"

    if-ne v0, v2, :cond_1b

    .line 525
    const/high16 v1, -0x50000000

    goto :goto_8

    .line 526
    :cond_1b
    const-string v2, "<unspecified>"

    if-eq v0, v2, :cond_8

    .line 528
    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/lang/Object;I)I

    move-result v1

    goto :goto_8
.end method

.method static popFormats(Ljava/util/Vector;II)Ljava/text/Format;
    .registers 5
    .param p0, "vector"    # Ljava/util/Vector;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 452
    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_e

    .line 453
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .line 456
    .local v0, "f":Ljava/text/Format;
    :goto_a
    invoke-virtual {p0, p1}, Ljava/util/Vector;->setSize(I)V

    .line 457
    return-object v0

    .line 455
    .end local v0    # "f":Ljava/text/Format;
    :cond_e
    new-instance v0, Lgnu/text/CompoundFormat;

    invoke-static {p0, p1, p2}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    .restart local v0    # "f":Ljava/text/Format;
    goto :goto_a
.end method

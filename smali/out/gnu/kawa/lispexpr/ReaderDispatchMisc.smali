.class public Lgnu/kawa/lispexpr/ReaderDispatchMisc;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatchMisc.java"


# static fields
.field private static instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;


# instance fields
.field protected code:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 33
    iput p1, p0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    .line 34
    return-void
.end method

.method public static getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->instance:Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    return-object v0
.end method

.method public static readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;
    .registers 13
    .param p0, "in"    # Lgnu/text/Lexer;
    .param p1, "ch"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    .line 213
    iget v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 214
    .local v6, "startPos":I
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v4

    .line 215
    .local v4, "port":Lgnu/text/LineBufferedReader;
    const/4 v5, 0x0

    .line 216
    .local v5, "saveReadState":C
    const/4 v2, 0x0

    .line 217
    .local v2, "flags":I
    instance-of v7, v4, Lgnu/mapping/InPort;

    if-eqz v7, :cond_1a

    move-object v7, v4

    .line 219
    check-cast v7, Lgnu/mapping/InPort;

    iget-char v5, v7, Lgnu/mapping/InPort;->readState:C

    move-object v7, v4

    .line 220
    check-cast v7, Lgnu/mapping/InPort;

    const/16 v8, 0x2f

    iput-char v8, v7, Lgnu/mapping/InPort;->readState:C

    .line 228
    :cond_1a
    :goto_1a
    :try_start_1a
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 229
    .local v1, "c":I
    if-gez v1, :cond_25

    .line 230
    const-string v7, "unexpected EOF in regex literal"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 231
    :cond_25
    if-ne v1, p1, :cond_4f

    .line 250
    new-instance v3, Ljava/lang/String;

    iget-object v7, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v8, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v8, v6

    invoke-direct {v3, v7, v6, v8}, Ljava/lang/String;-><init>([CII)V

    .line 254
    .local v3, "pattern":Ljava/lang/String;
    :goto_31
    invoke-virtual {p0}, Lgnu/text/Lexer;->peek()I

    move-result v1

    .line 255
    const/16 v7, 0x69

    if-eq v1, v7, :cond_3d

    const/16 v7, 0x49

    if-ne v1, v7, :cond_86

    .line 256
    :cond_3d
    or-int/lit8 v2, v2, 0x42

    .line 276
    :goto_3f
    invoke-virtual {p0}, Lgnu/text/Lexer;->skip()V
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_43

    goto :goto_31

    .line 282
    .end local v1    # "c":I
    .end local v3    # "pattern":Ljava/lang/String;
    :catchall_43
    move-exception v7

    iput v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    instance-of v8, v4, Lgnu/mapping/InPort;

    if-eqz v8, :cond_4e

    .line 284
    check-cast v4, Lgnu/mapping/InPort;

    .end local v4    # "port":Lgnu/text/LineBufferedReader;
    iput-char v5, v4, Lgnu/mapping/InPort;->readState:C

    :cond_4e
    throw v7

    .line 233
    .restart local v1    # "c":I
    .restart local v4    # "port":Lgnu/text/LineBufferedReader;
    :cond_4f
    if-ne v1, v9, :cond_82

    .line 235
    :try_start_51
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    .line 236
    const/16 v7, 0x20

    if-eq v1, v7, :cond_65

    const/16 v7, 0x9

    if-eq v1, v7, :cond_65

    const/16 v7, 0xd

    if-eq v1, v7, :cond_65

    const/16 v7, 0xa

    if-ne v1, v7, :cond_74

    :cond_65
    instance-of v7, p0, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v7, :cond_74

    .line 239
    move-object v0, p0

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v7, v0

    invoke-virtual {v7, v1}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v1

    .line 240
    const/4 v7, -0x2

    if-eq v1, v7, :cond_1a

    .line 243
    :cond_74
    if-gez v1, :cond_7b

    .line 244
    const-string v7, "unexpected EOF in regex literal"

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 245
    :cond_7b
    if-eq v1, p1, :cond_82

    .line 246
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 248
    :cond_82
    invoke-virtual {p0, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    goto :goto_1a

    .line 257
    .restart local v3    # "pattern":Ljava/lang/String;
    :cond_86
    const/16 v7, 0x73

    if-eq v1, v7, :cond_8e

    const/16 v7, 0x53

    if-ne v1, v7, :cond_91

    .line 258
    :cond_8e
    or-int/lit8 v2, v2, 0x20

    goto :goto_3f

    .line 259
    :cond_91
    const/16 v7, 0x6d

    if-eq v1, v7, :cond_99

    const/16 v7, 0x4d

    if-ne v1, v7, :cond_9c

    .line 260
    :cond_99
    or-int/lit8 v2, v2, 0x8

    goto :goto_3f

    .line 270
    :cond_9c
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unrecognized regex option \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-char v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_3f

    .line 278
    :cond_c0
    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_c3
    .catchall {:try_start_51 .. :try_end_c3} :catchall_43

    move-result-object v7

    .line 282
    iput v6, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 283
    instance-of v8, v4, Lgnu/mapping/InPort;

    if-eqz v8, :cond_ce

    .line 284
    check-cast v4, Lgnu/mapping/InPort;

    .end local v4    # "port":Lgnu/text/LineBufferedReader;
    iput-char v5, v4, Lgnu/mapping/InPort;->readState:C

    :cond_ce
    return-object v7
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .registers 29
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 39
    move-object/from16 v19, p1

    check-cast v19, Lgnu/kawa/lispexpr/LispReader;

    .line 40
    .local v19, "reader":Lgnu/kawa/lispexpr/LispReader;
    const/16 v20, 0x0

    .line 44
    .local v20, "saveReadState":C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 v22, v0

    if-ltz v22, :cond_14

    .line 45
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->code:I

    move/from16 p2, v0

    .line 46
    :cond_14
    sparse-switch p2, :sswitch_data_330

    .line 204
    const-string v22, "An invalid #-construct was read."

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 205
    sget-object v14, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :cond_22
    :goto_22
    return-object v14

    .line 51
    :sswitch_23
    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v21, v0

    .line 52
    .local v21, "startPos":I
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v22

    const/16 v23, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 53
    move-object/from16 v0, v19

    iget v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v22, v0

    sub-int v9, v22, v21

    .line 54
    .local v9, "length":I
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v13, v0, v1, v9}, Ljava/lang/String;-><init>([CII)V

    .line 55
    .local v13, "name":Ljava/lang/String;
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 56
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v14

    goto :goto_22

    .line 58
    .end local v9    # "length":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v21    # "startPos":I
    :sswitch_64
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_22

    .line 60
    :sswitch_69
    invoke-static/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_22

    .line 62
    :sswitch_6e
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_22

    .line 64
    :sswitch_71
    invoke-virtual/range {p1 .. p1}, Lgnu/text/Lexer;->peek()I

    move-result p2

    .line 65
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->isDigit(C)Z

    move-result v22

    if-eqz v22, :cond_8b

    .line 66
    const/16 v22, 0x46

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v14

    goto :goto_22

    .line 67
    :cond_8b
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_22

    .line 70
    :sswitch_8e
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-static {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;

    move-result-object v14

    goto :goto_22

    .line 72
    :sswitch_9c
    const/16 v22, 0x24

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_ca

    .line 74
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "the radix "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is too big (max is 36)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 75
    const/16 p3, 0x24

    .line 77
    :cond_ca
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 79
    :sswitch_d8
    const/16 v22, 0x0

    const/16 v23, 0x10

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 81
    :sswitch_e8
    const/16 v22, 0x0

    const/16 v23, 0xa

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 83
    :sswitch_f8
    const/16 v22, 0x0

    const/16 v23, 0x8

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 85
    :sswitch_108
    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 88
    :sswitch_118
    const/16 v22, 0x23

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 89
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 90
    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 93
    :sswitch_138
    invoke-static/range {p1 .. p3}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->readRegex(Lgnu/text/Lexer;II)Ljava/util/regex/Pattern;

    move-result-object v14

    goto/16 :goto_22

    .line 96
    :sswitch_13e
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v17

    .line 97
    .local v17, "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_160

    move-object/from16 v22, v17

    .line 99
    check-cast v22, Lgnu/mapping/InPort;

    move-object/from16 v0, v22

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v20, v0

    move-object/from16 v22, v17

    .line 100
    check-cast v22, Lgnu/mapping/InPort;

    const/16 v23, 0x7c

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 104
    :cond_160
    const/16 v22, 0x23

    const/16 v23, 0x7c

    :try_start_164
    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V
    :try_end_16d
    .catchall {:try_start_164 .. :try_end_16d} :catchall_181

    .line 108
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_17d

    .line 109
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17    # "port":Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 111
    :cond_17d
    sget-object v14, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_22

    .line 108
    .restart local v17    # "port":Lgnu/text/LineBufferedReader;
    :catchall_181
    move-exception v22

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v23, v0

    if-eqz v23, :cond_192

    .line 109
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17    # "port":Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_192
    throw v22

    .line 113
    :sswitch_193
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v17

    .line 114
    .restart local v17    # "port":Lgnu/text/LineBufferedReader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_1b5

    move-object/from16 v22, v17

    .line 116
    check-cast v22, Lgnu/mapping/InPort;

    move-object/from16 v0, v22

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    move/from16 v20, v0

    move-object/from16 v22, v17

    .line 117
    check-cast v22, Lgnu/mapping/InPort;

    const/16 v23, 0x3b

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 121
    :cond_1b5
    :try_start_1b5
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;
    :try_end_1b8
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_1cc

    .line 125
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v22, v0

    if-eqz v22, :cond_1c8

    .line 126
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17    # "port":Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 128
    :cond_1c8
    sget-object v14, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_22

    .line 125
    .restart local v17    # "port":Lgnu/text/LineBufferedReader;
    :catchall_1cc
    move-exception v22

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/InPort;

    move/from16 v23, v0

    if-eqz v23, :cond_1dd

    .line 126
    check-cast v17, Lgnu/mapping/InPort;

    .end local v17    # "port":Lgnu/text/LineBufferedReader;
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput-char v0, v1, Lgnu/mapping/InPort;->readState:C

    :cond_1dd
    throw v22

    .line 130
    :sswitch_1de
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v17

    .line 132
    .restart local v17    # "port":Lgnu/text/LineBufferedReader;
    invoke-virtual/range {v17 .. v17}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v22

    const/16 v23, 0x28

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d3

    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v11

    .local v11, "list":Ljava/lang/Object;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v11, v0}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v9

    .restart local v9    # "length":I
    if-lez v9, :cond_2d3

    move-object/from16 v22, v11

    check-cast v22, Lgnu/lists/Pair;

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v22, v0

    if-eqz v22, :cond_2d3

    move-object/from16 v22, v11

    .line 138
    check-cast v22, Lgnu/lists/Pair;

    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 139
    .restart local v13    # "name":Ljava/lang/String;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lgnu/kawa/lispexpr/ReadTable;->getReaderCtor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 140
    .local v18, "proc":Ljava/lang/Object;
    if-nez v18, :cond_244

    .line 141
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unknown reader constructor "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 173
    .end local v9    # "length":I
    .end local v11    # "list":Ljava/lang/Object;
    .end local v13    # "name":Ljava/lang/String;
    .end local v18    # "proc":Ljava/lang/Object;
    :goto_240
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_22

    .line 142
    .restart local v9    # "length":I
    .restart local v11    # "list":Ljava/lang/Object;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v18    # "proc":Ljava/lang/Object;
    :cond_244
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v22, v0

    if-nez v22, :cond_25e

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v22, v0

    if-nez v22, :cond_25e

    .line 143
    const-string v22, "reader constructor must be procedure or type name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto :goto_240

    .line 146
    :cond_25e
    add-int/lit8 v9, v9, -0x1

    .line 147
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v22, v0

    if-eqz v22, :cond_28b

    const/16 v16, 0x1

    .line 148
    .local v16, "parg":I
    :goto_26a
    add-int v22, v16, v9

    move/from16 v0, v22

    new-array v5, v0, [Ljava/lang/Object;

    .line 149
    .local v5, "args":[Ljava/lang/Object;
    check-cast v11, Lgnu/lists/Pair;

    .end local v11    # "list":Ljava/lang/Object;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 150
    .local v4, "argList":Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_277
    if-ge v7, v9, :cond_28e

    move-object v15, v4

    .line 152
    check-cast v15, Lgnu/lists/Pair;

    .line 153
    .local v15, "pair":Lgnu/lists/Pair;
    add-int v22, v16, v7

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    aput-object v23, v5, v22

    .line 154
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 150
    add-int/lit8 v7, v7, 0x1

    goto :goto_277

    .line 147
    .end local v4    # "argList":Ljava/lang/Object;
    .end local v5    # "args":[Ljava/lang/Object;
    .end local v7    # "i":I
    .end local v15    # "pair":Lgnu/lists/Pair;
    .end local v16    # "parg":I
    .restart local v11    # "list":Ljava/lang/Object;
    :cond_28b
    const/16 v16, 0x0

    goto :goto_26a

    .line 158
    .end local v11    # "list":Ljava/lang/Object;
    .restart local v4    # "argList":Ljava/lang/Object;
    .restart local v5    # "args":[Ljava/lang/Object;
    .restart local v7    # "i":I
    .restart local v16    # "parg":I
    :cond_28e
    if-lez v16, :cond_29e

    .line 160
    const/16 v22, 0x0

    :try_start_292
    aput-object v18, v5, v22

    .line 161
    sget-object v22, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto/16 :goto_22

    .line 163
    :cond_29e
    check-cast v18, Lgnu/mapping/Procedure;

    .end local v18    # "proc":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a5
    .catch Ljava/lang/Throwable; {:try_start_292 .. :try_end_2a5} :catch_2a8

    move-result-object v14

    goto/16 :goto_22

    .line 165
    :catch_2a8
    move-exception v6

    .line 167
    .local v6, "ex":Ljava/lang/Throwable;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "caught "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " applying reader constructor "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_240

    .line 172
    .end local v4    # "argList":Ljava/lang/Object;
    .end local v5    # "args":[Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "i":I
    .end local v9    # "length":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "parg":I
    :cond_2d3
    const-string v22, "a non-empty list starting with a symbol must follow #,"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    goto/16 :goto_240

    .line 175
    .end local v17    # "port":Lgnu/text/LineBufferedReader;
    :sswitch_2de
    invoke-virtual/range {v19 .. v19}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v14

    .line 176
    .local v14, "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/lispexpr/LispReader;

    move/from16 v22, v0

    if-eqz v22, :cond_22

    move-object/from16 v10, p1

    .line 178
    check-cast v10, Lgnu/kawa/lispexpr/LispReader;

    .line 179
    .local v10, "lin":Lgnu/kawa/lispexpr/LispReader;
    iget-object v12, v10, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 180
    .local v12, "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v12, :cond_2f9

    .line 182
    new-instance v12, Lgnu/kawa/util/GeneralHashTable;

    .end local v12    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v12}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 183
    .restart local v12    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iput-object v12, v10, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 185
    :cond_2f9
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v14}, Lgnu/kawa/util/GeneralHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    .line 189
    .end local v10    # "lin":Lgnu/kawa/lispexpr/LispReader;
    .end local v12    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v14    # "object":Ljava/lang/Object;
    :sswitch_304
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/lispexpr/LispReader;

    move/from16 v22, v0

    if-eqz v22, :cond_322

    move-object/from16 v10, p1

    .line 191
    check-cast v10, Lgnu/kawa/lispexpr/LispReader;

    .line 192
    .restart local v10    # "lin":Lgnu/kawa/lispexpr/LispReader;
    iget-object v12, v10, Lgnu/kawa/lispexpr/LispReader;->sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;

    .line 193
    .restart local v12    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v12, :cond_322

    .line 195
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 196
    .local v8, "key":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v12, v8, v0}, Lgnu/kawa/util/GeneralHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 197
    .restart local v14    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    if-ne v14, v0, :cond_22

    .line 201
    .end local v8    # "key":Ljava/lang/Integer;
    .end local v10    # "lin":Lgnu/kawa/lispexpr/LispReader;
    .end local v12    # "map":Lgnu/kawa/util/GeneralHashTable;, "Lgnu/kawa/util/GeneralHashTable<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v14    # "object":Ljava/lang/Object;
    :cond_322
    const-string v22, "an unrecognized #n# back-reference was read"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 202
    sget-object v14, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_22

    .line 46
    nop

    :sswitch_data_330
    .sparse-switch
        0x21 -> :sswitch_69
        0x23 -> :sswitch_304
        0x2c -> :sswitch_1de
        0x2f -> :sswitch_138
        0x3a -> :sswitch_23
        0x3b -> :sswitch_193
        0x3d -> :sswitch_2de
        0x42 -> :sswitch_108
        0x44 -> :sswitch_e8
        0x45 -> :sswitch_118
        0x46 -> :sswitch_71
        0x49 -> :sswitch_118
        0x4f -> :sswitch_f8
        0x52 -> :sswitch_9c
        0x53 -> :sswitch_8e
        0x54 -> :sswitch_6e
        0x55 -> :sswitch_8e
        0x58 -> :sswitch_d8
        0x5c -> :sswitch_64
        0x7c -> :sswitch_13e
    .end sparse-switch
.end method

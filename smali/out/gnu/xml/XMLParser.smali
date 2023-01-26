.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final ATTRIBUTE_SEEN_EQ_STATE:I = 0xb

.field private static final ATTRIBUTE_SEEN_NAME_STATE:I = 0x8

.field static final BAD_ENCODING_SYNTAX:Ljava/lang/String; = "bad \'encoding\' declaration"

.field static final BAD_STANDALONE_SYNTAX:Ljava/lang/String; = "bad \'standalone\' declaration"

.field private static final BEGIN_ELEMENT_STATE:I = 0x2

.field private static final DOCTYPE_NAME_SEEN_STATE:I = 0x10

.field private static final DOCTYPE_SEEN_STATE:I = 0xd

.field private static final END_ELEMENT_STATE:I = 0x4

.field private static final EXPECT_NAME_MODIFIER:I = 0x1

.field private static final EXPECT_RIGHT_STATE:I = 0x1b

.field private static final INIT_LEFT_QUEST_STATE:I = 0x1e

.field private static final INIT_LEFT_STATE:I = 0x22

.field private static final INIT_STATE:I = 0x0

.field private static final INIT_TEXT_STATE:I = 0x1f

.field private static final INVALID_VERSION_DECL:I = 0x23

.field private static final MAYBE_ATTRIBUTE_STATE:I = 0xa

.field private static final PREV_WAS_CR_STATE:I = 0x1c

.field private static final SAW_AMP_SHARP_STATE:I = 0x1a

.field private static final SAW_AMP_STATE:I = 0x19

.field private static final SAW_ENTITY_REF:I = 0x6

.field private static final SAW_EOF_ERROR:I = 0x25

.field private static final SAW_ERROR:I = 0x24

.field private static final SAW_LEFT_EXCL_MINUS_STATE:I = 0x16

.field private static final SAW_LEFT_EXCL_STATE:I = 0x14

.field private static final SAW_LEFT_QUEST_STATE:I = 0x15

.field private static final SAW_LEFT_SLASH_STATE:I = 0x13

.field private static final SAW_LEFT_STATE:I = 0xe

.field private static final SKIP_SPACES_MODIFIER:I = 0x2

.field private static final TEXT_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .registers 16
    .param p0, "strm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3c

    const/4 v13, 0x2

    const/16 v12, 0x3f

    const/4 v11, 0x0

    const/4 v4, -0x1

    .line 64
    new-instance v6, Lgnu/text/LineInputStreamReader;

    invoke-direct {v6, p0}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v6, "in":Lgnu/text/LineInputStreamReader;
    invoke-virtual {v6}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v1

    .line 69
    .local v1, "b1":I
    if-gez v1, :cond_2f

    move v2, v4

    .line 70
    .local v2, "b2":I
    :goto_13
    if-gez v2, :cond_34

    move v3, v4

    .line 71
    .local v3, "b3":I
    :goto_16
    const/16 v10, 0xef

    if-ne v1, v10, :cond_39

    const/16 v10, 0xbb

    if-ne v2, v10, :cond_39

    const/16 v10, 0xbf

    if-ne v3, v10, :cond_39

    .line 73
    const/4 v10, 0x3

    invoke-virtual {v6, v10}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    const-string v10, "UTF-8"

    invoke-virtual {v6, v10}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    :goto_2b
    invoke-virtual {v6, v11}, Lgnu/text/LineInputStreamReader;->setKeepFullLines(Z)V

    .line 126
    return-object v6

    .line 69
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    :cond_2f
    invoke-virtual {v6}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v2

    goto :goto_13

    .line 70
    .restart local v2    # "b2":I
    :cond_34
    invoke-virtual {v6}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    goto :goto_16

    .line 76
    .restart local v3    # "b3":I
    :cond_39
    const/16 v10, 0xff

    if-ne v1, v10, :cond_4c

    const/16 v10, 0xfe

    if-ne v2, v10, :cond_4c

    if-eqz v3, :cond_4c

    .line 78
    invoke-virtual {v6, v13}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 79
    const-string v10, "UTF-16LE"

    invoke-virtual {v6, v10}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto :goto_2b

    .line 81
    :cond_4c
    const/16 v10, 0xfe

    if-ne v1, v10, :cond_5f

    const/16 v10, 0xff

    if-ne v2, v10, :cond_5f

    if-eqz v3, :cond_5f

    .line 83
    invoke-virtual {v6, v13}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 84
    const-string v10, "UTF-16BE"

    invoke-virtual {v6, v10}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto :goto_2b

    .line 88
    :cond_5f
    if-gez v3, :cond_79

    .line 89
    .local v4, "b4":I
    :goto_61
    const/16 v10, 0x4c

    if-ne v1, v10, :cond_7e

    const/16 v10, 0x6f

    if-ne v2, v10, :cond_7e

    const/16 v10, 0xa7

    if-ne v3, v10, :cond_7e

    const/16 v10, 0x94

    if-ne v4, v10, :cond_7e

    .line 90
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "XMLParser: EBCDIC encodings not supported"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 88
    .end local v4    # "b4":I
    :cond_79
    invoke-virtual {v6}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v4

    goto :goto_61

    .line 91
    .restart local v4    # "b4":I
    :cond_7e
    invoke-virtual {v6, v11}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 92
    if-ne v1, v14, :cond_93

    if-ne v2, v12, :cond_8d

    const/16 v10, 0x78

    if-ne v3, v10, :cond_8d

    const/16 v10, 0x6d

    if-eq v4, v10, :cond_9b

    :cond_8d
    if-nez v2, :cond_93

    if-ne v3, v12, :cond_93

    if-eqz v4, :cond_9b

    :cond_93
    if-nez v1, :cond_d3

    if-ne v2, v14, :cond_d3

    if-nez v3, :cond_d3

    if-ne v4, v12, :cond_d3

    .line 96
    :cond_9b
    iget-object v5, v6, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 97
    .local v5, "buffer":[C
    if-nez v5, :cond_a5

    .line 98
    const/16 v10, 0x2000

    new-array v5, v10, [C

    iput-object v5, v6, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 99
    :cond_a5
    const/4 v7, 0x0

    .line 100
    .local v7, "pos":I
    const/4 v9, 0x0

    .line 103
    .local v9, "quote":I
    :cond_a7
    :goto_a7
    invoke-virtual {v6}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v0

    .line 104
    .local v0, "b":I
    if-eqz v0, :cond_a7

    .line 106
    if-gez v0, :cond_b5

    .line 119
    :goto_af
    iput v11, v6, Lgnu/text/LineInputStreamReader;->pos:I

    .line 120
    iput v7, v6, Lgnu/text/LineInputStreamReader;->limit:I

    goto/16 :goto_2b

    .line 108
    :cond_b5
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "pos":I
    .local v8, "pos":I
    and-int/lit16 v10, v0, 0xff

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 109
    if-nez v9, :cond_cf

    .line 111
    const/16 v10, 0x3e

    if-ne v0, v10, :cond_c4

    move v7, v8

    .line 112
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_af

    .line 113
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_c4
    const/16 v10, 0x27

    if-eq v0, v10, :cond_cc

    const/16 v10, 0x22

    if-ne v0, v10, :cond_cd

    .line 114
    :cond_cc
    move v9, v0

    :cond_cd
    :goto_cd
    move v7, v8

    .line 118
    .end local v8    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_a7

    .line 116
    .end local v7    # "pos":I
    .restart local v8    # "pos":I
    :cond_cf
    if-ne v0, v9, :cond_cd

    .line 117
    const/4 v9, 0x0

    goto :goto_cd

    .line 123
    .end local v0    # "b":I
    .end local v5    # "buffer":[C
    .end local v8    # "pos":I
    .end local v9    # "quote":I
    :cond_d3
    const-string v10, "UTF-8"

    invoke-virtual {v6, v10}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_2b
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lgnu/xml/XMLFilter;

    invoke-direct {v0, p2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 144
    .local v0, "filter":Lgnu/xml/XMLFilter;
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    invoke-virtual {v0, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v1

    .line 148
    .local v1, "uri":Lgnu/text/Path;
    if-eqz v1, :cond_17

    .line 149
    invoke-virtual {v0, v1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_17
    invoke-static {p0, v0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 152
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .registers 4
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "filter"    # Lgnu/xml/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    invoke-virtual {p2, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 161
    .local v0, "uri":Lgnu/text/Path;
    if-eqz v0, :cond_12

    .line 162
    invoke-virtual {p2, v0}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_12
    invoke-static {p0, p2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->close()V

    .line 166
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .registers 28
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "out"    # Lgnu/xml/XMLFilter;

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 172
    .local v3, "buffer":[C
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v18, v0

    .line 173
    .local v18, "pos":I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move/from16 v16, v0

    .line 189
    .local v16, "limit":I
    const/16 v22, 0x0

    .line 194
    .local v22, "state":I
    const/16 v23, 0x3c

    .line 195
    .local v23, "terminator":C
    const/16 v10, 0xe

    .line 196
    .local v10, "continue_state":I
    const/16 v9, 0x20

    .line 197
    .local v9, "ch":C
    const/4 v5, 0x0

    .line 198
    .local v5, "length":I
    const/4 v6, -0x1

    .line 199
    .local v6, "dstart":I
    const/16 v17, 0x0

    .line 201
    .local v17, "message":Ljava/lang/String;
    move/from16 v4, v16

    .line 206
    .local v4, "start":I
    :goto_1e
    packed-switch v22, :pswitch_data_884

    :cond_21
    :pswitch_21
    move/from16 v19, v18

    .line 948
    .end local v18    # "pos":I
    .local v19, "pos":I
    :cond_23
    :goto_23
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_806

    .line 949
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    goto :goto_1e

    .line 209
    :pswitch_2e
    const/16 v22, 0x1

    .line 210
    const/16 v22, 0x1f

    move/from16 v19, v18

    .line 211
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto :goto_23

    .line 214
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_35
    const/16 v2, 0x3c

    if-ne v9, v2, :cond_3e

    .line 216
    const/16 v22, 0x22

    move/from16 v19, v18

    .line 217
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto :goto_23

    .line 219
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_3e
    const/16 v22, 0x1

    .line 220
    goto :goto_1e

    .line 223
    :pswitch_41
    const/16 v2, 0x3f

    if-ne v9, v2, :cond_4c

    .line 225
    move/from16 v4, v18

    .line 226
    const/16 v22, 0x21

    move/from16 v19, v18

    .line 227
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto :goto_23

    .line 229
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_4c
    const/16 v22, 0xe

    .line 230
    goto :goto_1e

    .line 233
    :pswitch_4f
    move/from16 v18, v6

    .line 234
    const-string v17, "invalid xml version specifier"

    .line 238
    :pswitch_53
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    const/16 v2, 0x65

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    :cond_62
    move/from16 v19, v18

    .line 242
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_6d

    move/from16 v18, v19

    .line 989
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :goto_6c
    return-void

    .line 244
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_6d
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    .line 245
    const/16 v2, 0x3e

    if-ne v9, v2, :cond_62

    .line 247
    const/16 v22, 0x1

    move/from16 v19, v18

    .line 248
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto :goto_23

    .line 253
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_7a
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 254
    const/16 v2, 0x66

    const-string v7, "unexpected end-of-file"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_6c

    .line 261
    :pswitch_8a
    add-int/lit8 v4, v18, -0x1

    .line 263
    move/from16 v5, v18

    move/from16 v19, v18

    .line 266
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :goto_90
    move/from16 v0, v23

    if-ne v9, v0, :cond_ac

    .line 268
    move/from16 v22, v10

    move/from16 v18, v19

    .line 337
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :goto_98
    sub-int v5, v18, v5

    .line 338
    if-lez v5, :cond_a7

    .line 340
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_a7
    array-length v4, v3

    move/from16 v19, v18

    .line 344
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 271
    :cond_ac
    const/16 v2, 0x26

    if-ne v9, v2, :cond_b5

    .line 273
    const/16 v22, 0x19

    move/from16 v18, v19

    .line 274
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto :goto_98

    .line 276
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_b5
    const/16 v2, 0xd

    if-ne v9, v2, :cond_115

    .line 278
    sub-int v5, v19, v5

    .line 279
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 280
    if-lez v5, :cond_c8

    .line 281
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 282
    :cond_c8
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_10e

    .line 284
    aget-char v9, v3, v19

    .line 285
    const/16 v2, 0xa

    if-ne v9, v2, :cond_ef

    .line 287
    move/from16 v4, v19

    .line 288
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    move/from16 v5, v18

    .line 306
    :goto_da
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move/from16 v19, v18

    .line 330
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_e4
    :goto_e4
    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_149

    .line 332
    add-int/lit8 v5, v5, -0x1

    move/from16 v18, v19

    .line 333
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto :goto_98

    .line 292
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_ef
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 293
    const/16 v2, 0x85

    if-ne v9, v2, :cond_fd

    .line 295
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    move/from16 v4, v19

    .line 296
    add-int/lit8 v5, v18, 0x1

    goto :goto_da

    .line 300
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_fd
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 301
    move/from16 v4, v19

    .line 302
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    move/from16 v5, v18

    move/from16 v19, v18

    .line 303
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto :goto_90

    .line 310
    :cond_10e
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 311
    const/16 v22, 0x1c

    .line 312
    goto/16 :goto_23

    .line 315
    :cond_115
    const/16 v2, 0x85

    if-eq v9, v2, :cond_11d

    const/16 v2, 0x2028

    if-ne v9, v2, :cond_13c

    .line 317
    :cond_11d
    sub-int v5, v19, v5

    .line 318
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 319
    if-lez v5, :cond_12c

    .line 320
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_12c
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 322
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 323
    add-int/lit8 v5, v19, 0x1

    .line 324
    move/from16 v4, v19

    goto :goto_e4

    .line 326
    :cond_13c
    const/16 v2, 0xa

    if-ne v9, v2, :cond_e4

    .line 328
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_e4

    .line 335
    :cond_149
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_90

    .line 349
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_151
    const/16 v22, 0x1

    .line 350
    const/16 v2, 0xa

    if-ne v9, v2, :cond_16d

    const/4 v2, 0x1

    move v7, v2

    :goto_159
    const/16 v2, 0x85

    if-ne v9, v2, :cond_170

    const/4 v2, 0x1

    :goto_15e
    or-int/2addr v2, v7

    if-eqz v2, :cond_172

    .line 352
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move/from16 v19, v18

    .line 353
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 350
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_16d
    const/4 v2, 0x0

    move v7, v2

    goto :goto_159

    :cond_170
    const/4 v2, 0x0

    goto :goto_15e

    .line 357
    :cond_172
    const/4 v2, 0x1

    add-int/lit8 v7, v18, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto/16 :goto_1e

    .line 367
    :pswitch_17c
    const/16 v2, 0x20

    if-eq v9, v2, :cond_21

    const/16 v2, 0x9

    if-ne v9, v2, :cond_188

    move/from16 v19, v18

    .line 368
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 369
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_188
    const/16 v2, 0xa

    if-eq v9, v2, :cond_198

    const/16 v2, 0xd

    if-eq v9, v2, :cond_198

    const/16 v2, 0x85

    if-eq v9, v2, :cond_198

    const/16 v2, 0x2028

    if-ne v9, v2, :cond_1a4

    .line 372
    :cond_198
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move/from16 v19, v18

    .line 373
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 376
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_1a4
    add-int/lit8 v22, v22, -0x2

    .line 377
    goto/16 :goto_1e

    .line 386
    :pswitch_1a8
    add-int/lit8 v5, v4, 0x1

    move/from16 v19, v18

    .line 399
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :goto_1ac
    const/16 v2, 0x61

    if-lt v9, v2, :cond_1b4

    const/16 v2, 0x7a

    if-le v9, v2, :cond_22b

    :cond_1b4
    const/16 v2, 0x41

    if-lt v9, v2, :cond_1bc

    const/16 v2, 0x5a

    if-le v9, v2, :cond_22b

    :cond_1bc
    const/16 v2, 0x5f

    if-eq v9, v2, :cond_22b

    const/16 v2, 0x3a

    if-eq v9, v2, :cond_22b

    const/16 v2, 0xc0

    if-lt v9, v2, :cond_203

    const/16 v2, 0x2ff

    if-le v9, v2, :cond_22b

    const/16 v2, 0x370

    if-lt v9, v2, :cond_203

    const/16 v2, 0x1fff

    if-gt v9, v2, :cond_1d8

    const/16 v2, 0x37e

    if-ne v9, v2, :cond_22b

    :cond_1d8
    const/16 v2, 0x200c

    if-lt v9, v2, :cond_203

    const/16 v2, 0x200d

    if-le v9, v2, :cond_22b

    const/16 v2, 0x2070

    if-lt v9, v2, :cond_1e8

    const/16 v2, 0x218f

    if-le v9, v2, :cond_22b

    :cond_1e8
    const/16 v2, 0x2c00

    if-lt v9, v2, :cond_1f0

    const/16 v2, 0x2fef

    if-le v9, v2, :cond_22b

    :cond_1f0
    const/16 v2, 0x3001

    if-lt v9, v2, :cond_1f9

    const v2, 0xd7ff

    if-le v9, v2, :cond_22b

    :cond_1f9
    const v2, 0xf900

    if-lt v9, v2, :cond_203

    const v2, 0xfffd

    if-le v9, v2, :cond_22b

    :cond_203
    move/from16 v0, v19

    if-le v0, v5, :cond_20f

    const/16 v2, 0x30

    if-lt v9, v2, :cond_20f

    const/16 v2, 0x39

    if-le v9, v2, :cond_22b

    :cond_20f
    const/16 v2, 0x2e

    if-eq v9, v2, :cond_22b

    const/16 v2, 0x2d

    if-eq v9, v2, :cond_22b

    const/16 v2, 0xb7

    if-eq v9, v2, :cond_22b

    const/16 v2, 0x300

    if-le v9, v2, :cond_239

    const/16 v2, 0x36f

    if-le v9, v2, :cond_22b

    const/16 v2, 0x203f

    if-lt v9, v2, :cond_239

    const/16 v2, 0x2040

    if-gt v9, v2, :cond_239

    .line 436
    :cond_22b
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 437
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_1ac

    .line 421
    :cond_239
    add-int/lit8 v22, v22, -0x1

    .line 422
    sub-int v5, v19, v5

    .line 423
    if-nez v5, :cond_878

    .line 425
    const/16 v2, 0x8

    move/from16 v0, v22

    if-ne v0, v2, :cond_24d

    .line 426
    const-string v17, "missing or invalid attribute name"

    .line 432
    :goto_247
    const/16 v22, 0x24

    move/from16 v18, v19

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 427
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_24d
    const/4 v2, 0x2

    move/from16 v0, v22

    if-eq v0, v2, :cond_257

    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_25a

    .line 429
    :cond_257
    const-string v17, "missing or invalid element name"

    goto :goto_247

    .line 431
    :cond_25a
    const-string v17, "missing or invalid name"

    goto :goto_247

    .line 452
    :cond_25d
    const/16 v2, 0x78

    if-ne v9, v2, :cond_287

    if-nez v6, :cond_287

    .line 453
    const/16 v6, 0x10

    .line 464
    :goto_265
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 465
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    move/from16 v19, v18

    .line 444
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :goto_271
    const/16 v2, 0x3b

    if-ne v9, v2, :cond_25d

    .line 446
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 447
    add-int/lit8 v2, v19, -0x1

    sub-int/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3, v4, v2}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    .line 449
    const/16 v22, 0x1

    .line 450
    goto/16 :goto_23

    .line 454
    :cond_287
    const/high16 v2, 0x8000000

    if-lt v5, v2, :cond_29e

    .line 469
    :cond_28b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 470
    const/16 v2, 0x65

    const-string v7, "invalid character reference"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 471
    const/16 v22, 0x1

    .line 472
    goto/16 :goto_23

    .line 458
    :cond_29e
    if-nez v6, :cond_2ad

    const/16 v8, 0xa

    .line 459
    .local v8, "base":I
    :goto_2a2
    invoke-static {v9, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    .line 460
    .local v11, "digit":I
    if-ltz v11, :cond_28b

    .line 462
    mul-int v2, v5, v8

    add-int v5, v2, v11

    goto :goto_265

    .end local v8    # "base":I
    .end local v11    # "digit":I
    :cond_2ad
    move v8, v6

    .line 458
    goto :goto_2a2

    .line 475
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_2af
    const/16 v2, 0x23

    if-ne v9, v2, :cond_2bd

    .line 477
    const/16 v22, 0x1a

    .line 478
    move/from16 v4, v18

    .line 479
    const/4 v5, 0x0

    .line 480
    const/4 v6, 0x0

    move/from16 v19, v18

    .line 481
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 483
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_2bd
    add-int/lit8 v4, v18, -0x1

    .line 484
    const/16 v22, 0x7

    .line 485
    goto/16 :goto_1e

    .line 488
    :pswitch_2c3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 489
    const/16 v2, 0x3b

    if-eq v9, v2, :cond_2d6

    .line 490
    const/16 v2, 0x77

    const-string v7, "missing \';\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_2d6
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    .line 492
    move/from16 v4, v16

    .line 493
    const/16 v22, 0x1

    move/from16 v19, v18

    .line 494
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 497
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_2e3
    const/16 v2, 0x2f

    if-ne v9, v2, :cond_2ed

    .line 499
    const/16 v22, 0x13

    move/from16 v19, v18

    .line 500
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 502
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_2ed
    const/16 v2, 0x3f

    if-ne v9, v2, :cond_2f9

    .line 504
    move/from16 v4, v18

    .line 505
    const/16 v22, 0x18

    move/from16 v19, v18

    .line 506
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 508
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_2f9
    const/16 v2, 0x21

    if-ne v9, v2, :cond_305

    .line 510
    const/16 v22, 0x14

    .line 511
    move/from16 v4, v18

    move/from16 v19, v18

    .line 512
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 515
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_305
    add-int/lit8 v4, v18, -0x1

    .line 516
    const/16 v22, 0x3

    .line 517
    goto/16 :goto_1e

    .line 519
    :pswitch_30b
    sub-int v2, v18, v5

    move-object/from16 v0, p0

    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    .line 521
    const/16 v22, 0xc

    .line 522
    move/from16 v4, v16

    .line 523
    goto/16 :goto_1e

    .line 527
    :pswitch_31c
    if-gez v6, :cond_874

    .line 528
    add-int/lit8 v6, v18, -0x1

    move/from16 v19, v18

    .line 532
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :goto_322
    const/16 v2, 0x3e

    if-ne v9, v2, :cond_5e0

    add-int/lit8 v13, v19, -0x2

    .local v13, "end":I
    aget-char v2, v3, v13

    const/16 v7, 0x3f

    if-ne v2, v7, :cond_5e0

    if-lt v13, v6, :cond_5e0

    .line 536
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 537
    const/4 v2, 0x3

    if-ne v5, v2, :cond_5d2

    aget-char v2, v3, v4

    const/16 v7, 0x78

    if-ne v2, v7, :cond_5d2

    add-int/lit8 v2, v4, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x6d

    if-ne v2, v7, :cond_5d2

    add-int/lit8 v2, v4, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x6c

    if-ne v2, v7, :cond_5d2

    .line 542
    const/16 v2, 0x1e

    move/from16 v0, v22

    if-ne v0, v2, :cond_5ca

    .line 544
    add-int/lit8 v2, v6, 0x7

    if-le v13, v2, :cond_38f

    aget-char v2, v3, v6

    const/16 v7, 0x76

    if-ne v2, v7, :cond_38f

    add-int/lit8 v2, v6, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x65

    if-ne v2, v7, :cond_38f

    add-int/lit8 v2, v6, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x72

    if-ne v2, v7, :cond_38f

    add-int/lit8 v2, v6, 0x3

    aget-char v2, v3, v2

    const/16 v7, 0x73

    if-ne v2, v7, :cond_38f

    add-int/lit8 v2, v6, 0x4

    aget-char v2, v3, v2

    const/16 v7, 0x69

    if-ne v2, v7, :cond_38f

    add-int/lit8 v2, v6, 0x5

    aget-char v2, v3, v2

    const/16 v7, 0x6f

    if-ne v2, v7, :cond_38f

    add-int/lit8 v2, v6, 0x6

    aget-char v2, v3, v2

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_397

    .line 553
    :cond_38f
    move/from16 v18, v6

    .line 554
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    const-string v17, "xml declaration without version"

    .line 555
    const/16 v22, 0x24

    .line 556
    goto/16 :goto_1e

    .line 558
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_397
    add-int/lit8 v6, v6, 0x7

    .line 559
    aget-char v9, v3, v6

    .line 561
    :goto_39b
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3a8

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_3a8

    .line 562
    aget-char v9, v3, v6

    goto :goto_39b

    .line 563
    :cond_3a8
    const/16 v2, 0x3d

    if-eq v9, v2, :cond_3b2

    .line 565
    const/16 v22, 0x23

    move/from16 v18, v19

    .line 566
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 568
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_3b2
    add-int/lit8 v6, v6, 0x1

    aget-char v9, v3, v6

    .line 570
    :goto_3b6
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3c3

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_3c3

    .line 571
    aget-char v9, v3, v6

    goto :goto_3b6

    .line 572
    :cond_3c3
    const/16 v2, 0x27

    if-eq v9, v2, :cond_3d1

    const/16 v2, 0x22

    if-eq v9, v2, :cond_3d1

    .line 574
    const/16 v22, 0x23

    move/from16 v18, v19

    .line 575
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 577
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_3d1
    move/from16 v20, v9

    .line 578
    .local v20, "quote":C
    add-int/lit8 v6, v6, 0x1

    move v15, v6

    .line 581
    .local v15, "i":I
    :goto_3d6
    if-ne v15, v13, :cond_3de

    .line 583
    const/16 v22, 0x23

    move/from16 v18, v19

    .line 584
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 586
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_3de
    aget-char v9, v3, v15

    .line 587
    move/from16 v0, v20

    if-ne v9, v0, :cond_411

    .line 590
    add-int/lit8 v2, v6, 0x3

    if-ne v15, v2, :cond_3fe

    aget-char v2, v3, v6

    const/16 v7, 0x31

    if-ne v2, v7, :cond_3fe

    add-int/lit8 v2, v6, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x2e

    if-ne v2, v7, :cond_3fe

    add-int/lit8 v2, v6, 0x2

    aget-char v9, v3, v2

    const/16 v2, 0x30

    if-eq v9, v2, :cond_402

    :cond_3fe
    const/16 v2, 0x31

    if-ne v9, v2, :cond_414

    .line 601
    :cond_402
    add-int/lit8 v6, v15, 0x1

    .line 603
    :goto_404
    if-ge v6, v13, :cond_41a

    aget-char v2, v3, v6

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_41a

    .line 604
    add-int/lit8 v6, v6, 0x1

    goto :goto_404

    .line 579
    :cond_411
    add-int/lit8 v15, v15, 0x1

    goto :goto_3d6

    .line 598
    :cond_414
    const/16 v22, 0x23

    move/from16 v18, v19

    .line 599
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 605
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_41a
    add-int/lit8 v2, v6, 0x7

    if-le v13, v2, :cond_4d5

    aget-char v2, v3, v6

    const/16 v7, 0x65

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x6e

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x63

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x3

    aget-char v2, v3, v2

    const/16 v7, 0x6f

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x4

    aget-char v2, v3, v2

    const/16 v7, 0x64

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x5

    aget-char v2, v3, v2

    const/16 v7, 0x69

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x6

    aget-char v2, v3, v2

    const/16 v7, 0x6e

    if-ne v2, v7, :cond_4d5

    add-int/lit8 v2, v6, 0x7

    aget-char v2, v3, v2

    const/16 v7, 0x67

    if-ne v2, v7, :cond_4d5

    .line 615
    add-int/lit8 v6, v6, 0x8

    .line 616
    aget-char v9, v3, v6

    .line 618
    :goto_460
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_46d

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_46d

    .line 619
    aget-char v9, v3, v6

    goto :goto_460

    .line 620
    :cond_46d
    const/16 v2, 0x3d

    if-eq v9, v2, :cond_479

    .line 622
    const-string v17, "bad \'encoding\' declaration"

    .line 623
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 624
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 626
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_479
    add-int/lit8 v6, v6, 0x1

    aget-char v9, v3, v6

    .line 628
    :goto_47d
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_48a

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_48a

    .line 629
    aget-char v9, v3, v6

    goto :goto_47d

    .line 630
    :cond_48a
    const/16 v2, 0x27

    if-eq v9, v2, :cond_49a

    const/16 v2, 0x22

    if-eq v9, v2, :cond_49a

    .line 632
    const-string v17, "bad \'encoding\' declaration"

    .line 633
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 634
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 636
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_49a
    move/from16 v20, v9

    .line 637
    add-int/lit8 v6, v6, 0x1

    move v15, v6

    .line 640
    :goto_49f
    if-ne v15, v13, :cond_4a9

    .line 642
    const-string v17, "bad \'encoding\' declaration"

    .line 643
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 644
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 646
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_4a9
    aget-char v9, v3, v15

    .line 647
    move/from16 v0, v20

    if-ne v9, v0, :cond_4d2

    .line 650
    new-instance v12, Ljava/lang/String;

    sub-int v2, v15, v6

    invoke-direct {v12, v3, v6, v2}, Ljava/lang/String;-><init>([CII)V

    .line 651
    .local v12, "encoding":Ljava/lang/String;
    move-object/from16 v0, p0

    instance-of v2, v0, Lgnu/text/LineInputStreamReader;

    if-eqz v2, :cond_4c3

    move-object/from16 v2, p0

    .line 652
    check-cast v2, Lgnu/text/LineInputStreamReader;

    invoke-virtual {v2, v12}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 653
    :cond_4c3
    add-int/lit8 v6, v15, 0x1

    .line 655
    :goto_4c5
    if-ge v6, v13, :cond_4d5

    aget-char v2, v3, v6

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4d5

    .line 656
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c5

    .line 638
    .end local v12    # "encoding":Ljava/lang/String;
    :cond_4d2
    add-int/lit8 v15, v15, 0x1

    goto :goto_49f

    .line 658
    :cond_4d5
    add-int/lit8 v2, v6, 0x9

    if-le v13, v2, :cond_5c0

    aget-char v2, v3, v6

    const/16 v7, 0x73

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x74

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x61

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x3

    aget-char v2, v3, v2

    const/16 v7, 0x6e

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x4

    aget-char v2, v3, v2

    const/16 v7, 0x64

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x5

    aget-char v2, v3, v2

    const/16 v7, 0x61

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x6

    aget-char v2, v3, v2

    const/16 v7, 0x6c

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x7

    aget-char v2, v3, v2

    const/16 v7, 0x6f

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x8

    aget-char v2, v3, v2

    const/16 v7, 0x6e

    if-ne v2, v7, :cond_5c0

    add-int/lit8 v2, v6, 0x9

    aget-char v2, v3, v2

    const/16 v7, 0x65

    if-ne v2, v7, :cond_5c0

    .line 670
    add-int/lit8 v6, v6, 0xa

    .line 671
    aget-char v9, v3, v6

    .line 673
    :goto_52b
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_538

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_538

    .line 674
    aget-char v9, v3, v6

    goto :goto_52b

    .line 675
    :cond_538
    const/16 v2, 0x3d

    if-eq v9, v2, :cond_544

    .line 677
    const-string v17, "bad \'standalone\' declaration"

    .line 678
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 679
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 681
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_544
    add-int/lit8 v6, v6, 0x1

    aget-char v9, v3, v6

    .line 683
    :goto_548
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_555

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v13, :cond_555

    .line 684
    aget-char v9, v3, v6

    goto :goto_548

    .line 685
    :cond_555
    const/16 v2, 0x27

    if-eq v9, v2, :cond_565

    const/16 v2, 0x22

    if-eq v9, v2, :cond_565

    .line 687
    const-string v17, "bad \'standalone\' declaration"

    .line 688
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 689
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 691
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_565
    move/from16 v20, v9

    .line 692
    add-int/lit8 v6, v6, 0x1

    move v15, v6

    .line 695
    :goto_56a
    if-ne v15, v13, :cond_574

    .line 697
    const-string v17, "bad \'standalone\' declaration"

    .line 698
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 699
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 701
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_574
    aget-char v9, v3, v15

    .line 702
    move/from16 v0, v20

    if-ne v9, v0, :cond_5a3

    .line 705
    add-int/lit8 v2, v6, 0x3

    if-ne v15, v2, :cond_5a6

    aget-char v2, v3, v6

    const/16 v7, 0x79

    if-ne v2, v7, :cond_5a6

    add-int/lit8 v2, v6, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x65

    if-ne v2, v7, :cond_5a6

    add-int/lit8 v2, v6, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x73

    if-ne v2, v7, :cond_5a6

    .line 722
    :cond_594
    add-int/lit8 v6, v15, 0x1

    .line 724
    :goto_596
    if-ge v6, v13, :cond_5c0

    aget-char v2, v3, v6

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_5c0

    .line 725
    add-int/lit8 v6, v6, 0x1

    goto :goto_596

    .line 693
    :cond_5a3
    add-int/lit8 v15, v15, 0x1

    goto :goto_56a

    .line 711
    :cond_5a6
    add-int/lit8 v2, v6, 0x2

    if-ne v15, v2, :cond_5b8

    aget-char v2, v3, v6

    const/16 v7, 0x6e

    if-ne v2, v7, :cond_5b8

    add-int/lit8 v2, v6, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x6f

    if-eq v2, v7, :cond_594

    .line 718
    :cond_5b8
    const-string v17, "bad \'standalone\' declaration"

    .line 719
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 720
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 727
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_5c0
    if-eq v13, v6, :cond_5d9

    .line 729
    const-string v17, "junk at end of xml declaration"

    .line 730
    move/from16 v18, v6

    .line 731
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    const/16 v22, 0x24

    .line 732
    goto/16 :goto_1e

    .line 737
    .end local v15    # "i":I
    .end local v18    # "pos":I
    .end local v20    # "quote":C
    .restart local v19    # "pos":I
    :cond_5ca
    const-string v17, "<?xml must be at start of file"

    .line 738
    const/16 v22, 0x24

    move/from16 v18, v19

    .line 739
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 743
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_5d2
    sub-int v7, v13, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    .line 745
    :cond_5d9
    move/from16 v4, v16

    .line 746
    const/4 v6, -0x1

    .line 747
    const/16 v22, 0x1

    .line 748
    goto/16 :goto_23

    .line 750
    .end local v13    # "end":I
    :cond_5e0
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 751
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_322

    .line 811
    :cond_5ee
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 812
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    move/from16 v19, v18

    .line 760
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :goto_5fa
    const/16 v2, 0x3e

    if-ne v9, v2, :cond_692

    .line 762
    add-int/lit8 v2, v19, -0x1

    sub-int v5, v2, v4

    .line 763
    const/4 v2, 0x4

    if-lt v5, v2, :cond_638

    aget-char v2, v3, v4

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_638

    add-int/lit8 v2, v4, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_638

    .line 767
    add-int/lit8 v2, v19, -0x2

    aget-char v2, v3, v2

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v19, -0x3

    aget-char v2, v3, v2

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5ee

    .line 770
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 771
    add-int/lit8 v2, v4, 0x2

    add-int/lit8 v7, v5, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v7}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 816
    :cond_632
    :goto_632
    move/from16 v4, v16

    .line 817
    const/16 v22, 0x1

    .line 818
    goto/16 :goto_23

    .line 775
    :cond_638
    const/4 v2, 0x6

    if-lt v5, v2, :cond_632

    aget-char v2, v3, v4

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_632

    add-int/lit8 v2, v4, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x43

    if-ne v2, v7, :cond_632

    add-int/lit8 v2, v4, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x44

    if-ne v2, v7, :cond_632

    add-int/lit8 v2, v4, 0x3

    aget-char v2, v3, v2

    const/16 v7, 0x41

    if-ne v2, v7, :cond_632

    add-int/lit8 v2, v4, 0x4

    aget-char v2, v3, v2

    const/16 v7, 0x54

    if-ne v2, v7, :cond_632

    add-int/lit8 v2, v4, 0x5

    aget-char v2, v3, v2

    const/16 v7, 0x41

    if-ne v2, v7, :cond_632

    add-int/lit8 v2, v4, 0x6

    aget-char v2, v3, v2

    const/16 v7, 0x5b

    if-ne v2, v7, :cond_632

    .line 784
    add-int/lit8 v2, v19, -0x2

    aget-char v2, v3, v2

    const/16 v7, 0x5d

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v19, -0x3

    aget-char v2, v3, v2

    const/16 v7, 0x5d

    if-ne v2, v7, :cond_5ee

    .line 787
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 788
    add-int/lit8 v2, v4, 0x7

    add-int/lit8 v7, v19, -0xa

    sub-int/2addr v7, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v7}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    goto :goto_632

    .line 798
    :cond_692
    add-int/lit8 v2, v4, 0x7

    move/from16 v0, v19

    if-ne v0, v2, :cond_5ee

    aget-char v2, v3, v4

    const/16 v7, 0x44

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v4, 0x1

    aget-char v2, v3, v2

    const/16 v7, 0x4f

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v4, 0x2

    aget-char v2, v3, v2

    const/16 v7, 0x43

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v4, 0x3

    aget-char v2, v3, v2

    const/16 v7, 0x54

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v4, 0x4

    aget-char v2, v3, v2

    const/16 v7, 0x59

    if-ne v2, v7, :cond_5ee

    add-int/lit8 v2, v4, 0x5

    aget-char v2, v3, v2

    const/16 v7, 0x50

    if-ne v2, v7, :cond_5ee

    const/16 v2, 0x45

    if-ne v9, v2, :cond_5ee

    .line 807
    move/from16 v4, v16

    .line 808
    const/16 v22, 0xf

    .line 809
    goto/16 :goto_23

    .line 821
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_6d0
    const/16 v22, 0x11

    .line 822
    add-int/lit8 v4, v18, -0x1

    .line 823
    goto/16 :goto_1e

    .line 826
    :pswitch_6d6
    if-gez v6, :cond_870

    .line 829
    add-int/lit8 v6, v18, -0x1

    .line 830
    sub-int/2addr v6, v4

    .line 831
    shl-int/lit8 v6, v6, 0x1

    .line 832
    const/16 v23, 0x0

    move/from16 v19, v18

    .line 836
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :goto_6e1
    const/16 v2, 0x27

    if-eq v9, v2, :cond_6e9

    const/16 v2, 0x22

    if-ne v9, v2, :cond_701

    .line 838
    :cond_6e9
    if-nez v23, :cond_6fa

    .line 839
    move/from16 v23, v9

    .line 864
    :cond_6ed
    :goto_6ed
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 865
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    aget-char v9, v3, v19

    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto :goto_6e1

    .line 840
    :cond_6fa
    move/from16 v0, v23

    if-ne v0, v9, :cond_6ed

    .line 841
    const/16 v23, 0x0

    goto :goto_6ed

    .line 843
    :cond_701
    if-nez v23, :cond_6ed

    .line 846
    const/16 v2, 0x5b

    if-ne v9, v2, :cond_70a

    .line 847
    or-int/lit8 v6, v6, 0x1

    goto :goto_6ed

    .line 848
    :cond_70a
    const/16 v2, 0x5d

    if-ne v9, v2, :cond_711

    .line 849
    and-int/lit8 v6, v6, -0x2

    goto :goto_6ed

    .line 850
    :cond_711
    const/16 v2, 0x3e

    if-ne v9, v2, :cond_6ed

    and-int/lit8 v2, v6, 0x1

    if-nez v2, :cond_6ed

    .line 852
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 853
    shr-int/lit8 v6, v6, 0x1

    .line 854
    add-int/2addr v6, v4

    .line 855
    add-int/lit8 v2, v19, -0x1

    sub-int v7, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    .line 857
    const/16 v23, 0x3c

    .line 858
    move/from16 v4, v16

    .line 859
    const/4 v6, -0x1

    .line 860
    const/16 v22, 0x1

    .line 861
    goto/16 :goto_23

    .line 871
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_734
    const/16 v23, 0x3c

    .line 872
    const/16 v10, 0xe

    .line 873
    const/16 v2, 0x2f

    if-ne v9, v2, :cond_756

    .line 875
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 877
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v2, v7, v1}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 878
    const/16 v22, 0x1b

    move/from16 v19, v18

    .line 879
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 881
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_756
    const/16 v2, 0x3e

    if-ne v9, v2, :cond_769

    .line 883
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 885
    const/16 v22, 0x1

    move/from16 v19, v18

    .line 886
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 888
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_769
    add-int/lit8 v4, v18, -0x1

    .line 889
    const/16 v22, 0x9

    .line 890
    goto/16 :goto_1e

    .line 892
    :pswitch_76f
    const/16 v2, 0x20

    if-eq v9, v2, :cond_21

    const/16 v2, 0x9

    if-eq v9, v2, :cond_21

    const/16 v2, 0xd

    if-eq v9, v2, :cond_21

    const/16 v2, 0xa

    if-eq v9, v2, :cond_21

    const/16 v2, 0x85

    if-eq v9, v2, :cond_21

    const/16 v2, 0x2028

    if-ne v9, v2, :cond_78b

    move/from16 v19, v18

    .line 894
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 895
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_78b
    sub-int v2, v18, v5

    move-object/from16 v0, p0

    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    .line 897
    move/from16 v4, v16

    .line 898
    const/16 v2, 0x3d

    if-ne v9, v2, :cond_7a2

    .line 900
    const/16 v22, 0xb

    move/from16 v19, v18

    .line 901
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 903
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_7a2
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 904
    const-string v17, "missing or misplaced \'=\' after attribute name"

    .line 905
    const/16 v22, 0x24

    .line 906
    goto/16 :goto_1e

    .line 908
    :pswitch_7ab
    const/16 v2, 0x27

    if-eq v9, v2, :cond_7b3

    const/16 v2, 0x22

    if-ne v9, v2, :cond_7bd

    .line 910
    :cond_7b3
    move/from16 v23, v9

    .line 911
    const/16 v10, 0xc

    .line 912
    const/16 v22, 0x1

    move/from16 v19, v18

    .line 913
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 915
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_7bd
    const/16 v2, 0x20

    if-eq v9, v2, :cond_21

    const/16 v2, 0x9

    if-eq v9, v2, :cond_21

    const/16 v2, 0xd

    if-eq v9, v2, :cond_21

    const/16 v2, 0xa

    if-eq v9, v2, :cond_21

    const/16 v2, 0x85

    if-eq v9, v2, :cond_21

    const/16 v2, 0x2028

    if-ne v9, v2, :cond_7d9

    move/from16 v19, v18

    .line 917
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 918
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_7d9
    const-string v17, "missing or unquoted attribute value"

    .line 919
    const/16 v22, 0x24

    .line 920
    goto/16 :goto_1e

    .line 924
    :pswitch_7df
    add-int/lit8 v4, v18, -0x1

    .line 925
    const/16 v22, 0x5

    .line 926
    goto/16 :goto_1e

    .line 929
    :pswitch_7e5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 931
    move/from16 v4, v16

    .line 933
    const/16 v22, 0x1d

    .line 934
    goto/16 :goto_1e

    .line 937
    :pswitch_7f6
    const/16 v2, 0x3e

    if-eq v9, v2, :cond_800

    .line 939
    const-string v17, "missing \'>\'"

    .line 940
    const/16 v22, 0x24

    .line 941
    goto/16 :goto_1e

    .line 943
    :cond_800
    const/16 v22, 0x1

    move/from16 v19, v18

    .line 944
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_23

    .line 952
    :cond_806
    sub-int v21, v19, v4

    .line 955
    .local v21, "saved":I
    if-lez v21, :cond_815

    .line 957
    :try_start_80a
    move-object/from16 v0, p0

    iput v4, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 958
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_815
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v24

    .line 962
    .local v24, "x":I
    if-gez v24, :cond_836

    .line 964
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_82c

    const/16 v2, 0x1c

    move/from16 v0, v22

    if-ne v0, v2, :cond_830

    :cond_82c
    move/from16 v18, v19

    .line 965
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_6c

    .line 966
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_830
    const/16 v22, 0x25

    move/from16 v18, v19

    .line 967
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 969
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_836
    if-lez v21, :cond_85e

    .line 971
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/text/LineBufferedReader;->skip(I)I
    :try_end_842
    .catch Ljava/io/IOException; {:try_start_80a .. :try_end_842} :catch_862

    .line 981
    :goto_842
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->pos:I

    move/from16 v18, v0

    .line 982
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 984
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/text/LineBufferedReader;->limit:I

    move/from16 v16, v0

    .line 985
    if-lez v21, :cond_86d

    sub-int v4, v18, v21

    .line 986
    :goto_856
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    aget-char v9, v3, v18

    move/from16 v18, v19

    .line 987
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    .line 975
    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    :cond_85e
    :try_start_85e
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_861
    .catch Ljava/io/IOException; {:try_start_85e .. :try_end_861} :catch_862

    goto :goto_842

    .line 977
    .end local v24    # "x":I
    :catch_862
    move-exception v14

    .line 979
    .local v14, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v14    # "ex":Ljava/io/IOException;
    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    .restart local v24    # "x":I
    :cond_86d
    move/from16 v4, v16

    .line 985
    goto :goto_856

    .end local v21    # "saved":I
    .end local v24    # "x":I
    :cond_870
    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_6e1

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :cond_874
    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_322

    :cond_878
    move/from16 v18, v19

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    goto/16 :goto_1e

    :pswitch_87c
    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_5fa

    .end local v19    # "pos":I
    .restart local v18    # "pos":I
    :pswitch_880
    move/from16 v19, v18

    .end local v18    # "pos":I
    .restart local v19    # "pos":I
    goto/16 :goto_271

    .line 206
    :pswitch_data_884
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_8a
        :pswitch_30b
        :pswitch_1a8
        :pswitch_7e5
        :pswitch_1a8
        :pswitch_2c3
        :pswitch_1a8
        :pswitch_76f
        :pswitch_1a8
        :pswitch_734
        :pswitch_7ab
        :pswitch_17c
        :pswitch_6d0
        :pswitch_2e3
        :pswitch_17c
        :pswitch_6d6
        :pswitch_1a8
        :pswitch_21
        :pswitch_7df
        :pswitch_87c
        :pswitch_31c
        :pswitch_21
        :pswitch_17c
        :pswitch_1a8
        :pswitch_2af
        :pswitch_880
        :pswitch_7f6
        :pswitch_151
        :pswitch_17c
        :pswitch_31c
        :pswitch_35
        :pswitch_17c
        :pswitch_1a8
        :pswitch_41
        :pswitch_4f
        :pswitch_53
        :pswitch_7a
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "strm"    # Ljava/io/InputStream;
    .param p1, "uri"    # Ljava/lang/Object;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v0

    .line 134
    .local v0, "in":Lgnu/text/LineInputStreamReader;
    if-eqz p1, :cond_9

    .line 135
    invoke-virtual {v0, p1}, Lgnu/text/LineInputStreamReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_9
    invoke-static {v0, p2, p3}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->close()V

    .line 138
    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .registers 4
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method

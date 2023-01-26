.class public Lgnu/kawa/functions/ParseFormat;
.super Lgnu/mapping/Procedure1;
.source "ParseFormat.java"


# static fields
.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000

.field public static final SEEN_HASH:I = 0x10

.field public static final SEEN_MINUS:I = 0x1

.field public static final SEEN_PLUS:I = 0x2

.field public static final SEEN_SPACE:I = 0x4

.field public static final SEEN_ZERO:I = 0x8

.field public static final parseFormat:Lgnu/kawa/functions/ParseFormat;


# instance fields
.field emacsStyle:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lgnu/kawa/functions/ParseFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ParseFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "emacsStyle"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 18
    iput-boolean p1, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 19
    return-void
.end method

.method public static asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;
    .registers 9
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "style"    # C

    .prologue
    .line 234
    :try_start_0
    instance-of v4, p0, Lgnu/text/ReportFormat;

    if-eqz v4, :cond_7

    .line 235
    check-cast p0, Lgnu/text/ReportFormat;

    .line 254
    .end local p0    # "arg":Ljava/lang/Object;
    :goto_6
    return-object p0

    .line 236
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_7
    const/16 v4, 0x7e

    if-ne p1, v4, :cond_16

    .line 237
    new-instance v4, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V

    move-object p0, v4

    goto :goto_6

    .line 241
    :cond_16
    instance-of v4, p0, Lgnu/lists/FString;

    if-eqz v4, :cond_4f

    .line 243
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    move-object v3, v0

    .line 244
    .local v3, "str":Lgnu/lists/FString;
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    iget-object v4, v3, Lgnu/lists/FString;->data:[C

    iget v5, v3, Lgnu/lists/FString;->size:I

    invoke-direct {v2, v4, v5}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_2f
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_27} :catch_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_27} :catch_7e

    .line 250
    .end local v3    # "str":Lgnu/lists/FString;
    .local v2, "iport":Lgnu/mapping/InPort;
    :goto_27
    :try_start_27
    invoke-static {v2, p1}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_59

    move-result-object p0

    .line 254
    .end local p0    # "arg":Ljava/lang/Object;
    :try_start_2b
    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catch Ljava/text/ParseException; {:try_start_2b .. :try_end_2e} :catch_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_2e} :catch_7e

    goto :goto_6

    .line 258
    .end local v2    # "iport":Lgnu/mapping/InPort;
    :catch_2f
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing format ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_4f
    :try_start_4f
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    .restart local v2    # "iport":Lgnu/mapping/InPort;
    goto :goto_27

    .line 254
    :catchall_59
    move-exception v4

    invoke-virtual {v2}, Lgnu/mapping/InPort;->close()V

    throw v4
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5e} :catch_2f
    .catch Ljava/text/ParseException; {:try_start_4f .. :try_end_5e} :catch_5e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4f .. :try_end_5e} :catch_7e

    .line 262
    .end local v2    # "iport":Lgnu/mapping/InPort;
    .end local p0    # "arg":Ljava/lang/Object;
    :catch_5e
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid format ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    .end local v1    # "ex":Ljava/text/ParseException;
    :catch_7e
    move-exception v1

    .line 268
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "End while parsing format"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    .registers 33
    .param p0, "fmt"    # Lgnu/text/LineBufferedReader;
    .param p1, "magic"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v19, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    .local v19, "fbuf":Ljava/lang/StringBuffer;
    const/16 v26, 0x0

    .line 38
    .local v26, "position":I
    new-instance v24, Ljava/util/Vector;

    invoke-direct/range {v24 .. v24}, Ljava/util/Vector;-><init>()V

    .line 42
    .local v24, "formats":Ljava/util/Vector;
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    .line 43
    .local v15, "ch":I
    if-ltz v15, :cond_30

    .line 45
    move/from16 v0, p1

    if-eq v15, v0, :cond_21

    .line 48
    int-to-char v5, v15

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 51
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    .line 52
    move/from16 v0, p1

    if-ne v15, v0, :cond_30

    .line 54
    int-to-char v5, v15

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 58
    :cond_30
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    .line 59
    .local v25, "len":I
    if-lez v25, :cond_59

    .line 61
    move/from16 v0, v25

    new-array v0, v0, [C

    move-object/from16 v29, v0

    .line 62
    .local v29, "text":[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move-object/from16 v2, v29

    invoke-virtual {v0, v5, v1, v2, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 63
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    new-instance v5, Lgnu/text/LiteralFormat;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lgnu/text/LiteralFormat;-><init>([C)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    .end local v29    # "text":[C
    :cond_59
    if-gez v15, :cond_74

    .line 213
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v20

    .line 214
    .local v20, "fcount":I
    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_1d7

    .line 216
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    .line 217
    .local v17, "f":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v5, v0, Lgnu/text/ReportFormat;

    if-eqz v5, :cond_1d7

    .line 218
    check-cast v17, Lgnu/text/ReportFormat;

    .line 222
    .end local v17    # "f":Ljava/lang/Object;
    :goto_73
    return-object v17

    .line 69
    .end local v20    # "fcount":I
    :cond_74
    const/16 v5, 0x24

    if-ne v15, v5, :cond_a1

    .line 71
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    .line 72
    int-to-char v5, v15

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v26

    .line 73
    if-gez v26, :cond_92

    .line 74
    new-instance v5, Ljava/text/ParseException;

    const-string v6, "missing number (position) after \'%$\'"

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 82
    .local v16, "digit":I
    :cond_8e
    mul-int/lit8 v5, v26, 0xa

    add-int v26, v5, v16

    .line 78
    .end local v16    # "digit":I
    :cond_92
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    .line 79
    int-to-char v5, v15

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 80
    .restart local v16    # "digit":I
    if-gez v16, :cond_8e

    .line 84
    add-int/lit8 v26, v26, -0x1

    .line 87
    .end local v16    # "digit":I
    :cond_a1
    const/16 v21, 0x0

    .line 90
    .local v21, "flags":I
    :goto_a3
    int-to-char v5, v15

    sparse-switch v5, :sswitch_data_1f0

    .line 101
    const/high16 v10, -0x40000000    # -2.0f

    .line 102
    .local v10, "width":I
    int-to-char v5, v15

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 103
    .restart local v16    # "digit":I
    if-ltz v16, :cond_108

    .line 105
    move/from16 v10, v16

    .line 108
    :goto_b4
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    .line 109
    int-to-char v5, v15

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 110
    if-gez v16, :cond_103

    .line 118
    :cond_c1
    :goto_c1
    const/high16 v4, -0x40000000    # -2.0f

    .line 119
    .local v4, "precision":I
    const/16 v5, 0x2e

    if-ne v15, v5, :cond_cd

    .line 121
    const/16 v5, 0x2a

    if-ne v15, v5, :cond_10f

    .line 122
    const/high16 v4, -0x60000000

    .line 137
    :cond_cd
    sparse-switch v15, :sswitch_data_206

    .line 191
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown format character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 92
    .end local v4    # "precision":I
    .end local v10    # "width":I
    .end local v16    # "digit":I
    :sswitch_f0
    or-int/lit8 v21, v21, 0x1

    .line 88
    :goto_f2
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    goto :goto_a3

    .line 93
    :sswitch_f7
    or-int/lit8 v21, v21, 0x2

    goto :goto_f2

    .line 94
    :sswitch_fa
    or-int/lit8 v21, v21, 0x4

    goto :goto_f2

    .line 95
    :sswitch_fd
    or-int/lit8 v21, v21, 0x8

    goto :goto_f2

    .line 96
    :sswitch_100
    or-int/lit8 v21, v21, 0x10

    goto :goto_f2

    .line 112
    .restart local v10    # "width":I
    .restart local v16    # "digit":I
    :cond_103
    mul-int/lit8 v5, v10, 0xa

    add-int v10, v5, v16

    goto :goto_b4

    .line 115
    :cond_108
    const/16 v5, 0x2a

    if-ne v15, v5, :cond_c1

    .line 116
    const/high16 v10, -0x60000000

    goto :goto_c1

    .line 125
    .restart local v4    # "precision":I
    :cond_10f
    const/4 v4, 0x0

    .line 128
    :goto_110
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v15

    .line 129
    int-to-char v5, v15

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 130
    if-ltz v16, :cond_cd

    .line 132
    mul-int/lit8 v5, v4, 0xa

    add-int v4, v5, v16

    goto :goto_110

    .line 141
    :sswitch_122
    new-instance v22, Lgnu/kawa/functions/ObjectFormat;

    const/16 v5, 0x53

    if-ne v15, v5, :cond_154

    const/4 v5, 0x1

    :goto_129
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v4}, Lgnu/kawa/functions/ObjectFormat;-><init>(ZI)V

    .local v22, "format":Ljava/text/Format;
    move-object/from16 v23, v22

    .line 193
    .end local v22    # "format":Ljava/text/Format;
    .local v23, "format":Ljava/text/Format;
    :goto_130
    if-lez v10, :cond_1eb

    .line 195
    and-int/lit8 v5, v21, 0x8

    if-eqz v5, :cond_1c7

    const/16 v11, 0x30

    .line 197
    .local v11, "padChar":C
    :goto_138
    and-int/lit8 v5, v21, 0x1

    if-eqz v5, :cond_1cb

    .line 198
    const/16 v30, 0x64

    .line 203
    .local v30, "where":I
    :goto_13e
    new-instance v22, Lgnu/text/PadFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-direct {v0, v1, v10, v11, v2}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    .line 209
    .end local v11    # "padChar":C
    .end local v23    # "format":Ljava/text/Format;
    .end local v30    # "where":I
    .restart local v22    # "format":Ljava/text/Format;
    :goto_149
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v26, v26, 0x1

    .line 211
    goto/16 :goto_10

    .line 141
    .end local v22    # "format":Ljava/text/Format;
    :cond_154
    const/4 v5, 0x0

    goto :goto_129

    .line 150
    :sswitch_156
    const/4 v8, 0x0

    .line 151
    .local v8, "fflags":I
    const/16 v5, 0x64

    if-eq v15, v5, :cond_15f

    const/16 v5, 0x69

    if-ne v15, v5, :cond_19a

    .line 152
    :cond_15f
    const/16 v3, 0xa

    .line 160
    .local v3, "base":I
    :cond_161
    :goto_161
    const/16 v28, 0x0

    .line 161
    .local v28, "seenColon":Z
    const/16 v27, 0x0

    .line 162
    .local v27, "seenAt":Z
    and-int/lit8 v5, v21, 0x9

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1aa

    const/16 v11, 0x30

    .line 164
    .restart local v11    # "padChar":C
    :goto_16d
    and-int/lit8 v5, v21, 0x10

    if-eqz v5, :cond_173

    .line 165
    or-int/lit8 v8, v8, 0x8

    .line 166
    :cond_173
    and-int/lit8 v5, v21, 0x2

    if-eqz v5, :cond_179

    .line 167
    or-int/lit8 v8, v8, 0x2

    .line 168
    :cond_179
    and-int/lit8 v5, v21, 0x1

    if-eqz v5, :cond_17f

    .line 169
    or-int/lit8 v8, v8, 0x10

    .line 170
    :cond_17f
    and-int/lit8 v5, v21, 0x4

    if-eqz v5, :cond_185

    .line 171
    or-int/lit8 v8, v8, 0x4

    .line 172
    :cond_185
    const/high16 v5, -0x40000000    # -2.0f

    if-eq v4, v5, :cond_1ad

    .line 174
    and-int/lit8 v21, v21, -0x9

    .line 175
    or-int/lit8 v8, v8, 0x40

    .line 176
    const/16 v5, 0x30

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-static/range {v3 .. v8}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v22

    .restart local v22    # "format":Ljava/text/Format;
    move-object/from16 v23, v22

    .end local v22    # "format":Ljava/text/Format;
    .restart local v23    # "format":Ljava/text/Format;
    goto :goto_130

    .line 153
    .end local v3    # "base":I
    .end local v11    # "padChar":C
    .end local v23    # "format":Ljava/text/Format;
    .end local v27    # "seenAt":Z
    .end local v28    # "seenColon":Z
    :cond_19a
    const/16 v5, 0x6f

    if-ne v15, v5, :cond_1a1

    .line 154
    const/16 v3, 0x8

    .restart local v3    # "base":I
    goto :goto_161

    .line 157
    .end local v3    # "base":I
    :cond_1a1
    const/16 v3, 0x10

    .line 158
    .restart local v3    # "base":I
    const/16 v5, 0x58

    if-ne v15, v5, :cond_161

    const/16 v8, 0x20

    goto :goto_161

    .line 162
    .restart local v27    # "seenAt":Z
    .restart local v28    # "seenColon":Z
    :cond_1aa
    const/16 v11, 0x20

    goto :goto_16d

    .line 181
    .restart local v11    # "padChar":C
    :cond_1ad
    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v13, -0x40000000    # -2.0f

    move v9, v3

    move v14, v8

    invoke-static/range {v9 .. v14}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v22

    .restart local v22    # "format":Ljava/text/Format;
    move-object/from16 v23, v22

    .line 184
    .end local v22    # "format":Ljava/text/Format;
    .restart local v23    # "format":Ljava/text/Format;
    goto/16 :goto_130

    .line 188
    .end local v3    # "base":I
    .end local v8    # "fflags":I
    .end local v11    # "padChar":C
    .end local v23    # "format":Ljava/text/Format;
    .end local v27    # "seenAt":Z
    .end local v28    # "seenColon":Z
    :sswitch_1bb
    new-instance v22, Lgnu/kawa/functions/ObjectFormat;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    .restart local v22    # "format":Ljava/text/Format;
    move-object/from16 v23, v22

    .line 189
    .end local v22    # "format":Ljava/text/Format;
    .restart local v23    # "format":Ljava/text/Format;
    goto/16 :goto_130

    .line 195
    :cond_1c7
    const/16 v11, 0x20

    goto/16 :goto_138

    .line 199
    .restart local v11    # "padChar":C
    :cond_1cb
    const/16 v5, 0x30

    if-ne v11, v5, :cond_1d3

    .line 200
    const/16 v30, -0x1

    .restart local v30    # "where":I
    goto/16 :goto_13e

    .line 202
    .end local v30    # "where":I
    :cond_1d3
    const/16 v30, 0x0

    .restart local v30    # "where":I
    goto/16 :goto_13e

    .line 220
    .end local v4    # "precision":I
    .end local v10    # "width":I
    .end local v11    # "padChar":C
    .end local v16    # "digit":I
    .end local v21    # "flags":I
    .end local v23    # "format":Ljava/text/Format;
    .end local v30    # "where":I
    .restart local v20    # "fcount":I
    :cond_1d7
    move/from16 v0, v20

    new-array v0, v0, [Ljava/text/Format;

    move-object/from16 v18, v0

    .line 221
    .local v18, "farray":[Ljava/text/Format;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 222
    new-instance v17, Lgnu/text/CompoundFormat;

    invoke-direct/range {v17 .. v18}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    goto/16 :goto_73

    .end local v18    # "farray":[Ljava/text/Format;
    .end local v20    # "fcount":I
    .restart local v4    # "precision":I
    .restart local v10    # "width":I
    .restart local v16    # "digit":I
    .restart local v21    # "flags":I
    .restart local v23    # "format":Ljava/text/Format;
    :cond_1eb
    move-object/from16 v22, v23

    .end local v23    # "format":Ljava/text/Format;
    .restart local v22    # "format":Ljava/text/Format;
    goto/16 :goto_149

    .line 90
    nop

    :sswitch_data_1f0
    .sparse-switch
        0x20 -> :sswitch_fa
        0x23 -> :sswitch_100
        0x2b -> :sswitch_f7
        0x2d -> :sswitch_f0
        0x30 -> :sswitch_fd
    .end sparse-switch

    .line 137
    :sswitch_data_206
    .sparse-switch
        0x53 -> :sswitch_122
        0x58 -> :sswitch_156
        0x64 -> :sswitch_156
        0x65 -> :sswitch_1bb
        0x66 -> :sswitch_1bb
        0x67 -> :sswitch_1bb
        0x69 -> :sswitch_156
        0x6f -> :sswitch_156
        0x73 -> :sswitch_122
        0x78 -> :sswitch_156
    .end sparse-switch
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 227
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x3f

    :goto_6
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0

    :cond_b
    const/16 v0, 0x7e

    goto :goto_6
.end method

.method public parseFormat(Lgnu/text/LineBufferedReader;)Lgnu/text/ReportFormat;
    .registers 3
    .param p1, "fmt"    # Lgnu/text/LineBufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x3f

    :goto_6
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0

    :cond_b
    const/16 v0, 0x7e

    goto :goto_6
.end method

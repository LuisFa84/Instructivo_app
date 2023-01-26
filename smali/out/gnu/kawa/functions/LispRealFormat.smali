.class Lgnu/kawa/functions/LispRealFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field arg1:I

.field arg2:I

.field arg3:I

.field arg4:I

.field arg5:I

.field arg6:I

.field arg7:I

.field argsUsed:I

.field internalPad:Z

.field op:C

.field showPlus:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, -0x50000000

    const/high16 v1, -0x60000000

    .line 1207
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1208
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    if-eq v0, v2, :cond_23

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-eq v0, v2, :cond_23

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-eq v0, v2, :cond_23

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    if-eq v0, v2, :cond_23

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    if-eq v0, v2, :cond_23

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    if-eq v0, v2, :cond_23

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    if-ne v0, v2, :cond_6d

    :cond_23
    const/4 v0, 0x1

    :goto_24
    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1215
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    if-ne v0, v1, :cond_30

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1216
    :cond_30
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    if-ne v0, v1, :cond_3a

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1217
    :cond_3a
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    if-ne v0, v1, :cond_44

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1218
    :cond_44
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    if-ne v0, v1, :cond_4e

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1219
    :cond_4e
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    if-ne v0, v1, :cond_58

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1220
    :cond_58
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    if-ne v0, v1, :cond_62

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1221
    :cond_62
    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    if-ne v0, v1, :cond_6c

    iget v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    .line 1222
    :cond_6c
    return-void

    .line 1208
    :cond_6d
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 10
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
    .line 1295
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1296
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v0

    .line 1297
    .local v0, "fmt":Ljava/text/Format;
    iget v4, p0, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr p2, v4

    .line 1298
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "start":I
    .local v2, "start":I
    aget-object v3, p1, p2

    check-cast v3, Lgnu/math/RealNum;

    .line 1299
    .local v3, "value":Lgnu/math/RealNum;
    invoke-virtual {v0, v3, v1, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 1300
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1301
    return v2
.end method

.method public resolve([Ljava/lang/Object;I)Ljava/text/Format;
    .registers 12
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 1226
    iget-char v7, p0, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v8, 0x24

    if-ne v7, v8, :cond_5b

    .line 1228
    new-instance v3, Lgnu/math/FixedRealFormat;

    invoke-direct {v3}, Lgnu/math/FixedRealFormat;-><init>()V

    .line 1229
    .local v3, "mfmt":Lgnu/math/FixedRealFormat;
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v8, 0x2

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 1230
    .local v0, "decimals":I
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_1a

    add-int/lit8 p2, p2, 0x1

    .line 1231
    :cond_1a
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/4 v8, 0x1

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 1232
    .local v1, "digits":I
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_29

    add-int/lit8 p2, p2, 0x1

    .line 1233
    :cond_29
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    .line 1234
    .local v6, "width":I
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_38

    add-int/lit8 p2, p2, 0x1

    .line 1235
    :cond_38
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/16 v8, 0x20

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v4

    .line 1236
    .local v4, "padChar":C
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_48

    add-int/lit8 p2, p2, 0x1

    .line 1238
    :cond_48
    invoke-virtual {v3, v0}, Lgnu/math/FixedRealFormat;->setMaximumFractionDigits(I)V

    .line 1239
    invoke-virtual {v3, v1}, Lgnu/math/FixedRealFormat;->setMinimumIntegerDigits(I)V

    .line 1240
    iput v6, v3, Lgnu/math/FixedRealFormat;->width:I

    .line 1241
    iput-char v4, v3, Lgnu/math/FixedRealFormat;->padChar:C

    .line 1242
    iget-boolean v7, p0, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    iput-boolean v7, v3, Lgnu/math/FixedRealFormat;->internalPad:Z

    .line 1243
    iget-boolean v7, p0, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean v7, v3, Lgnu/math/FixedRealFormat;->showPlus:Z

    .line 1288
    .end local v0    # "decimals":I
    .end local v1    # "digits":I
    .end local v3    # "mfmt":Lgnu/math/FixedRealFormat;
    .end local v4    # "padChar":C
    .end local v6    # "width":I
    :goto_5a
    return-object v3

    .line 1246
    :cond_5b
    iget-char v7, p0, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v8, 0x46

    if-ne v7, v8, :cond_ca

    .line 1248
    new-instance v3, Lgnu/math/FixedRealFormat;

    invoke-direct {v3}, Lgnu/math/FixedRealFormat;-><init>()V

    .line 1249
    .restart local v3    # "mfmt":Lgnu/math/FixedRealFormat;
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v6

    .line 1250
    .restart local v6    # "width":I
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_75

    add-int/lit8 p2, p2, 0x1

    .line 1251
    :cond_75
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/4 v8, -0x1

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 1252
    .restart local v0    # "decimals":I
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_84

    add-int/lit8 p2, p2, 0x1

    .line 1253
    :cond_84
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 1254
    .local v5, "scale":I
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_93

    add-int/lit8 p2, p2, 0x1

    .line 1255
    :cond_93
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    iput-char v7, v3, Lgnu/math/FixedRealFormat;->overflowChar:C

    .line 1256
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_a4

    add-int/lit8 p2, p2, 0x1

    .line 1257
    :cond_a4
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/16 v8, 0x20

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v4

    .line 1258
    .restart local v4    # "padChar":C
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_b4

    add-int/lit8 p2, p2, 0x1

    .line 1259
    :cond_b4
    invoke-virtual {v3, v0}, Lgnu/math/FixedRealFormat;->setMaximumFractionDigits(I)V

    .line 1260
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lgnu/math/FixedRealFormat;->setMinimumIntegerDigits(I)V

    .line 1261
    iput v6, v3, Lgnu/math/FixedRealFormat;->width:I

    .line 1262
    iput v5, v3, Lgnu/math/FixedRealFormat;->scale:I

    .line 1263
    iput-char v4, v3, Lgnu/math/FixedRealFormat;->padChar:C

    .line 1264
    iget-boolean v7, p0, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    iput-boolean v7, v3, Lgnu/math/FixedRealFormat;->internalPad:Z

    .line 1265
    iget-boolean v7, p0, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean v7, v3, Lgnu/math/FixedRealFormat;->showPlus:Z

    goto :goto_5a

    .line 1270
    .end local v0    # "decimals":I
    .end local v3    # "mfmt":Lgnu/math/FixedRealFormat;
    .end local v4    # "padChar":C
    .end local v5    # "scale":I
    .end local v6    # "width":I
    :cond_ca
    new-instance v2, Lgnu/math/ExponentialFormat;

    invoke-direct {v2}, Lgnu/math/ExponentialFormat;-><init>()V

    .line 1271
    .local v2, "efmt":Lgnu/math/ExponentialFormat;
    const/4 v7, 0x1

    iput-boolean v7, v2, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    .line 1272
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    iput v7, v2, Lgnu/math/ExponentialFormat;->width:I

    .line 1273
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_e3

    add-int/lit8 p2, p2, 0x1

    .line 1274
    :cond_e3
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/4 v8, -0x1

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    iput v7, v2, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 1275
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_f4

    add-int/lit8 p2, p2, 0x1

    .line 1276
    :cond_f4
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    iput v7, v2, Lgnu/math/ExponentialFormat;->expDigits:I

    .line 1277
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_105

    add-int/lit8 p2, p2, 0x1

    .line 1278
    :cond_105
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/4 v8, 0x1

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v7

    iput v7, v2, Lgnu/math/ExponentialFormat;->intDigits:I

    .line 1279
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_116

    add-int/lit8 p2, p2, 0x1

    .line 1280
    :cond_116
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/4 v8, 0x0

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    iput-char v7, v2, Lgnu/math/ExponentialFormat;->overflowChar:C

    .line 1281
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_127

    add-int/lit8 p2, p2, 0x1

    .line 1282
    :cond_127
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    const/16 v8, 0x20

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    iput-char v7, v2, Lgnu/math/ExponentialFormat;->padChar:C

    .line 1283
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_139

    add-int/lit8 p2, p2, 0x1

    .line 1284
    :cond_139
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/16 v8, 0x45

    invoke-static {v7, v8, p1, p2}, Lgnu/kawa/functions/LispRealFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    iput-char v7, v2, Lgnu/math/ExponentialFormat;->exponentChar:C

    .line 1285
    iget v7, p0, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_14b

    add-int/lit8 p2, p2, 0x1

    .line 1286
    :cond_14b
    iget-char v7, p0, Lgnu/kawa/functions/LispRealFormat;->op:C

    const/16 v8, 0x47

    if-ne v7, v8, :cond_15b

    const/4 v7, 0x1

    :goto_152
    iput-boolean v7, v2, Lgnu/math/ExponentialFormat;->general:Z

    .line 1287
    iget-boolean v7, p0, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    iput-boolean v7, v2, Lgnu/math/ExponentialFormat;->showPlus:Z

    move-object v3, v2

    .line 1288
    goto/16 :goto_5a

    .line 1286
    :cond_15b
    const/4 v7, 0x0

    goto :goto_152
.end method

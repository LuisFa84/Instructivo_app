.class public Lkawa/Telnet;
.super Ljava/lang/Object;
.source "Telnet.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DO:I = 0xfd

.field public static final DONT:I = 0xfe

.field public static final ECHO:I = 0x1

.field static final EOF:I = 0xec

.field static final IAC:I = 0xff

.field static final IP:I = 0xf4

.field static final LINEMODE:I = 0x22

.field static final NAWS:I = 0x1f

.field static final NOP:I = 0xf1

.field static final OPTION_NO:I = 0x0

.field static final OPTION_WANTNO:I = 0x1

.field static final OPTION_WANTNO_OPPOSITE:I = 0x2

.field static final OPTION_WANTYES:I = 0x3

.field static final OPTION_WANTYES_OPPOSITE:I = 0x4

.field static final OPTION_YES:I = 0x5

.field static final SB:I = 0xfa

.field static final SE:I = 0xf0

.field public static final SUPPRESS_GO_AHEAD:I = 0x3

.field static final TM:I = 0x6

.field static final TTYPE:I = 0x18

.field public static final WILL:I = 0xfb

.field public static final WONT:I = 0xfc


# instance fields
.field in:Lkawa/TelnetInputStream;

.field isServer:Z

.field final optionsState:[B

.field out:Lkawa/TelnetOutputStream;

.field final preferredLineMode:B

.field sin:Ljava/io/InputStream;

.field sout:Ljava/io/OutputStream;

.field public terminalType:[B

.field public windowHeight:S

.field public windowWidth:S


# direct methods
.method public constructor <init>(Ljava/net/Socket;Z)V
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x3

    iput-byte v0, p0, Lkawa/Telnet;->preferredLineMode:B

    .line 99
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lkawa/Telnet;->optionsState:[B

    .line 412
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    .line 413
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    .line 414
    new-instance v0, Lkawa/TelnetOutputStream;

    iget-object v1, p0, Lkawa/Telnet;->sout:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lkawa/TelnetOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    .line 415
    new-instance v0, Lkawa/TelnetInputStream;

    iget-object v1, p0, Lkawa/Telnet;->sin:Ljava/io/InputStream;

    invoke-direct {v0, v1, p0}, Lkawa/TelnetInputStream;-><init>(Ljava/io/InputStream;Lkawa/Telnet;)V

    iput-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    .line 416
    iput-boolean p2, p0, Lkawa/Telnet;->isServer:Z

    .line 417
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 14
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 367
    array-length v10, p0

    if-nez v10, :cond_8

    .line 368
    invoke-static {}, Lkawa/Telnet;->usage()V

    .line 369
    :cond_8
    aget-object v4, p0, v11

    .line 370
    .local v4, "host":Ljava/lang/String;
    const/16 v5, 0x17

    .line 371
    .local v5, "port":I
    array-length v10, p0

    if-le v10, v12, :cond_15

    .line 373
    aget-object v10, p0, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 377
    :cond_15
    :try_start_15
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 378
    .local v6, "socket":Ljava/net/Socket;
    new-instance v8, Lkawa/Telnet;

    const/4 v10, 0x0

    invoke-direct {v8, v6, v10}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    .line 379
    .local v8, "telnet":Lkawa/Telnet;
    invoke-virtual {v8}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v9

    .line 380
    .local v9, "tout":Lkawa/TelnetOutputStream;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    .local v7, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getPriority()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 383
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 385
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 388
    .local v1, "buffer":[B
    :goto_3d
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 389
    .local v2, "ch":I
    if-gez v2, :cond_49

    .line 401
    invoke-virtual {v7}, Ljava/lang/Thread;->stop()V

    .line 407
    .end local v1    # "buffer":[B
    .end local v2    # "ch":I
    .end local v6    # "socket":Ljava/net/Socket;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "telnet":Lkawa/Telnet;
    .end local v9    # "tout":Lkawa/TelnetOutputStream;
    :goto_48
    return-void

    .line 391
    .restart local v1    # "buffer":[B
    .restart local v2    # "ch":I
    .restart local v6    # "socket":Ljava/net/Socket;
    .restart local v7    # "t":Ljava/lang/Thread;
    .restart local v8    # "telnet":Lkawa/Telnet;
    .restart local v9    # "tout":Lkawa/TelnetOutputStream;
    :cond_49
    const/4 v10, 0x0

    int-to-byte v11, v2

    aput-byte v11, v1, v10

    .line 392
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 393
    .local v0, "avail":I
    if-lez v0, :cond_64

    .line 395
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    if-le v0, v10, :cond_5d

    .line 396
    array-length v10, v1

    add-int/lit8 v0, v10, -0x1

    .line 397
    :cond_5d
    sget-object v10, Ljava/lang/System;->in:Ljava/io/InputStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v11, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 399
    :cond_64
    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v9, v1, v10, v11}, Lkawa/TelnetOutputStream;->write([BII)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_6a} :catch_6b

    goto :goto_3d

    .line 403
    .end local v0    # "avail":I
    .end local v1    # "buffer":[B
    .end local v2    # "ch":I
    .end local v6    # "socket":Ljava/net/Socket;
    .end local v7    # "t":Ljava/lang/Thread;
    .end local v8    # "telnet":Lkawa/Telnet;
    .end local v9    # "tout":Lkawa/TelnetOutputStream;
    :catch_6b
    move-exception v3

    .line 405
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_48
.end method

.method static usage()V
    .registers 2

    .prologue
    .line 361
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage:  [java] kawa.Telnet HOST [PORT#]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 363
    return-void
.end method


# virtual methods
.method change(II)Z
    .registers 9
    .param p1, "command"    # I
    .param p2, "option"    # I

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0xfb

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    const/4 v3, 0x6

    if-ne p2, v3, :cond_a

    .line 175
    :cond_9
    :goto_9
    return v1

    .line 137
    :cond_a
    iget-boolean v3, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v3, :cond_12

    const/16 v3, 0x1f

    if-eq p2, v3, :cond_9

    .line 139
    :cond_12
    iget-boolean v3, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v3, :cond_2c

    if-ne p1, v4, :cond_2c

    if-ne p2, v5, :cond_2c

    .line 141
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 142
    .local v0, "buf":[B
    aput-byte v1, v0, v2

    .line 143
    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 146
    :try_start_22
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    const/16 v3, 0x22

    invoke-virtual {v2, v3, v0}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_9

    .line 148
    :catch_2a
    move-exception v2

    goto :goto_9

    .line 154
    .end local v0    # "buf":[B
    :cond_2c
    iget-boolean v3, p0, Lkawa/Telnet;->isServer:Z

    if-eqz v3, :cond_42

    if-ne p1, v4, :cond_42

    const/16 v3, 0x18

    if-ne p2, v3, :cond_42

    .line 156
    new-array v0, v1, [B

    .line 157
    .restart local v0    # "buf":[B
    aput-byte v1, v0, v2

    .line 160
    :try_start_3a
    iget-object v2, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v2, p2, v0}, Lkawa/TelnetOutputStream;->writeSubCommand(I[B)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_9

    .line 162
    :catch_40
    move-exception v2

    goto :goto_9

    .line 168
    .end local v0    # "buf":[B
    :cond_42
    iget-boolean v3, p0, Lkawa/Telnet;->isServer:Z

    if-nez v3, :cond_50

    if-ne p2, v1, :cond_50

    .line 170
    const/16 v3, 0xfd

    if-ne p1, v3, :cond_4e

    move v1, v2

    .line 171
    goto :goto_9

    .line 172
    :cond_4e
    if-eq p1, v4, :cond_9

    :cond_50
    move v1, v2

    .line 175
    goto :goto_9
.end method

.method public getInputStream()Lkawa/TelnetInputStream;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lkawa/Telnet;->in:Lkawa/TelnetInputStream;

    return-object v0
.end method

.method public getOutputStream()Lkawa/TelnetOutputStream;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    return-object v0
.end method

.method handle(II)V
    .registers 11
    .param p1, "command"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xfe

    const/16 v6, 0xfd

    const/16 v5, 0xfc

    .line 225
    if-ge p1, v6, :cond_30

    move v0, v2

    .line 228
    .local v0, "otherSide":Z
    :goto_b
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_32

    .line 229
    .local v2, "wantOn":Z
    :goto_f
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v1, v3, p2

    .line 231
    .local v1, "state":B
    if-eqz v0, :cond_18

    .line 232
    shr-int/lit8 v3, v1, 0x3

    int-to-byte v1, v3

    .line 233
    :cond_18
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_94

    .line 290
    :goto_1f
    if-eqz v0, :cond_8a

    .line 291
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xc7

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    int-to-byte v1, v3

    .line 294
    :goto_2b
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte v1, v3, p2

    .line 295
    :cond_2f
    return-void

    .end local v0    # "otherSide":Z
    .end local v1    # "state":B
    .end local v2    # "wantOn":Z
    :cond_30
    move v0, v3

    .line 225
    goto :goto_b

    .restart local v0    # "otherSide":Z
    :cond_32
    move v2, v3

    .line 228
    goto :goto_f

    .line 236
    .restart local v1    # "state":B
    .restart local v2    # "wantOn":Z
    :pswitch_34
    if-nez v2, :cond_2f

    .line 239
    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    .line 241
    iget-object v6, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_43

    move v3, v4

    :goto_3f
    invoke-virtual {v6, v3, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_1f

    :cond_43
    move v3, v5

    goto :goto_3f

    .line 244
    :pswitch_45
    if-eqz v2, :cond_2f

    .line 246
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 248
    const/4 v1, 0x5

    .line 249
    iget-object v4, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_57

    move v3, v6

    :goto_53
    invoke-virtual {v4, v3, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_1f

    :cond_57
    const/16 v3, 0xfb

    goto :goto_53

    .line 253
    :cond_5a
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_62

    :goto_5e
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_1f

    :cond_62
    move v4, v5

    goto :goto_5e

    .line 258
    :pswitch_64
    const/4 v1, 0x0

    .line 259
    goto :goto_1f

    .line 265
    :pswitch_66
    const/4 v1, 0x3

    .line 266
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_6f

    :goto_6b
    invoke-virtual {v3, v6, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_1f

    :cond_6f
    const/16 v6, 0xfb

    goto :goto_6b

    .line 270
    :pswitch_72
    if-eqz v2, :cond_79

    .line 272
    const/4 v1, 0x5

    .line 273
    invoke-virtual {p0, p1, p2}, Lkawa/Telnet;->change(II)Z

    goto :goto_1f

    .line 276
    :cond_79
    const/4 v1, 0x0

    .line 277
    goto :goto_1f

    .line 279
    :pswitch_7b
    if-eqz v2, :cond_88

    .line 281
    const/4 v1, 0x1

    .line 282
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    if-eqz v0, :cond_86

    :goto_82
    invoke-virtual {v3, v4, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_1f

    :cond_86
    move v4, v5

    goto :goto_82

    .line 286
    :cond_88
    const/4 v1, 0x0

    goto :goto_1f

    .line 293
    :cond_8a
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xf8

    or-int/2addr v3, v1

    int-to-byte v1, v3

    goto :goto_2b

    .line 233
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_45
        :pswitch_64
        :pswitch_66
        :pswitch_72
        :pswitch_7b
        :pswitch_34
    .end packed-switch
.end method

.method public request(II)V
    .registers 8
    .param p1, "command"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    const/16 v4, 0xfd

    if-lt p1, v4, :cond_2a

    move v0, v2

    .line 307
    .local v0, "otherSide":Z
    :goto_7
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2c

    .line 309
    .local v2, "wantOn":Z
    :goto_b
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v1, v3, p2

    .line 310
    .local v1, "state":B
    if-eqz v0, :cond_14

    .line 311
    shr-int/lit8 v3, v1, 0x3

    int-to-byte v1, v3

    .line 313
    :cond_14
    and-int/lit8 v3, v1, 0x7

    packed-switch v3, :pswitch_data_58

    .line 352
    :cond_19
    :goto_19
    if-eqz v0, :cond_4f

    .line 353
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xc7

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    int-to-byte v1, v3

    .line 356
    :goto_25
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aput-byte v1, v3, p2

    .line 357
    return-void

    .end local v0    # "otherSide":Z
    .end local v1    # "state":B
    .end local v2    # "wantOn":Z
    :cond_2a
    move v0, v3

    .line 304
    goto :goto_7

    .restart local v0    # "otherSide":Z
    :cond_2c
    move v2, v3

    .line 307
    goto :goto_b

    .line 316
    .restart local v1    # "state":B
    .restart local v2    # "wantOn":Z
    :pswitch_2e
    if-eqz v2, :cond_19

    .line 318
    const/4 v1, 0x3

    .line 319
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v3, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_19

    .line 324
    :pswitch_37
    if-nez v2, :cond_19

    .line 326
    const/4 v1, 0x1

    .line 327
    iget-object v3, p0, Lkawa/Telnet;->out:Lkawa/TelnetOutputStream;

    invoke-virtual {v3, p1, p2}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    goto :goto_19

    .line 332
    :pswitch_40
    if-eqz v2, :cond_19

    .line 333
    const/4 v1, 0x2

    goto :goto_19

    .line 337
    :pswitch_44
    if-nez v2, :cond_19

    .line 338
    const/4 v1, 0x1

    goto :goto_19

    .line 342
    :pswitch_48
    if-nez v2, :cond_4b

    .line 343
    const/4 v1, 0x4

    .line 346
    :cond_4b
    :pswitch_4b
    if-eqz v2, :cond_19

    .line 347
    const/4 v1, 0x3

    goto :goto_19

    .line 355
    :cond_4f
    iget-object v3, p0, Lkawa/Telnet;->optionsState:[B

    aget-byte v3, v3, p2

    and-int/lit16 v3, v3, 0xf8

    or-int/2addr v3, v1

    int-to-byte v1, v3

    goto :goto_25

    .line 313
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4b
        :pswitch_37
    .end packed-switch
.end method

.method public run()V
    .registers 9

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v4

    .line 424
    .local v4, "tin":Lkawa/TelnetInputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 427
    .local v1, "buffer":[B
    :goto_8
    invoke-virtual {v4}, Lkawa/TelnetInputStream;->read()I

    move-result v2

    .line 428
    .local v2, "ch":I
    if-gez v2, :cond_f

    .line 446
    .end local v1    # "buffer":[B
    .end local v2    # "ch":I
    .end local v4    # "tin":Lkawa/TelnetInputStream;
    :goto_e
    return-void

    .line 430
    .restart local v1    # "buffer":[B
    .restart local v2    # "ch":I
    .restart local v4    # "tin":Lkawa/TelnetInputStream;
    :cond_f
    const/4 v5, 0x0

    int-to-byte v6, v2

    aput-byte v6, v1, v5

    .line 431
    invoke-virtual {v4}, Lkawa/TelnetInputStream;->available()I

    move-result v0

    .line 432
    .local v0, "avail":I
    if-lez v0, :cond_26

    .line 434
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-le v0, v5, :cond_21

    .line 435
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 436
    :cond_21
    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5, v0}, Lkawa/TelnetInputStream;->read([BII)I

    move-result v0

    .line 438
    :cond_26
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v1, v6, v7}, Ljava/io/PrintStream;->write([BII)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_8

    .line 441
    .end local v0    # "avail":I
    .end local v1    # "buffer":[B
    .end local v2    # "ch":I
    .end local v4    # "tin":Lkawa/TelnetInputStream;
    :catch_2f
    move-exception v3

    .line 443
    .local v3, "ex":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 444
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_e
.end method

.method public subCommand([BII)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 182
    aget-byte v0, p1, p2

    .line 183
    .local v0, "command":I
    sparse-switch v0, :sswitch_data_bc

    .line 217
    :cond_7
    :goto_7
    return-void

    .line 186
    :sswitch_8
    const/4 v3, 0x5

    if-ne p3, v3, :cond_7

    .line 188
    aget-byte v3, p1, v6

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Lkawa/Telnet;->windowWidth:S

    .line 189
    aget-byte v3, p1, v7

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-short v3, v3

    iput-short v3, p0, Lkawa/Telnet;->windowHeight:S

    goto :goto_7

    .line 198
    :sswitch_26
    add-int/lit8 v3, p3, -0x1

    new-array v2, v3, [B

    .line 199
    .local v2, "type":[B
    const/4 v3, 0x0

    add-int/lit8 v4, p3, -0x1

    invoke-static {p1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object v2, p0, Lkawa/Telnet;->terminalType:[B

    .line 201
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "terminal type: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 205
    .end local v2    # "type":[B
    :sswitch_56
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBCommand LINEMODE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    aget-byte v3, p1, v6

    if-ne v3, v7, :cond_7

    .line 208
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_7f
    add-int/lit8 v3, v1, 0x2

    if-ge v3, p3, :cond_7

    .line 210
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    add-int/lit8 v1, v1, 0x3

    goto :goto_7f

    .line 183
    :sswitch_data_bc
    .sparse-switch
        0x18 -> :sswitch_26
        0x1f -> :sswitch_8
        0x22 -> :sswitch_56
    .end sparse-switch
.end method

.class public Lkawa/TelnetOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TelnetOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/16 v0, 0xff

    if-ne p1, v0, :cond_9

    .line 20
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 21
    :cond_9
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 22
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lkawa/TelnetOutputStream;->write([BII)V

    .line 27
    return-void
.end method

.method public write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    add-int v1, p2, p3

    .line 33
    .local v1, "limit":I
    move v0, p2

    .local v0, "i":I
    :goto_3
    if-ge v0, v1, :cond_16

    .line 35
    aget-byte v2, p1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 38
    iget-object v2, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v3, p2

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    move p2, v0

    .line 33
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 45
    :cond_16
    iget-object v2, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, v1, p2

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    return-void
.end method

.method public writeCommand(I)V
    .registers 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 52
    return-void
.end method

.method public final writeCommand(II)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 58
    iget-object v0, p0, Lkawa/TelnetOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 59
    return-void
.end method

.method public final writeDo(I)V
    .registers 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/16 v0, 0xfd

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 64
    return-void
.end method

.method public final writeDont(I)V
    .registers 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v0, 0xfe

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 69
    return-void
.end method

.method public final writeSubCommand(I[B)V
    .registers 4
    .param p1, "option"    # I
    .param p2, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0xfa

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 85
    invoke-virtual {p0, p2}, Lkawa/TelnetOutputStream;->write([B)V

    .line 86
    const/16 v0, 0xf0

    invoke-virtual {p0, v0}, Lkawa/TelnetOutputStream;->writeCommand(I)V

    .line 87
    return-void
.end method

.method public final writeWill(I)V
    .registers 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0xfb

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 74
    return-void
.end method

.method public final writeWont(I)V
    .registers 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/16 v0, 0xfc

    invoke-virtual {p0, v0, p1}, Lkawa/TelnetOutputStream;->writeCommand(II)V

    .line 79
    return-void
.end method

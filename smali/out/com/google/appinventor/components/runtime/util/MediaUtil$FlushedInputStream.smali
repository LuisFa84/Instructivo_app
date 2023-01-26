.class Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 586
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    const-wide/16 v2, 0x0

    .line 591
    .local v2, "totalBytesSkipped":J
    :goto_2
    cmp-long v4, v2, p1

    if-gez v4, :cond_1a

    .line 592
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 593
    .local v0, "bytesSkipped":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1d

    .line 594
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->read()I

    move-result v4

    if-gez v4, :cond_1b

    .line 602
    .end local v0    # "bytesSkipped":J
    :cond_1a
    return-wide v2

    .line 597
    .restart local v0    # "bytesSkipped":J
    :cond_1b
    const-wide/16 v0, 0x1

    .line 600
    :cond_1d
    add-long/2addr v2, v0

    .line 601
    goto :goto_2
.end method

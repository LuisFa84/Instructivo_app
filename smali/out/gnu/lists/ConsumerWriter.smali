.class public Lgnu/lists/ConsumerWriter;
.super Ljava/io/Writer;
.source "ConsumerWriter.java"


# instance fields
.field protected out:Lgnu/lists/Consumer;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .registers 2
    .param p1, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/lists/ConsumerWriter;->out:Lgnu/lists/Consumer;

    .line 16
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lgnu/lists/ConsumerWriter;->flush()V

    .line 29
    return-void
.end method

.method public finalize()V
    .registers 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/lists/ConsumerWriter;->close()V

    .line 34
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lgnu/lists/ConsumerWriter;->out:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 21
    return-void
.end method

.class Lgnu/kawa/functions/LispPrettyFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field body:Ljava/text/Format;

.field perLine:Z

.field prefix:Ljava/lang/String;

.field seenAt:Z

.field segments:[Ljava/text/Format;

.field suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 875
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 12
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
    .line 888
    iget-object v3, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 889
    .local v3, "pre":Ljava/lang/String;
    iget-object v4, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 890
    .local v4, "suf":Ljava/lang/String;
    instance-of v5, p3, Lgnu/mapping/OutPort;

    if-eqz v5, :cond_25

    move-object v5, p3

    check-cast v5, Lgnu/mapping/OutPort;

    move-object v2, v5

    .line 893
    .local v2, "out":Lgnu/mapping/OutPort;
    :goto_c
    :try_start_c
    iget-boolean v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    if-eqz v5, :cond_27

    .line 895
    if-eqz v2, :cond_19

    .line 896
    iget-boolean v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 897
    :cond_19
    iget-object v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-static {v5, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_4c

    move-result p2

    .line 916
    :goto_1f
    if-eqz v2, :cond_24

    .line 917
    invoke-virtual {v2, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 919
    :cond_24
    return p2

    .line 890
    .end local v2    # "out":Lgnu/mapping/OutPort;
    :cond_25
    const/4 v2, 0x0

    goto :goto_c

    .line 901
    .restart local v2    # "out":Lgnu/mapping/OutPort;
    :cond_27
    :try_start_27
    aget-object v0, p1, p2

    .line 902
    .local v0, "curArg":Ljava/lang/Object;
    invoke-static {v0}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 903
    .local v1, "curArr":[Ljava/lang/Object;
    if-nez v1, :cond_32

    .line 904
    const-string v4, ""

    move-object v3, v4

    .line 905
    :cond_32
    if-eqz v2, :cond_3b

    .line 906
    iget-boolean v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v6}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 907
    :cond_3b
    if-nez v1, :cond_45

    .line 908
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static {v0, p3, v5, v6}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    .line 911
    :goto_42
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    .line 910
    :cond_45
    iget-object v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_4c

    goto :goto_42

    .line 916
    .end local v0    # "curArg":Ljava/lang/Object;
    .end local v1    # "curArr":[Ljava/lang/Object;
    :catchall_4c
    move-exception v5

    if-eqz v2, :cond_52

    .line 917
    invoke-virtual {v2, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_52
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "LispPrettyFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    const-string v1, "prefix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    const-string v1, "\", suffix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    const-string v1, "\", body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 930
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

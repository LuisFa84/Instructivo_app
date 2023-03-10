.class Lgnu/kawa/functions/LispEscapeFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field public static final ESCAPE_ALL:I = 0xf2

.field public static final ESCAPE_NORMAL:I = 0xf1

.field public static final alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;


# instance fields
.field escapeAll:Z

.field param1:I

.field param2:I

.field param3:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 785
    new-instance v0, Lgnu/kawa/functions/LispEscapeFormat;

    const/4 v1, 0x0

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(II)V

    sput-object v0, Lgnu/kawa/functions/LispEscapeFormat;->alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "param1"    # I
    .param p2, "param2"    # I

    .prologue
    .line 789
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 790
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 791
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 792
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 793
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # I

    .prologue
    .line 796
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 797
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 798
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 799
    iput p3, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 800
    return-void
.end method

.method static getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;
    .registers 7
    .param p0, "param"    # I
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 804
    const/high16 v1, -0x50000000

    if-ne p0, v1, :cond_b

    .line 805
    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    .line 823
    :goto_a
    return-object v0

    .line 806
    :cond_b
    const/high16 v1, -0x60000000

    if-ne p0, v1, :cond_66

    .line 808
    aget-object v0, p1, p2

    .line 809
    .local v0, "arg":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/math/Numeric;

    if-eqz v1, :cond_18

    .line 810
    check-cast v0, Lgnu/math/Numeric;

    goto :goto_a

    .line 811
    :cond_18
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3c

    .line 813
    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_24

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_31

    .line 814
    :cond_24
    new-instance v1, Lgnu/math/DFloNum;

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v0, v1

    goto :goto_a

    .line 815
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_31
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_a

    .line 817
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_3c
    instance-of v1, v0, Lgnu/text/Char;

    if-eqz v1, :cond_4d

    .line 818
    new-instance v1, Lgnu/math/IntNum;

    check-cast v0, Lgnu/text/Char;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lgnu/math/IntNum;-><init>(I)V

    move-object v0, v1

    goto :goto_a

    .line 819
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_4d
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_5e

    .line 820
    new-instance v1, Lgnu/math/IntNum;

    check-cast v0, Ljava/lang/Character;

    .end local v0    # "arg":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Lgnu/math/IntNum;-><init>(I)V

    move-object v0, v1

    goto :goto_a

    .line 821
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_5e
    new-instance v0, Lgnu/math/DFloNum;

    .end local v0    # "arg":Ljava/lang/Object;
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_a

    .line 823
    :cond_66
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 14
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
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/high16 v8, -0x60000000

    const/high16 v7, -0x40000000    # -2.0f

    .line 834
    move v4, p2

    .line 836
    .local v4, "orig_start":I
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-ne v6, v7, :cond_17

    .line 837
    array-length v6, p1

    if-ne p2, v6, :cond_15

    .line 864
    .local v3, "do_terminate":Z
    :goto_e
    if-nez v3, :cond_66

    :goto_10
    invoke-static {v5, p2}, Lgnu/kawa/functions/LispEscapeFormat;->result(II)I

    move-result v5

    return v5

    .end local v3    # "do_terminate":Z
    :cond_15
    move v3, v5

    .line 837
    goto :goto_e

    .line 838
    :cond_17
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v6, v7, :cond_21

    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-nez v6, :cond_21

    .line 839
    const/4 v3, 0x1

    .restart local v3    # "do_terminate":Z
    goto :goto_e

    .line 842
    .end local v3    # "do_terminate":Z
    :cond_21
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    invoke-static {v6, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    .line 843
    .local v0, "arg1":Lgnu/math/Numeric;
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-ne v6, v8, :cond_2d

    add-int/lit8 p2, p2, 0x1

    .line 844
    :cond_2d
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v6, v7, :cond_36

    .line 846
    invoke-virtual {v0}, Lgnu/math/Numeric;->isZero()Z

    move-result v3

    .restart local v3    # "do_terminate":Z
    goto :goto_e

    .line 850
    .end local v3    # "do_terminate":Z
    :cond_36
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    invoke-static {v6, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v1

    .line 851
    .local v1, "arg2":Lgnu/math/Numeric;
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v6, v8, :cond_42

    add-int/lit8 p2, p2, 0x1

    .line 852
    :cond_42
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v6, v7, :cond_4b

    .line 854
    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->equals(Ljava/lang/Object;)Z

    move-result v3

    .restart local v3    # "do_terminate":Z
    goto :goto_e

    .line 858
    .end local v3    # "do_terminate":Z
    :cond_4b
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    invoke-static {v6, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v2

    .line 859
    .local v2, "arg3":Lgnu/math/Numeric;
    iget v6, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v6, v8, :cond_57

    add-int/lit8 p2, p2, 0x1

    .line 860
    :cond_57
    invoke-virtual {v1, v0}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-virtual {v2, v1}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .restart local v3    # "do_terminate":Z
    :goto_63
    goto :goto_e

    .end local v3    # "do_terminate":Z
    :cond_64
    move v3, v5

    goto :goto_63

    .line 864
    .end local v0    # "arg1":Lgnu/math/Numeric;
    .end local v1    # "arg2":Lgnu/math/Numeric;
    .end local v2    # "arg3":Lgnu/math/Numeric;
    .restart local v3    # "do_terminate":Z
    :cond_66
    iget-boolean v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->escapeAll:Z

    if-eqz v5, :cond_6d

    const/16 v5, 0xf2

    goto :goto_10

    :cond_6d
    const/16 v5, 0xf1

    goto :goto_10
.end method

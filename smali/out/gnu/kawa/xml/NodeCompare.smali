.class public Lgnu/kawa/xml/NodeCompare;
.super Lgnu/mapping/Procedure2;
.source "NodeCompare.java"


# static fields
.field public static final $Eq:Lgnu/kawa/xml/NodeCompare;

.field public static final $Gr:Lgnu/kawa/xml/NodeCompare;

.field public static final $Ls:Lgnu/kawa/xml/NodeCompare;

.field public static final $Ne:Lgnu/kawa/xml/NodeCompare;

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "is"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    .line 27
    const-string v0, "isnot"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    .line 28
    const-string v0, ">>"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Gr:Lgnu/kawa/xml/NodeCompare;

    .line 29
    const-string v0, "<<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ls:Lgnu/kawa/xml/NodeCompare;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 33
    new-instance v0, Lgnu/kawa/xml/NodeCompare;

    invoke-direct {v0}, Lgnu/kawa/xml/NodeCompare;-><init>()V

    .line 34
    .local v0, "proc":Lgnu/kawa/xml/NodeCompare;
    invoke-virtual {v0, p0}, Lgnu/kawa/xml/NodeCompare;->setName(Ljava/lang/String;)V

    .line 35
    iput p1, v0, Lgnu/kawa/xml/NodeCompare;->flags:I

    .line 36
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 41
    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 42
    :cond_5
    const/4 p1, 0x0

    .line 99
    .end local p1    # "arg1":Ljava/lang/Object;
    :cond_6
    :goto_6
    return-object p1

    .line 43
    .restart local p1    # "arg1":Ljava/lang/Object;
    :cond_7
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v8, :cond_6

    .line 45
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v8, :cond_11

    move-object p1, p2

    .line 46
    goto :goto_6

    .line 50
    :cond_11
    instance-of v8, p1, Lgnu/lists/AbstractSequence;

    if-eqz v8, :cond_39

    move-object v5, p1

    .line 52
    check-cast v5, Lgnu/lists/AbstractSequence;

    .line 53
    .local v5, "seq1":Lgnu/lists/AbstractSequence;
    invoke-virtual {v5}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v3

    .line 68
    .local v3, "ipos1":I
    :goto_1c
    instance-of v8, p2, Lgnu/lists/AbstractSequence;

    if-eqz v8, :cond_4a

    move-object v6, p2

    .line 70
    check-cast v6, Lgnu/lists/AbstractSequence;

    .line 71
    .local v6, "seq2":Lgnu/lists/AbstractSequence;
    invoke-virtual {v6}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v4

    .line 88
    .local v4, "ipos2":I
    :goto_27
    if-ne v5, v6, :cond_5c

    .line 89
    invoke-virtual {v5, v3, v4}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v1

    .line 96
    .local v1, "comp":I
    :goto_2d
    add-int/lit8 v8, v1, 0x3

    shl-int v8, v9, v8

    iget v9, p0, Lgnu/kawa/xml/NodeCompare;->flags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_6f

    .line 97
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 59
    .end local v1    # "comp":I
    .end local v3    # "ipos1":I
    .end local v4    # "ipos2":I
    .end local v5    # "seq1":Lgnu/lists/AbstractSequence;
    .end local v6    # "seq2":Lgnu/lists/AbstractSequence;
    :cond_39
    :try_start_39
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v7, v0

    .line 60
    .local v7, "spos":Lgnu/lists/SeqPosition;
    iget-object v5, v7, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 61
    .restart local v5    # "seq1":Lgnu/lists/AbstractSequence;
    invoke-virtual {v7}, Lgnu/lists/SeqPosition;->getPos()I
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_42} :catch_44

    move-result v3

    .restart local v3    # "ipos1":I
    goto :goto_1c

    .line 63
    .end local v3    # "ipos1":I
    .end local v5    # "seq1":Lgnu/lists/AbstractSequence;
    .end local v7    # "spos":Lgnu/lists/SeqPosition;
    :catch_44
    move-exception v2

    .line 65
    .local v2, "ex":Ljava/lang/ClassCastException;
    invoke-static {v2, p0, v9, p1}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object v8

    throw v8

    .line 77
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    .restart local v3    # "ipos1":I
    .restart local v5    # "seq1":Lgnu/lists/AbstractSequence;
    :cond_4a
    :try_start_4a
    move-object v0, p2

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v7, v0

    .line 78
    .restart local v7    # "spos":Lgnu/lists/SeqPosition;
    iget-object v6, v7, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 79
    .restart local v6    # "seq2":Lgnu/lists/AbstractSequence;
    invoke-virtual {v7}, Lgnu/lists/SeqPosition;->getPos()I
    :try_end_53
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_53} :catch_55

    move-result v4

    .restart local v4    # "ipos2":I
    goto :goto_27

    .line 81
    .end local v4    # "ipos2":I
    .end local v6    # "seq2":Lgnu/lists/AbstractSequence;
    .end local v7    # "spos":Lgnu/lists/SeqPosition;
    :catch_55
    move-exception v2

    .line 83
    .restart local v2    # "ex":Ljava/lang/ClassCastException;
    const/4 v8, 0x2

    invoke-static {v2, p0, v8, p2}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object v8

    throw v8

    .line 90
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    .restart local v4    # "ipos2":I
    .restart local v6    # "seq2":Lgnu/lists/AbstractSequence;
    :cond_5c
    sget-object v8, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    if-ne p0, v8, :cond_63

    .line 91
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .line 92
    :cond_63
    sget-object v8, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    if-ne p0, v8, :cond_6a

    .line 93
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    .line 95
    :cond_6a
    invoke-virtual {v5, v6}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v1

    .restart local v1    # "comp":I
    goto :goto_2d

    .line 99
    :cond_6f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6
.end method

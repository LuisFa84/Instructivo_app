.class public Lgnu/xquery/util/MinMax;
.super Ljava/lang/Object;
.source "MinMax.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 88
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 89
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_14

    .line 90
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "arg":Ljava/lang/Object;
    check-cast p0, Ljava/lang/Double;

    .line 92
    :cond_14
    return-object p0
.end method

.method public static max(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "collation"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static min(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "collation"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 16
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "returnMax"    # Z
    .param p2, "collation"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 26
    instance-of v12, p0, Lgnu/mapping/Values;

    if-eqz v12, :cond_7b

    move-object v9, p0

    .line 28
    check-cast v9, Lgnu/lists/TreeList;

    .line 29
    .local v9, "tlist":Lgnu/lists/TreeList;
    const/4 v6, 0x0

    .line 30
    .local v6, "pos":I
    if-eqz p1, :cond_19

    .line 31
    .local v5, "flags":I
    :goto_e
    invoke-virtual {v9, v6}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    .line 32
    .local v4, "cur":Ljava/lang/Object;
    sget-object v12, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v4, v12, :cond_1b

    .line 33
    sget-object v8, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 82
    .end local v4    # "cur":Ljava/lang/Object;
    .end local v5    # "flags":I
    .end local v6    # "pos":I
    .end local v9    # "tlist":Lgnu/lists/TreeList;
    :cond_18
    :goto_18
    return-object v8

    .line 30
    .restart local v6    # "pos":I
    .restart local v9    # "tlist":Lgnu/lists/TreeList;
    :cond_19
    const/4 v5, 0x4

    goto :goto_e

    .line 34
    .restart local v4    # "cur":Ljava/lang/Object;
    .restart local v5    # "flags":I
    :cond_1b
    invoke-static {v4}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 37
    :cond_1f
    :goto_1f
    invoke-virtual {v9, v6}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v6

    .line 38
    invoke-virtual {v9, v6}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    .line 39
    sget-object v12, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-eq v4, v12, :cond_18

    .line 41
    invoke-static {v4}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 43
    instance-of v12, v8, Ljava/lang/Number;

    if-nez v12, :cond_37

    instance-of v12, v4, Ljava/lang/Number;

    if-eqz v12, :cond_73

    .line 45
    :cond_37
    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v2

    .line 46
    .local v2, "code1":I
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v3

    .line 47
    .local v3, "code2":I
    invoke-static {v8, v2, v4, v3, v11}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v7

    .line 49
    .local v7, "rcode":I
    const/4 v12, -0x3

    if-ne v7, v12, :cond_4e

    .line 50
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "values cannot be compared"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 51
    :cond_4e
    if-ge v2, v3, :cond_5e

    move v1, v3

    .line 53
    .local v1, "code":I
    :goto_51
    const/4 v12, -0x2

    if-ne v7, v12, :cond_60

    .line 55
    sget-object v8, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    .line 56
    .local v8, "result":Ljava/lang/Double;
    const/4 v0, 0x1

    .line 67
    .end local v8    # "result":Ljava/lang/Double;
    .local v0, "castNeeded":Z
    :goto_57
    if-eqz v0, :cond_1f

    .line 68
    invoke-static {v8, v1}, Lgnu/kawa/functions/Arithmetic;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .local v8, "result":Ljava/lang/Object;
    goto :goto_1f

    .end local v0    # "castNeeded":Z
    .end local v1    # "code":I
    .end local v8    # "result":Ljava/lang/Object;
    :cond_5e
    move v1, v2

    .line 51
    goto :goto_51

    .line 58
    .restart local v1    # "code":I
    :cond_60
    invoke-static {v7, v5}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v12

    if-nez v12, :cond_6d

    .line 60
    if-eq v1, v3, :cond_6b

    move v0, v10

    .line 61
    .restart local v0    # "castNeeded":Z
    :goto_69
    move-object v8, v4

    .restart local v8    # "result":Ljava/lang/Object;
    goto :goto_57

    .end local v0    # "castNeeded":Z
    .end local v8    # "result":Ljava/lang/Object;
    :cond_6b
    move v0, v11

    .line 60
    goto :goto_69

    .line 65
    :cond_6d
    if-eq v1, v2, :cond_71

    move v0, v10

    .restart local v0    # "castNeeded":Z
    :goto_70
    goto :goto_57

    .end local v0    # "castNeeded":Z
    :cond_71
    move v0, v11

    goto :goto_70

    .line 72
    .end local v1    # "code":I
    .end local v2    # "code1":I
    .end local v3    # "code2":I
    .end local v7    # "rcode":I
    :cond_73
    invoke-static {v5, v8, v4, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 73
    move-object v8, v4

    .restart local v8    # "result":Ljava/lang/Object;
    goto :goto_1f

    .line 79
    .end local v4    # "cur":Ljava/lang/Object;
    .end local v5    # "flags":I
    .end local v6    # "pos":I
    .end local v8    # "result":Ljava/lang/Object;
    .end local v9    # "tlist":Lgnu/lists/TreeList;
    :cond_7b
    invoke-static {p0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    invoke-static {v5, p0, p0, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-object v8, p0

    .line 82
    goto :goto_18
.end method

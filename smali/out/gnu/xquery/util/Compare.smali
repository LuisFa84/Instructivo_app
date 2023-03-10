.class public Lgnu/xquery/util/Compare;
.super Lgnu/mapping/Procedure2;
.source "Compare.java"


# static fields
.field public static final $Eq:Lgnu/xquery/util/Compare;

.field public static final $Ex$Eq:Lgnu/xquery/util/Compare;

.field public static final $Gr:Lgnu/xquery/util/Compare;

.field public static final $Gr$Eq:Lgnu/xquery/util/Compare;

.field public static final $Ls:Lgnu/xquery/util/Compare;

.field public static final $Ls$Eq:Lgnu/xquery/util/Compare;

.field static final LENIENT_COMPARISON:I = 0x40

.field static final LENIENT_EQ:I = 0x48

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4

.field static final TRUE_IF_NAN:I = 0x2

.field static final TRUE_IF_NEQ:I = 0x1

.field static final VALUE_COMPARISON:I = 0x20

.field public static final valEq:Lgnu/xquery/util/Compare;

.field public static final valGe:Lgnu/xquery/util/Compare;

.field public static final valGt:Lgnu/xquery/util/Compare;

.field public static final valLe:Lgnu/xquery/util/Compare;

.field public static final valLt:Lgnu/xquery/util/Compare;

.field public static final valNe:Lgnu/xquery/util/Compare;


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 234
    const-string v0, "="

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Eq:Lgnu/xquery/util/Compare;

    .line 235
    const-string v0, "!="

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ex$Eq:Lgnu/xquery/util/Compare;

    .line 237
    const-string v0, ">"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr:Lgnu/xquery/util/Compare;

    .line 238
    const-string v0, ">="

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr$Eq:Lgnu/xquery/util/Compare;

    .line 239
    const-string v0, "<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls:Lgnu/xquery/util/Compare;

    .line 240
    const-string v0, "<="

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls$Eq:Lgnu/xquery/util/Compare;

    .line 242
    const-string v0, "eq"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valEq:Lgnu/xquery/util/Compare;

    .line 244
    const-string v0, "ne"

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valNe:Lgnu/xquery/util/Compare;

    .line 246
    const-string v0, "gt"

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGt:Lgnu/xquery/util/Compare;

    .line 248
    const-string v0, "ge"

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGe:Lgnu/xquery/util/Compare;

    .line 250
    const-string v0, "lt"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLt:Lgnu/xquery/util/Compare;

    .line 252
    const-string v0, "le"

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLe:Lgnu/xquery/util/Compare;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .registers 11
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    instance-of v6, p1, Lgnu/mapping/Values;

    if-eqz v6, :cond_21

    move-object v2, p1

    .line 64
    check-cast v2, Lgnu/mapping/Values;

    .line 65
    .local v2, "values1":Lgnu/mapping/Values;
    const/4 v0, 0x0

    .line 68
    .local v0, "index":I
    :goto_a
    invoke-virtual {v2, v0}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    .line 69
    .local v1, "next":I
    if-gez v1, :cond_11

    .line 90
    .end local v0    # "index":I
    .end local v1    # "next":I
    .end local v2    # "values1":Lgnu/mapping/Values;
    :cond_10
    :goto_10
    return v4

    .line 71
    .restart local v0    # "index":I
    .restart local v1    # "next":I
    .restart local v2    # "values1":Lgnu/mapping/Values;
    :cond_11
    shl-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, v6, p2, p3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v4, v5

    .line 72
    goto :goto_10

    .line 73
    :cond_1f
    move v0, v1

    .line 74
    goto :goto_a

    .line 76
    .end local v0    # "index":I
    .end local v1    # "next":I
    .end local v2    # "values1":Lgnu/mapping/Values;
    :cond_21
    instance-of v6, p2, Lgnu/mapping/Values;

    if-eqz v6, :cond_3f

    move-object v3, p2

    .line 78
    check-cast v3, Lgnu/mapping/Values;

    .line 79
    .local v3, "values2":Lgnu/mapping/Values;
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "index":I
    :goto_29
    invoke-virtual {v3, v0}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    .line 83
    .restart local v1    # "next":I
    if-ltz v1, :cond_10

    .line 85
    shl-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v6}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p0, p1, v6, p3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v6

    if-eqz v6, :cond_3d

    move v4, v5

    .line 86
    goto :goto_10

    .line 87
    :cond_3d
    move v0, v1

    .line 88
    goto :goto_29

    .line 90
    .end local v0    # "index":I
    .end local v1    # "next":I
    .end local v3    # "values2":Lgnu/mapping/Values;
    :cond_3f
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v4, v5, p3}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v4

    goto :goto_10
.end method

.method public static atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .registers 16
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 104
    instance-of v10, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v10, :cond_d

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "str":Ljava/lang/String;
    and-int/lit8 v10, p0, 0x20

    if-eqz v10, :cond_3a

    .line 108
    move-object p1, v7

    .line 120
    .end local v7    # "str":Ljava/lang/String;
    .end local p1    # "arg1":Ljava/lang/Object;
    :cond_d
    :goto_d
    instance-of v10, p2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v10, :cond_1a

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7    # "str":Ljava/lang/String;
    and-int/lit8 v10, p0, 0x20

    if-eqz v10, :cond_71

    .line 124
    move-object p2, v7

    .line 137
    .end local v7    # "str":Ljava/lang/String;
    .end local p2    # "arg2":Ljava/lang/Object;
    :cond_1a
    :goto_1a
    instance-of v10, p1, Ljava/lang/Number;

    if-nez v10, :cond_22

    instance-of v10, p2, Ljava/lang/Number;

    if-eqz v10, :cond_11b

    .line 139
    :cond_22
    instance-of v10, p1, Lgnu/math/Duration;

    if-eqz v10, :cond_cb

    .line 141
    instance-of v10, p2, Lgnu/math/Duration;

    if-nez v10, :cond_aa

    .line 142
    const/4 v2, -0x3

    .line 179
    .local v2, "comp":I
    :goto_2b
    const/4 v10, -0x3

    if-ne v2, v10, :cond_116

    and-int/lit8 v10, p0, 0x40

    if-nez v10, :cond_116

    .line 180
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "values cannot be compared"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 109
    .end local v2    # "comp":I
    .restart local v7    # "str":Ljava/lang/String;
    .restart local p1    # "arg1":Ljava/lang/Object;
    .restart local p2    # "arg2":Ljava/lang/Object;
    :cond_3a
    instance-of v10, p2, Lgnu/math/DateTime;

    if-eqz v10, :cond_4a

    move-object v10, p2

    .line 110
    check-cast v10, Lgnu/math/DateTime;

    invoke-virtual {v10}, Lgnu/math/DateTime;->components()I

    move-result v10

    invoke-static {v7, v10}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    .local p1, "arg1":Lgnu/math/DateTime;
    goto :goto_d

    .line 111
    .local p1, "arg1":Ljava/lang/Object;
    :cond_4a
    instance-of v10, p2, Lgnu/math/Duration;

    if-eqz v10, :cond_5a

    move-object v10, p2

    .line 112
    check-cast v10, Lgnu/math/Duration;

    invoke-virtual {v10}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v10

    invoke-static {v7, v10}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    .local p1, "arg1":Lgnu/math/Duration;
    goto :goto_d

    .line 113
    .local p1, "arg1":Ljava/lang/Object;
    :cond_5a
    instance-of v10, p2, Ljava/lang/Number;

    if-eqz v10, :cond_64

    .line 114
    new-instance p1, Lgnu/math/DFloNum;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-direct {p1, v7}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    .local p1, "arg1":Lgnu/math/DFloNum;
    goto :goto_d

    .line 115
    .local p1, "arg1":Ljava/lang/Object;
    :cond_64
    instance-of v10, p2, Ljava/lang/Boolean;

    if-eqz v10, :cond_6f

    .line 116
    sget-object v10, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v10, v7}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_d

    .line 118
    :cond_6f
    move-object p1, v7

    .local p1, "arg1":Ljava/lang/String;
    goto :goto_d

    .line 125
    .end local p1    # "arg1":Ljava/lang/String;
    :cond_71
    instance-of v10, p1, Lgnu/math/DateTime;

    if-eqz v10, :cond_81

    move-object v10, p1

    .line 126
    check-cast v10, Lgnu/math/DateTime;

    invoke-virtual {v10}, Lgnu/math/DateTime;->components()I

    move-result v10

    invoke-static {v7, v10}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p2

    .local p2, "arg2":Lgnu/math/DateTime;
    goto :goto_1a

    .line 127
    .local p2, "arg2":Ljava/lang/Object;
    :cond_81
    instance-of v10, p1, Lgnu/math/Duration;

    if-eqz v10, :cond_91

    move-object v10, p1

    .line 128
    check-cast v10, Lgnu/math/Duration;

    invoke-virtual {v10}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v10

    invoke-static {v7, v10}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p2

    .local p2, "arg2":Lgnu/math/Duration;
    goto :goto_1a

    .line 129
    .local p2, "arg2":Ljava/lang/Object;
    :cond_91
    instance-of v10, p1, Ljava/lang/Number;

    if-eqz v10, :cond_9b

    .line 130
    new-instance p2, Lgnu/math/DFloNum;

    .end local p2    # "arg2":Ljava/lang/Object;
    invoke-direct {p2, v7}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    .local p2, "arg2":Lgnu/math/DFloNum;
    goto :goto_1a

    .line 131
    .local p2, "arg2":Ljava/lang/Object;
    :cond_9b
    instance-of v10, p1, Ljava/lang/Boolean;

    if-eqz v10, :cond_a7

    .line 132
    sget-object v10, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v10, v7}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_1a

    .line 134
    :cond_a7
    move-object p2, v7

    .local p2, "arg2":Ljava/lang/String;
    goto/16 :goto_1a

    .end local v7    # "str":Ljava/lang/String;
    .end local p2    # "arg2":Ljava/lang/String;
    :cond_aa
    move-object v3, p1

    .line 145
    check-cast v3, Lgnu/math/Duration;

    .local v3, "d1":Lgnu/math/Duration;
    move-object v4, p2

    .line 146
    check-cast v4, Lgnu/math/Duration;

    .line 147
    .local v4, "d2":Lgnu/math/Duration;
    iget-object v10, v3, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object v11, v4, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v10, v11, :cond_bc

    iget-object v10, v3, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v11, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v10, v11, :cond_c5

    :cond_bc
    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v10

    if-nez v10, :cond_c5

    .line 149
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 151
    .end local v2    # "comp":I
    :cond_c5
    invoke-static {v3, v4}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v2

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 154
    .end local v2    # "comp":I
    .end local v3    # "d1":Lgnu/math/Duration;
    .end local v4    # "d2":Lgnu/math/Duration;
    :cond_cb
    instance-of v10, p1, Lgnu/math/DateTime;

    if-eqz v10, :cond_104

    .line 156
    instance-of v10, p2, Lgnu/math/DateTime;

    if-nez v10, :cond_d6

    .line 157
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .end local v2    # "comp":I
    :cond_d6
    move-object v3, p1

    .line 160
    check-cast v3, Lgnu/math/DateTime;

    .local v3, "d1":Lgnu/math/DateTime;
    move-object v4, p2

    .line 161
    check-cast v4, Lgnu/math/DateTime;

    .line 162
    .local v4, "d2":Lgnu/math/DateTime;
    invoke-virtual {v3}, Lgnu/math/DateTime;->components()I

    move-result v5

    .line 163
    .local v5, "m1":I
    invoke-virtual {v4}, Lgnu/math/DateTime;->components()I

    move-result v6

    .line 164
    .local v6, "m2":I
    if-eq v5, v6, :cond_e9

    .line 165
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 166
    .end local v2    # "comp":I
    :cond_e9
    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v10

    if-nez v10, :cond_fe

    const/16 v10, 0x70

    if-eq v5, v10, :cond_fe

    const/16 v10, 0xe

    if-eq v5, v10, :cond_fe

    const/16 v10, 0x7e

    if-eq v5, v10, :cond_fe

    .line 170
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 172
    .end local v2    # "comp":I
    :cond_fe
    invoke-static {v3, v4}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result v2

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 175
    .end local v2    # "comp":I
    .end local v3    # "d1":Lgnu/math/DateTime;
    .end local v4    # "d2":Lgnu/math/DateTime;
    .end local v5    # "m1":I
    .end local v6    # "m2":I
    :cond_104
    instance-of v10, p2, Lgnu/math/Duration;

    if-nez v10, :cond_10c

    instance-of v10, p2, Lgnu/math/DateTime;

    if-eqz v10, :cond_10f

    .line 176
    :cond_10c
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 178
    .end local v2    # "comp":I
    :cond_10f
    const/4 v10, 0x0

    invoke-static {p1, p2, v10}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v2

    .restart local v2    # "comp":I
    goto/16 :goto_2b

    .line 181
    :cond_116
    invoke-static {v2, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v10

    .line 217
    :goto_11a
    return v10

    .line 183
    .end local v2    # "comp":I
    :cond_11b
    instance-of v10, p1, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_143

    .line 185
    instance-of v10, p2, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_141

    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v10

    if-eqz v10, :cond_141

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13f

    const/4 v2, 0x0

    .line 215
    .restart local v2    # "comp":I
    :goto_130
    const/4 v10, -0x3

    if-ne v2, v10, :cond_18a

    and-int/lit8 v10, p0, 0x40

    if-nez v10, :cond_18a

    .line 216
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "values cannot be compared"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    .end local v2    # "comp":I
    :cond_13f
    const/4 v2, -0x2

    goto :goto_130

    .line 188
    :cond_141
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto :goto_130

    .line 190
    .end local v2    # "comp":I
    :cond_143
    instance-of v10, p1, Ljava/lang/Boolean;

    if-eqz v10, :cond_163

    .line 192
    instance-of v10, p2, Ljava/lang/Boolean;

    if-eqz v10, :cond_161

    .line 194
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 195
    .local v0, "b1":Z
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 196
    .local v1, "b2":Z
    if-ne v0, v1, :cond_15b

    const/4 v2, 0x0

    .line 197
    .restart local v2    # "comp":I
    :goto_15a
    goto :goto_130

    .line 196
    .end local v2    # "comp":I
    :cond_15b
    if-eqz v1, :cond_15f

    const/4 v2, -0x1

    goto :goto_15a

    :cond_15f
    const/4 v2, 0x1

    goto :goto_15a

    .line 199
    .end local v0    # "b1":Z
    .end local v1    # "b2":Z
    :cond_161
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto :goto_130

    .line 201
    .end local v2    # "comp":I
    :cond_163
    instance-of v10, p2, Ljava/lang/Boolean;

    if-nez v10, :cond_16b

    instance-of v10, p2, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_16d

    .line 202
    :cond_16b
    const/4 v2, -0x3

    .restart local v2    # "comp":I
    goto :goto_130

    .line 205
    .end local v2    # "comp":I
    :cond_16d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "str1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "str2":Ljava/lang/String;
    if-eqz p3, :cond_17f

    .line 209
    invoke-virtual {p3, v8, v9}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 213
    .restart local v2    # "comp":I
    :goto_17b
    if-gez v2, :cond_184

    const/4 v2, -0x1

    :goto_17e
    goto :goto_130

    .line 212
    .end local v2    # "comp":I
    :cond_17f
    invoke-static {v8, v9}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "comp":I
    goto :goto_17b

    .line 213
    :cond_184
    if-lez v2, :cond_188

    const/4 v2, 0x1

    goto :goto_17e

    :cond_188
    const/4 v2, 0x0

    goto :goto_17e

    .line 217
    .end local v8    # "str1":Ljava/lang/String;
    .end local v9    # "str2":Ljava/lang/String;
    :cond_18a
    invoke-static {v2, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v10

    goto :goto_11a
.end method

.method public static equalityComparison(I)Z
    .registers 5
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_f

    move v3, v0

    :goto_7
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_11

    move v2, v0

    :goto_c
    if-ne v3, v2, :cond_13

    :goto_e
    return v0

    :cond_f
    move v3, v1

    goto :goto_7

    :cond_11
    move v2, v1

    goto :goto_c

    :cond_13
    move v0, v1

    goto :goto_e
.end method

.method public static make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 34
    new-instance v0, Lgnu/xquery/util/Compare;

    invoke-direct {v0}, Lgnu/xquery/util/Compare;-><init>()V

    .line 35
    .local v0, "proc":Lgnu/xquery/util/Compare;
    invoke-virtual {v0, p0}, Lgnu/xquery/util/Compare;->setName(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.xquery.util.CompileMisc:validateCompare"

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/Compare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iput p1, v0, Lgnu/xquery/util/Compare;->flags:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 222
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2d

    .line 224
    if-eqz p1, :cond_d

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_f

    :cond_d
    move-object v0, p1

    .line 231
    :goto_e
    return-object v0

    .line 225
    :cond_f
    if-eqz p2, :cond_15

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v0, :cond_17

    :cond_15
    move-object v0, p2

    goto :goto_e

    .line 226
    :cond_17
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e

    .line 231
    :cond_2d
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {v0, p1, p2, v3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e
.end method

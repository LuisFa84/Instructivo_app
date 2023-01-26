.class public Lgnu/bytecode/Access;
.super Ljava/lang/Object;
.source "Access.java"


# static fields
.field public static final ABSTRACT:S = 0x400s

.field public static final ANNOTATION:S = 0x2000s

.field public static final BRIDGE:S = 0x40s

.field public static final CLASS_CONTEXT:C = 'C'

.field public static final CLASS_MODIFIERS:S = 0x7631s

.field public static final ENUM:S = 0x4000s

.field public static final FIELD_CONTEXT:C = 'F'

.field public static final FIELD_MODIFIERS:S = 0x50dfs

.field public static final FINAL:S = 0x10s

.field public static final INNERCLASS_CONTEXT:C = 'I'

.field public static final INNERCLASS_MODIFIERS:S = 0x761fs

.field public static final INTERFACE:S = 0x200s

.field public static final METHOD_CONTEXT:C = 'M'

.field public static final METHOD_MODIFIERS:S = 0x1dffs

.field public static final NATIVE:S = 0x100s

.field public static final PRIVATE:S = 0x2s

.field public static final PROTECTED:S = 0x4s

.field public static final PUBLIC:S = 0x1s

.field public static final STATIC:S = 0x8s

.field public static final STRICT:S = 0x800s

.field public static final SUPER:S = 0x20s

.field public static final SYNCHRONIZED:S = 0x20s

.field public static final SYNTHETIC:S = 0x1000s

.field public static final TRANSIENT:S = 0x80s

.field public static final VARARGS:S = 0x80s

.field public static final VOLATILE:S = 0x40s


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(IC)Ljava/lang/String;
    .registers 8
    .param p0, "flags"    # I
    .param p1, "kind"    # C

    .prologue
    const/16 v5, 0x43

    const/16 v4, 0x4d

    .line 71
    if-ne p1, v5, :cond_b2

    const/16 v2, 0x7631

    .line 77
    .local v2, "mask":S
    :goto_8
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p0

    int-to-short v0, v3

    .line 78
    .local v0, "bad_flags":S
    and-int/2addr p0, v2

    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v1, "buf":Ljava/lang/StringBuffer;
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1b

    const-string v3, " public"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_1b
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_24

    const-string v3, " private"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_24
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_2d

    const-string v3, " protected"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_2d
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_36

    const-string v3, " static"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_36
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_3f

    const-string v3, " final"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_3f
    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_4a

    .line 86
    if-ne p1, v5, :cond_cc

    const-string v3, " super"

    :goto_47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_4a
    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_55

    .line 88
    if-ne p1, v4, :cond_d0

    const-string v3, " bridge"

    :goto_52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_55
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_60

    .line 90
    if-ne p1, v4, :cond_d3

    const-string v3, " varargs"

    :goto_5d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_60
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_69

    const-string v3, " native"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_69
    and-int/lit16 v3, p0, 0x200

    if-eqz v3, :cond_72

    const-string v3, " interface"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_72
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_7b

    const-string v3, " abstract"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_7b
    and-int/lit16 v3, p0, 0x800

    if-eqz v3, :cond_84

    const-string v3, " strict"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_84
    and-int/lit16 v3, p0, 0x4000

    if-eqz v3, :cond_8d

    const-string v3, " enum"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_8d
    and-int/lit16 v3, p0, 0x1000

    if-eqz v3, :cond_96

    const-string v3, " synthetic"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_96
    and-int/lit16 v3, p0, 0x2000

    if-eqz v3, :cond_9f

    const-string v3, " annotation"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_9f
    if-eqz v0, :cond_ad

    .line 100
    const-string v3, " unknown-flags:0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_ad
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 71
    .end local v0    # "bad_flags":S
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "mask":S
    :cond_b2
    const/16 v3, 0x49

    if-ne p1, v3, :cond_ba

    const/16 v2, 0x761f

    goto/16 :goto_8

    :cond_ba
    const/16 v3, 0x46

    if-ne p1, v3, :cond_c2

    const/16 v2, 0x50df

    goto/16 :goto_8

    :cond_c2
    if-ne p1, v4, :cond_c8

    const/16 v2, 0x1dff

    goto/16 :goto_8

    :cond_c8
    const/16 v2, 0x7fff

    goto/16 :goto_8

    .line 86
    .restart local v0    # "bad_flags":S
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "mask":S
    :cond_cc
    const-string v3, " synchronized"

    goto/16 :goto_47

    .line 88
    :cond_d0
    const-string v3, " volatile"

    goto :goto_52

    .line 90
    :cond_d3
    const-string v3, " transient"

    goto :goto_5d
.end method

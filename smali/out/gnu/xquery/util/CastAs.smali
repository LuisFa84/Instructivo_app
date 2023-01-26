.class public Lgnu/xquery/util/CastAs;
.super Lgnu/kawa/functions/Convert;
.source "CastAs.java"


# static fields
.field public static final castAs:Lgnu/xquery/util/CastAs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lgnu/xquery/util/CastAs;

    invoke-direct {v0}, Lgnu/xquery/util/CastAs;-><init>()V

    sput-object v0, Lgnu/xquery/util/CastAs;->castAs:Lgnu/xquery/util/CastAs;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/kawa/functions/Convert;-><init>()V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyCastAs"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/CastAs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 23
    move-object v7, p1

    check-cast v7, Lgnu/bytecode/Type;

    .line 24
    .local v7, "type":Lgnu/bytecode/Type;
    instance-of v10, v7, Lgnu/kawa/xml/XDataType;

    if-eqz v10, :cond_e

    .line 25
    check-cast v7, Lgnu/kawa/xml/XDataType;

    .end local v7    # "type":Lgnu/bytecode/Type;
    invoke-virtual {v7, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 66
    .end local p2    # "arg2":Ljava/lang/Object;
    :cond_d
    :goto_d
    return-object p2

    .line 26
    .restart local v7    # "type":Lgnu/bytecode/Type;
    .restart local p2    # "arg2":Ljava/lang/Object;
    :cond_e
    instance-of v10, v7, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v10, :cond_8d

    move-object v4, v7

    .line 28
    check-cast v4, Lgnu/kawa/reflect/OccurrenceType;

    .line 29
    .local v4, "occ":Lgnu/kawa/reflect/OccurrenceType;
    invoke-virtual {v4}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v0

    .line 30
    .local v0, "base":Lgnu/bytecode/Type;
    instance-of v10, v0, Lgnu/kawa/xml/XDataType;

    if-eqz v10, :cond_8d

    .line 32
    invoke-virtual {v4}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v2

    .line 33
    .local v2, "min":I
    invoke-virtual {v4}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v1

    .line 34
    .local v1, "max":I
    instance-of v10, p2, Lgnu/mapping/Values;

    if-eqz v10, :cond_5e

    .line 36
    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v10, :cond_2f

    if-eqz v2, :cond_d

    :cond_2f
    move-object v8, p2

    .line 38
    check-cast v8, Lgnu/mapping/Values;

    .line 39
    .local v8, "vals":Lgnu/mapping/Values;
    invoke-virtual {v8}, Lgnu/mapping/Values;->startPos()I

    move-result v5

    .line 40
    .local v5, "pos":I
    const/4 v3, 0x0

    .line 41
    .local v3, "n":I
    new-instance v6, Lgnu/mapping/Values;

    invoke-direct {v6}, Lgnu/mapping/Values;-><init>()V

    .line 44
    .local v6, "result":Lgnu/mapping/Values;
    :goto_3c
    invoke-virtual {v8, v5}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    .line 45
    if-nez v5, :cond_4d

    .line 47
    if-lt v3, v2, :cond_6a

    if-ltz v1, :cond_48

    if-gt v3, v1, :cond_6a

    .line 48
    :cond_48
    invoke-virtual {v6}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p2

    goto :goto_d

    .line 51
    :cond_4d
    invoke-virtual {v8, v5}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "value":Ljava/lang/Object;
    move-object v10, v0

    .line 52
    check-cast v10, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v10, v9}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 53
    invoke-virtual {v6, v9}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_3c

    .line 59
    .end local v3    # "n":I
    .end local v5    # "pos":I
    .end local v6    # "result":Lgnu/mapping/Values;
    .end local v8    # "vals":Lgnu/mapping/Values;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5e
    const/4 v10, 0x1

    if-gt v2, v10, :cond_6a

    if-eqz v1, :cond_6a

    .line 60
    check-cast v0, Lgnu/kawa/xml/XDataType;

    .end local v0    # "base":Lgnu/bytecode/Type;
    invoke-virtual {v0, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_d

    .line 62
    .restart local v0    # "base":Lgnu/bytecode/Type;
    :cond_6a
    new-instance v10, Ljava/lang/ClassCastException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot cast "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 66
    .end local v0    # "base":Lgnu/bytecode/Type;
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v4    # "occ":Lgnu/kawa/reflect/OccurrenceType;
    :cond_8d
    invoke-super {p0, p1, p2}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_d
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 4
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 72
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 73
    return-void
.end method

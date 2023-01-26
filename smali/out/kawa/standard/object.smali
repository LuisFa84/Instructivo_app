.class public Lkawa/standard/object;
.super Lkawa/lang/Syntax;
.source "object.java"


# static fields
.field public static final accessKeyword:Lgnu/expr/Keyword;

.field public static final allocationKeyword:Lgnu/expr/Keyword;

.field public static final classNameKeyword:Lgnu/expr/Keyword;

.field static final coloncolon:Lgnu/mapping/Symbol;

.field static final initKeyword:Lgnu/expr/Keyword;

.field static final init_formKeyword:Lgnu/expr/Keyword;

.field static final init_keywordKeyword:Lgnu/expr/Keyword;

.field static final init_valueKeyword:Lgnu/expr/Keyword;

.field static final initformKeyword:Lgnu/expr/Keyword;

.field public static final interfaceKeyword:Lgnu/expr/Keyword;

.field public static final objectSyntax:Lkawa/standard/object;

.field public static final throwsKeyword:Lgnu/expr/Keyword;

.field static final typeKeyword:Lgnu/expr/Keyword;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/object;

    sget-object v1, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/object;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    .line 15
    sget-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Lkawa/standard/object;->setName(Ljava/lang/String;)V

    .line 18
    const-string v0, "access"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    .line 19
    const-string v0, "class-name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    .line 20
    const-string v0, "interface"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    .line 21
    const-string v0, "throws"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    .line 22
    const-string v0, "type"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    .line 23
    const-string v0, "allocation"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    .line 24
    const-string v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    .line 25
    const-string v0, "initform"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    .line 26
    const-string v0, "init-form"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    .line 27
    const-string v0, "init-value"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    .line 28
    const-string v0, "init-keyword"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    .line 30
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .registers 2
    .param p1, "lambda"    # Lkawa/lang/Lambda;

    .prologue
    .line 33
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 34
    iput-object p1, p0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    .line 35
    return-void
.end method

.method static addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J
    .registers 14
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "previous"    # J
    .param p3, "allowed"    # J
    .param p5, "kind"    # Ljava/lang/String;
    .param p6, "tr"    # Lkawa/lang/Translator;

    .prologue
    const/16 v6, 0x65

    const-wide/16 v4, 0x0

    .line 625
    invoke-static {p0, p6}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v0

    .line 626
    .local v0, "flags":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_25

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown access specifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 632
    :cond_22
    :goto_22
    or-long v2, p1, v0

    return-wide v2

    .line 628
    :cond_25
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p3

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4e

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " access specifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6, v6, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_22

    .line 630
    :cond_4e
    and-long v2, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 631
    const/16 v2, 0x77

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " access specifiers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_22
.end method

.method static matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 637
    :goto_0
    instance-of v1, p0, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_b

    .line 638
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .restart local p0    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 639
    :cond_b
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_23

    move-object v0, p0

    .line 641
    check-cast v0, Lgnu/lists/Pair;

    .line 642
    .local v0, "p":Lgnu/lists/Pair;
    check-cast p0, Lgnu/lists/Pair;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object p0

    .line 643
    .restart local p0    # "value":Ljava/lang/Object;
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_23

    .line 644
    check-cast p0, Lgnu/lists/Pair;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v2

    .line 646
    .end local v0    # "p":Lgnu/lists/Pair;
    :goto_22
    return-wide v2

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_23
    invoke-static {p0, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v2

    goto :goto_22
.end method

.method private static matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 666
    instance-of v0, p0, Lgnu/expr/Keyword;

    if-eqz v0, :cond_16

    .line 667
    check-cast p0, Lgnu/expr/Keyword;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p0

    .line 672
    :cond_a
    :goto_a
    const-string v0, "private"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 673
    const-wide/32 v0, 0x1000000

    .line 688
    :goto_15
    return-wide v0

    .line 668
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_16
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_21

    .line 669
    check-cast p0, Lgnu/lists/FString;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, "value":Ljava/lang/String;
    goto :goto_a

    .line 670
    .local p0, "value":Ljava/lang/Object;
    :cond_21
    instance-of v0, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_a

    .line 671
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, "value":Ljava/lang/String;
    goto :goto_a

    .line 674
    .end local p0    # "value":Ljava/lang/String;
    :cond_2a
    const-string v0, "protected"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 675
    const-wide/32 v0, 0x2000000

    goto :goto_15

    .line 676
    :cond_36
    const-string v0, "public"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 677
    const-wide/32 v0, 0x4000000

    goto :goto_15

    .line 678
    :cond_42
    const-string v0, "package"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 679
    const-wide/32 v0, 0x8000000

    goto :goto_15

    .line 680
    :cond_4e
    const-string v0, "volatile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 681
    const-wide v0, 0x80000000L

    goto :goto_15

    .line 682
    :cond_5c
    const-string v0, "transient"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 683
    const-wide v0, 0x100000000L

    goto :goto_15

    .line 684
    :cond_6a
    const-string v0, "enum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 685
    const-wide v0, 0x200000000L

    goto :goto_15

    .line 686
    :cond_78
    const-string v0, "final"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 687
    const-wide v0, 0x400000000L

    goto :goto_15

    .line 688
    :cond_86
    const-wide/16 v0, 0x0

    goto :goto_15
.end method

.method private static matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J
    .registers 10
    .param p0, "pair"    # Lgnu/lists/Pair;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .prologue
    const-wide/16 v6, 0x0

    .line 651
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkawa/standard/object;->matchAccess1(Ljava/lang/Object;Lkawa/lang/Translator;)J

    move-result-wide v2

    .line 652
    .local v2, "icar":J
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, "cdr":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_16

    cmp-long v1, v2, v6

    if-nez v1, :cond_17

    .line 661
    .end local v0    # "cdr":Ljava/lang/Object;
    .end local v2    # "icar":J
    :cond_16
    :goto_16
    return-wide v2

    .line 655
    .restart local v0    # "cdr":Ljava/lang/Object;
    .restart local v2    # "icar":J
    :cond_17
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_27

    .line 657
    check-cast v0, Lgnu/lists/Pair;

    .end local v0    # "cdr":Ljava/lang/Object;
    invoke-static {v0, p1}, Lkawa/standard/object;->matchAccess2(Lgnu/lists/Pair;Lkawa/lang/Translator;)J

    move-result-wide v4

    .line 658
    .local v4, "icdr":J
    cmp-long v1, v4, v6

    if-eqz v1, :cond_27

    .line 659
    or-long/2addr v2, v4

    goto :goto_16

    .end local v4    # "icdr":J
    :cond_27
    move-wide v2, v6

    .line 661
    goto :goto_16
.end method

.method static matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z
    .registers 7
    .param p0, "exp"    # Ljava/lang/Object;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    const/4 v2, 0x0

    .line 610
    instance-of v3, p0, Lgnu/expr/Keyword;

    if-eqz v3, :cond_15

    .line 611
    check-cast p0, Lgnu/expr/Keyword;

    .end local p0    # "exp":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "value":Ljava/lang/String;
    :goto_b
    if-eqz p1, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const/4 v2, 0x1

    .end local v1    # "value":Ljava/lang/String;
    :cond_14
    return v2

    .line 612
    .restart local p0    # "exp":Ljava/lang/Object;
    :cond_15
    instance-of v3, p0, Lgnu/lists/FString;

    if-eqz v3, :cond_20

    .line 613
    check-cast p0, Lgnu/lists/FString;

    .end local p0    # "exp":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_b

    .line 614
    .end local v1    # "value":Ljava/lang/String;
    .restart local p0    # "exp":Ljava/lang/Object;
    :cond_20
    instance-of v3, p0, Lgnu/lists/Pair;

    if-eqz v3, :cond_14

    check-cast p0, Lgnu/lists/Pair;

    .end local p0    # "exp":Ljava/lang/Object;
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "qvalue":Ljava/lang/Object;
    instance-of v3, v0, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_14

    .line 616
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_b
.end method

.method private static rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    .registers 16
    .param p0, "d"    # Ljava/lang/Object;
    .param p1, "oexp"    # Lgnu/expr/ClassExp;
    .param p2, "initPair"    # Lgnu/lists/Pair;
    .param p3, "tr"    # Lkawa/lang/Translator;
    .param p4, "initSyntax"    # Lkawa/lang/SyntaxForm;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 558
    instance-of v6, p0, Lgnu/expr/Declaration;

    if-eqz v6, :cond_61

    move-object v6, p0

    check-cast v6, Lgnu/expr/Declaration;

    const-wide/16 v8, 0x800

    invoke-virtual {v6, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    .line 561
    .local v3, "isStatic":Z
    :goto_f
    if-eqz v3, :cond_69

    iget-object v1, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    .line 562
    .local v1, "initMethod":Lgnu/expr/LambdaExp;
    :goto_13
    if-nez v1, :cond_36

    .line 564
    new-instance v1, Lgnu/expr/LambdaExp;

    .end local v1    # "initMethod":Lgnu/expr/LambdaExp;
    new-instance v6, Lgnu/expr/BeginExp;

    invoke-direct {v6}, Lgnu/expr/BeginExp;-><init>()V

    invoke-direct {v1, v6}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    .line 565
    .restart local v1    # "initMethod":Lgnu/expr/LambdaExp;
    invoke-virtual {v1, v7}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 566
    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v6}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 567
    if-eqz v3, :cond_6c

    .line 569
    const-string v6, "$clinit$"

    invoke-virtual {v1, v6}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 570
    iput-object v1, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    .line 580
    :goto_30
    iget-object v6, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v6, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 581
    iput-object v1, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 583
    :cond_36
    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 584
    iget-object v4, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 585
    .local v4, "saveLambda":Lgnu/expr/LambdaExp;
    iput-object v1, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 586
    invoke-virtual {p3, p2, p4}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v2

    .line 587
    .local v2, "initValue":Lgnu/expr/Expression;
    instance-of v6, p0, Lgnu/expr/Declaration;

    if-eqz v6, :cond_7e

    move-object v0, p0

    .line 589
    check-cast v0, Lgnu/expr/Declaration;

    .line 590
    .local v0, "decl":Lgnu/expr/Declaration;
    new-instance v5, Lgnu/expr/SetExp;

    invoke-direct {v5, v0, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 591
    .local v5, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v5, v0}, Lgnu/expr/SetExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 592
    invoke-virtual {v0, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 593
    move-object v2, v5

    .line 597
    .end local v0    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "sexp":Lgnu/expr/SetExp;
    :goto_54
    iget-object v6, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v6, Lgnu/expr/BeginExp;

    invoke-virtual {v6, v2}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 598
    iput-object v4, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 599
    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 600
    return-void

    .line 558
    .end local v1    # "initMethod":Lgnu/expr/LambdaExp;
    .end local v2    # "initValue":Lgnu/expr/Expression;
    .end local v3    # "isStatic":Z
    .end local v4    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_61
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v6, :cond_67

    move v3, v7

    goto :goto_f

    :cond_67
    const/4 v3, 0x0

    goto :goto_f

    .line 561
    .restart local v3    # "isStatic":Z
    :cond_69
    iget-object v1, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    goto :goto_13

    .line 574
    .restart local v1    # "initMethod":Lgnu/expr/LambdaExp;
    :cond_6c
    const-string v6, "$finit$"

    invoke-virtual {v1, v6}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 575
    iput-object v1, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 578
    new-instance v6, Lgnu/expr/Declaration;

    sget-object v7, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v6, v7}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v6}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto :goto_30

    .line 596
    .restart local v2    # "initValue":Lgnu/expr/Expression;
    .restart local v4    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_7e
    new-instance v6, Lgnu/expr/QuoteExp;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v6}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    goto :goto_54
.end method


# virtual methods
.method public rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V
    .registers 55
    .param p1, "saved"    # [Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 326
    const/4 v6, 0x0

    aget-object v38, p1, v6

    check-cast v38, Lgnu/expr/ClassExp;

    .line 327
    .local v38, "oexp":Lgnu/expr/ClassExp;
    const/4 v6, 0x1

    aget-object v17, p1, v6

    .line 328
    .local v17, "components":Ljava/lang/Object;
    const/4 v6, 0x2

    aget-object v27, p1, v6

    check-cast v27, Ljava/util/Vector;

    .line 329
    .local v27, "inits":Ljava/util/Vector;
    const/4 v6, 0x3

    aget-object v34, p1, v6

    check-cast v34, Lgnu/expr/LambdaExp;

    .line 330
    .local v34, "method_list":Lgnu/expr/LambdaExp;
    const/4 v6, 0x4

    aget-object v46, p1, v6

    .line 331
    .local v46, "superlist":Ljava/lang/Object;
    const/4 v6, 0x5

    aget-object v14, p1, v6

    .line 332
    .local v14, "classNamePair":Ljava/lang/Object;
    move-object/from16 v0, v34

    move-object/from16 v1, v38

    iput-object v0, v1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 334
    invoke-static/range {v46 .. v46}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v36

    .line 335
    .local v36, "num_supers":I
    if-gez v36, :cond_2f

    .line 337
    const/16 v6, 0x65

    const-string v8, "object superclass specification not a list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 338
    const/16 v36, 0x0

    .line 340
    :cond_2f
    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v48, v0

    .line 341
    .local v48, "supers":[Lgnu/expr/Expression;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_37
    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_87

    .line 343
    :goto_3d
    move-object/from16 v0, v46

    instance-of v6, v0, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_4a

    .line 346
    check-cast v46, Lkawa/lang/SyntaxForm;

    .end local v46    # "superlist":Ljava/lang/Object;
    invoke-interface/range {v46 .. v46}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v46

    .restart local v46    # "superlist":Ljava/lang/Object;
    goto :goto_3d

    :cond_4a
    move-object/from16 v47, v46

    .line 348
    check-cast v47, Lgnu/lists/Pair;

    .line 349
    .local v47, "superpair":Lgnu/lists/Pair;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v47

    invoke-virtual {v0, v1, v6}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v48, v21

    .line 350
    aget-object v6, v48, v21

    instance-of v6, v6, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_80

    .line 352
    aget-object v6, v48, v21

    check-cast v6, Lgnu/expr/ReferenceExp;

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    invoke-static {v6}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v20

    .line 354
    .local v20, "decl":Lgnu/expr/Declaration;
    if-eqz v20, :cond_80

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v49

    .local v49, "svalue":Lgnu/expr/Expression;
    move-object/from16 v0, v49

    instance-of v6, v0, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_80

    .line 355
    check-cast v49, Lgnu/expr/ClassExp;

    .end local v49    # "svalue":Lgnu/expr/Expression;
    const/high16 v6, 0x20000

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 357
    .end local v20    # "decl":Lgnu/expr/Declaration;
    :cond_80
    invoke-virtual/range {v47 .. v47}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v46

    .line 341
    add-int/lit8 v21, v21, 0x1

    goto :goto_37

    .line 360
    .end local v47    # "superpair":Lgnu/lists/Pair;
    :cond_87
    if-eqz v14, :cond_ad

    move-object v6, v14

    .line 362
    check-cast v6, Lgnu/lists/Pair;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v13

    .line 363
    .local v13, "classNameExp":Lgnu/expr/Expression;
    invoke-virtual {v13}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v16

    .line 367
    .local v16, "classNameVal":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v29, v0

    .line 371
    .local v29, "isString":Z
    if-eqz v29, :cond_e7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "classNameSpecifier":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e7

    .line 373
    move-object/from16 v0, v38

    iput-object v15, v0, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    .line 381
    .end local v13    # "classNameExp":Lgnu/expr/Expression;
    .end local v15    # "classNameSpecifier":Ljava/lang/String;
    .end local v16    # "classNameVal":Ljava/lang/Object;
    .end local v29    # "isString":Z
    :cond_ad
    :goto_ad
    move-object/from16 v0, v48

    move-object/from16 v1, v38

    iput-object v0, v1, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 383
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 387
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v31

    .line 388
    .local v31, "len":I
    const/16 v21, 0x0

    :goto_c0
    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_fe

    .line 390
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    .line 391
    .local v22, "init":Ljava/lang/Object;
    if-eqz v22, :cond_e4

    .line 392
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v22, Lgnu/lists/Pair;

    .end local v22    # "init":Ljava/lang/Object;
    const/4 v8, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-static {v6, v0, v1, v2, v8}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V

    .line 388
    :cond_e4
    add-int/lit8 v21, v21, 0x2

    goto :goto_c0

    .line 376
    .end local v31    # "len":I
    .restart local v13    # "classNameExp":Lgnu/expr/Expression;
    .restart local v16    # "classNameVal":Ljava/lang/Object;
    .restart local v29    # "isString":Z
    :cond_e7
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 377
    .local v43, "savedPos":Ljava/lang/Object;
    const/16 v6, 0x65

    const-string v8, "class-name specifier must be a non-empty string literal"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 378
    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_ad

    .line 395
    .end local v13    # "classNameExp":Lgnu/expr/Expression;
    .end local v16    # "classNameVal":Ljava/lang/Object;
    .end local v29    # "isString":Z
    .end local v43    # "savedPos":Ljava/lang/Object;
    .restart local v31    # "len":I
    :cond_fe
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 398
    move-object/from16 v7, v34

    .line 399
    .local v7, "meth":Lgnu/expr/LambdaExp;
    const/16 v25, 0x0

    .line 400
    .local v25, "init_index":I
    const/16 v18, 0x0

    .line 401
    .local v18, "componentsSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v37, v17

    .local v37, "obj":Ljava/lang/Object;
    :goto_10d
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v37

    if-eq v0, v6, :cond_32b

    .line 403
    :goto_113
    move-object/from16 v0, v37

    instance-of v6, v0, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_122

    move-object/from16 v18, v37

    .line 405
    check-cast v18, Lkawa/lang/SyntaxForm;

    .line 406
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v37

    goto :goto_113

    :cond_122
    move-object/from16 v39, v37

    .line 408
    check-cast v39, Lgnu/lists/Pair;

    .line 409
    .local v39, "pair":Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 410
    .local v44, "savedPos1":Ljava/lang/Object;
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v40

    .line 411
    .local v40, "pair_car":Ljava/lang/Object;
    move-object/from16 v33, v18

    .line 412
    .local v33, "memberSyntax":Lkawa/lang/SyntaxForm;
    :goto_134
    move-object/from16 v0, v40

    instance-of v6, v0, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_143

    move-object/from16 v33, v40

    .line 414
    check-cast v33, Lkawa/lang/SyntaxForm;

    .line 415
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v40

    goto :goto_134

    .line 419
    :cond_143
    :try_start_143
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v37

    .line 420
    move-object/from16 v0, v40

    instance-of v6, v0, Lgnu/expr/Keyword;

    if-eqz v6, :cond_164

    move-object/from16 v0, v37

    instance-of v6, v0, Lgnu/lists/Pair;

    if-eqz v6, :cond_164

    .line 424
    move-object/from16 v0, v37

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_15b
    .catchall {:try_start_143 .. :try_end_15b} :catchall_211

    move-result-object v37

    .line 541
    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_10d

    .line 427
    :cond_164
    :try_start_164
    move-object/from16 v0, v40

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v39, v0

    .line 428
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v40

    .line 429
    move-object/from16 v32, v33

    .line 430
    .local v32, "memberCarSyntax":Lkawa/lang/SyntaxForm;
    :goto_170
    move-object/from16 v0, v40

    instance-of v6, v0, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_181

    .line 432
    move-object/from16 v0, v40

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v32, v0

    .line 433
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v40

    goto :goto_170

    .line 435
    :cond_181
    move-object/from16 v0, v40

    instance-of v6, v0, Ljava/lang/String;

    if-nez v6, :cond_193

    move-object/from16 v0, v40

    instance-of v6, v0, Lgnu/mapping/Symbol;

    if-nez v6, :cond_193

    move-object/from16 v0, v40

    instance-of v6, v0, Lgnu/expr/Keyword;

    if-eqz v6, :cond_2b0

    .line 438
    :cond_193
    const/16 v50, 0x0

    .line 439
    .local v50, "type":Ljava/lang/Object;
    const/16 v35, 0x0

    .line 440
    .local v35, "nKeywords":I
    move-object/from16 v0, v40

    instance-of v6, v0, Lgnu/expr/Keyword;

    if-eqz v6, :cond_1b5

    move-object/from16 v12, v39

    .line 441
    .local v12, "args":Ljava/lang/Object;
    :goto_19f
    const/16 v23, 0x0

    .line 442
    .local v23, "initPair":Lgnu/lists/Pair;
    const/16 v24, 0x0

    .line 443
    .end local v50    # "type":Ljava/lang/Object;
    .local v24, "initSyntax":Lkawa/lang/SyntaxForm;
    :goto_1a3
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v12, v6, :cond_265

    .line 445
    :goto_1a7
    instance-of v6, v12, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_1ba

    .line 447
    move-object v0, v12

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v33, v0

    .line 448
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    goto :goto_1a7

    .line 440
    .end local v12    # "args":Ljava/lang/Object;
    .end local v23    # "initPair":Lgnu/lists/Pair;
    .end local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v50    # "type":Ljava/lang/Object;
    :cond_1b5
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    goto :goto_19f

    .line 450
    .end local v50    # "type":Ljava/lang/Object;
    .restart local v12    # "args":Ljava/lang/Object;
    .restart local v23    # "initPair":Lgnu/lists/Pair;
    .restart local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    :cond_1ba
    move-object v0, v12

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v39, v0

    .line 451
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    .line 452
    .local v30, "key":Ljava/lang/Object;
    :goto_1c3
    move-object/from16 v0, v30

    instance-of v6, v0, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_1d0

    .line 453
    check-cast v30, Lkawa/lang/SyntaxForm;

    .end local v30    # "key":Ljava/lang/Object;
    invoke-interface/range {v30 .. v30}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v30

    .restart local v30    # "key":Ljava/lang/Object;
    goto :goto_1c3

    .line 454
    :cond_1d0
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    .line 455
    .local v45, "savedPos2":Ljava/lang/Object;
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 456
    sget-object v6, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_1e8

    move-object/from16 v0, v30

    instance-of v6, v0, Lgnu/expr/Keyword;

    if-eqz v6, :cond_237

    :cond_1e8
    instance-of v6, v12, Lgnu/lists/Pair;

    if-eqz v6, :cond_237

    .line 459
    add-int/lit8 v35, v35, 0x1

    .line 460
    move-object v0, v12

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v39, v0

    .line 461
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v51

    .line 462
    .local v51, "value":Ljava/lang/Object;
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 463
    sget-object v6, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_207

    sget-object v6, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_21a

    .line 464
    :cond_207
    move-object/from16 v50, v51

    .line 499
    .end local v51    # "value":Ljava/lang/Object;
    :cond_209
    :goto_209
    move-object/from16 v0, p2

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V
    :try_end_210
    .catchall {:try_start_164 .. :try_end_210} :catchall_211

    goto :goto_1a3

    .line 541
    .end local v12    # "args":Ljava/lang/Object;
    .end local v23    # "initPair":Lgnu/lists/Pair;
    .end local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v30    # "key":Ljava/lang/Object;
    .end local v32    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v35    # "nKeywords":I
    .end local v45    # "savedPos2":Ljava/lang/Object;
    :catchall_211
    move-exception v6

    :goto_212
    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v6

    .line 465
    .restart local v12    # "args":Ljava/lang/Object;
    .restart local v23    # "initPair":Lgnu/lists/Pair;
    .restart local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v30    # "key":Ljava/lang/Object;
    .restart local v32    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v35    # "nKeywords":I
    .restart local v45    # "savedPos2":Ljava/lang/Object;
    .restart local v51    # "value":Ljava/lang/Object;
    :cond_21a
    :try_start_21a
    sget-object v6, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_232

    sget-object v6, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_232

    sget-object v6, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    if-eq v0, v6, :cond_232

    sget-object v6, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v30

    if-ne v0, v6, :cond_209

    .line 470
    :cond_232
    move-object/from16 v23, v39

    .line 471
    move-object/from16 v24, v33

    goto :goto_209

    .line 478
    .end local v51    # "value":Ljava/lang/Object;
    :cond_237
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v12, v6, :cond_242

    if-nez v23, :cond_242

    .line 481
    move-object/from16 v23, v39

    .line 482
    move-object/from16 v24, v33

    goto :goto_209

    .line 484
    :cond_242
    instance-of v6, v12, Lgnu/lists/Pair;

    if-eqz v6, :cond_264

    if-nez v35, :cond_264

    if-nez v23, :cond_264

    if-nez v50, :cond_264

    move-object v0, v12

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v8, :cond_264

    .line 489
    move-object/from16 v50, v30

    .line 490
    .restart local v50    # "type":Ljava/lang/Object;
    move-object/from16 v23, v39

    .line 491
    move-object/from16 v24, v33

    .line 492
    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_262
    .catchall {:try_start_21a .. :try_end_262} :catchall_211

    move-result-object v12

    goto :goto_209

    .line 496
    .end local v50    # "type":Ljava/lang/Object;
    :cond_264
    const/4 v12, 0x0

    .line 501
    .end local v12    # "args":Ljava/lang/Object;
    .end local v30    # "key":Ljava/lang/Object;
    .end local v45    # "savedPos2":Ljava/lang/Object;
    :cond_265
    if-eqz v23, :cond_29b

    .line 503
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "init_index":I
    .local v26, "init_index":I
    :try_start_269
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    .line 504
    .local v19, "d":Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v6, v0, Lgnu/expr/Declaration;

    if-eqz v6, :cond_2a4

    move-object/from16 v0, v19

    check-cast v0, Lgnu/expr/Declaration;

    move-object v6, v0

    const-wide/16 v8, 0x800

    invoke-virtual {v6, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z
    :try_end_281
    .catchall {:try_start_269 .. :try_end_281} :catchall_356

    move-result v28

    .line 507
    .local v28, "isStatic":Z
    :goto_282
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "init_index":I
    .restart local v25    # "init_index":I
    :try_start_284
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_29b

    .line 508
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    :try_end_29b
    .catchall {:try_start_284 .. :try_end_29b} :catchall_211

    .line 541
    .end local v19    # "d":Ljava/lang/Object;
    .end local v23    # "initPair":Lgnu/lists/Pair;
    .end local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v28    # "isStatic":Z
    .end local v35    # "nKeywords":I
    :cond_29b
    :goto_29b
    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_10d

    .line 504
    .end local v25    # "init_index":I
    .restart local v19    # "d":Ljava/lang/Object;
    .restart local v23    # "initPair":Lgnu/lists/Pair;
    .restart local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v26    # "init_index":I
    .restart local v35    # "nKeywords":I
    :cond_2a4
    :try_start_2a4
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2a6
    .catchall {:try_start_2a4 .. :try_end_2a6} :catchall_356

    move-object/from16 v0, v19

    if-ne v0, v6, :cond_2ad

    const/16 v28, 0x1

    goto :goto_282

    :cond_2ad
    const/16 v28, 0x0

    goto :goto_282

    .line 511
    .end local v19    # "d":Ljava/lang/Object;
    .end local v23    # "initPair":Lgnu/lists/Pair;
    .end local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .end local v26    # "init_index":I
    .end local v35    # "nKeywords":I
    .restart local v25    # "init_index":I
    :cond_2b0
    :try_start_2b0
    move-object/from16 v0, v40

    instance-of v6, v0, Lgnu/lists/Pair;

    if-eqz v6, :cond_322

    .line 513
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v42

    .line 518
    .local v42, "save_scope":Lgnu/expr/ScopeExp;
    if-eqz v33, :cond_2c5

    .line 519
    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 520
    :cond_2c5
    const-string v6, "*init*"

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d6

    .line 521
    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v6}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 522
    :cond_2d6
    move-object/from16 v0, v39

    invoke-static {v7, v0}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 523
    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v41, v0

    .line 524
    .local v41, "saveLambda":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p2

    iput-object v7, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 525
    move-object/from16 v0, p0

    iget-object v6, v0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v0, v40

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {v39 .. v39}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    if-eqz v32, :cond_320

    if-eqz v33, :cond_304

    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v10

    invoke-interface/range {v33 .. v33}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v11

    if-eq v10, v11, :cond_320

    :cond_304
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v11

    :goto_308
    move-object/from16 v10, p2

    invoke-virtual/range {v6 .. v11}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 531
    move-object/from16 v0, v41

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 532
    if-eqz v33, :cond_31c

    .line 533
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 534
    :cond_31c
    iget-object v7, v7, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 535
    goto/16 :goto_29b

    .line 525
    :cond_320
    const/4 v11, 0x0

    goto :goto_308

    .line 537
    .end local v41    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v42    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_322
    const-string v6, "invalid field/method definition"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_329
    .catchall {:try_start_2b0 .. :try_end_329} :catchall_211

    goto/16 :goto_29b

    .line 547
    .end local v32    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .end local v33    # "memberSyntax":Lkawa/lang/SyntaxForm;
    .end local v39    # "pair":Lgnu/lists/Pair;
    .end local v40    # "pair_car":Ljava/lang/Object;
    .end local v44    # "savedPos1":Ljava/lang/Object;
    :cond_32b
    move-object/from16 v0, v38

    iget-object v6, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-eqz v6, :cond_339

    .line 548
    move-object/from16 v0, v38

    iget-object v6, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v0, v38

    iput-object v0, v6, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 549
    :cond_339
    move-object/from16 v0, v38

    iget-object v6, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-eqz v6, :cond_347

    .line 550
    move-object/from16 v0, v38

    iget-object v6, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v0, v38

    iput-object v0, v6, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 551
    :cond_347
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 552
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 553
    return-void

    .line 541
    .end local v25    # "init_index":I
    .restart local v23    # "initPair":Lgnu/lists/Pair;
    .restart local v24    # "initSyntax":Lkawa/lang/SyntaxForm;
    .restart local v26    # "init_index":I
    .restart local v32    # "memberCarSyntax":Lkawa/lang/SyntaxForm;
    .restart local v33    # "memberSyntax":Lkawa/lang/SyntaxForm;
    .restart local v35    # "nKeywords":I
    .restart local v39    # "pair":Lgnu/lists/Pair;
    .restart local v40    # "pair_car":Ljava/lang/Object;
    .restart local v44    # "savedPos1":Ljava/lang/Object;
    :catchall_356
    move-exception v6

    move/from16 v25, v26

    .end local v26    # "init_index":I
    .restart local v25    # "init_index":I
    goto/16 :goto_212
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 39
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_f

    .line 40
    const-string v3, "missing superclass specification in object"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 53
    :cond_e
    :goto_e
    return-object v0

    .line 41
    :cond_f
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 42
    .local v1, "pair":Lgnu/lists/Pair;
    new-instance v0, Lgnu/expr/ObjectExp;

    invoke-direct {v0}, Lgnu/expr/ObjectExp;-><init>()V

    .line 43
    .local v0, "oexp":Lgnu/expr/ObjectExp;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/FString;

    if-eqz v3, :cond_37

    .line 46
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_31

    .line 47
    const-string v3, "missing superclass specification after object class name"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_e

    .line 48
    :cond_31
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pair":Lgnu/lists/Pair;
    check-cast v1, Lgnu/lists/Pair;

    .line 50
    .restart local v1    # "pair":Lgnu/lists/Pair;
    :cond_37
    invoke-virtual {p0, v1, v0, p2}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "saved":[Ljava/lang/Object;
    if-eqz v2, :cond_e

    .line 52
    invoke-virtual {p0, v2, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    goto :goto_e
.end method

.method public scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .registers 46
    .param p1, "pair"    # Lgnu/lists/Pair;
    .param p2, "oexp"    # Lgnu/expr/ClassExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .prologue
    .line 61
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v39

    .line 63
    .local v39, "superlist":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    .line 64
    .local v18, "components":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 65
    .local v17, "classNamePair":Ljava/lang/Object;
    const/16 v27, 0x0

    .line 66
    .local v27, "method_list":Lgnu/expr/LambdaExp;
    const/16 v25, 0x0

    .line 67
    .local v25, "last_method":Lgnu/expr/LambdaExp;
    const-wide/16 v6, 0x0

    .line 69
    .local v6, "classAccessFlag":J
    new-instance v21, Ljava/util/Vector;

    const/16 v5, 0x14

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/Vector;-><init>(I)V

    .line 70
    .local v21, "inits":Ljava/util/Vector;
    move-object/from16 v31, v18

    .end local v17    # "classNamePair":Ljava/lang/Object;
    .local v31, "obj":Ljava/lang/Object;
    :goto_1e
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v31

    if-eq v0, v5, :cond_42c

    .line 74
    :goto_24
    move-object/from16 v0, v31

    instance-of v5, v0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_31

    .line 75
    check-cast v31, Lkawa/lang/SyntaxForm;

    .end local v31    # "obj":Ljava/lang/Object;
    invoke-interface/range {v31 .. v31}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v31

    .restart local v31    # "obj":Ljava/lang/Object;
    goto :goto_24

    .line 76
    :cond_31
    move-object/from16 v0, v31

    instance-of v5, v0, Lgnu/lists/Pair;

    if-nez v5, :cond_43

    .line 78
    const/16 v5, 0x65

    const-string v8, "object member not a list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 79
    const/16 v33, 0x0

    .line 321
    :goto_42
    return-object v33

    :cond_43
    move-object/from16 p1, v31

    .line 81
    check-cast p1, Lgnu/lists/Pair;

    .line 82
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    .line 83
    .local v32, "pair_car":Ljava/lang/Object;
    :goto_4b
    move-object/from16 v0, v32

    instance-of v5, v0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_58

    .line 84
    check-cast v32, Lkawa/lang/SyntaxForm;

    .end local v32    # "pair_car":Ljava/lang/Object;
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    .restart local v32    # "pair_car":Ljava/lang/Object;
    goto :goto_4b

    .line 85
    :cond_58
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v31

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 87
    .local v34, "savedPos1":Ljava/lang/Object;
    move-object/from16 v0, v32

    instance-of v5, v0, Lgnu/expr/Keyword;

    if-eqz v5, :cond_11a

    .line 89
    :goto_6a
    move-object/from16 v0, v31

    instance-of v5, v0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_77

    .line 90
    check-cast v31, Lkawa/lang/SyntaxForm;

    .end local v31    # "obj":Ljava/lang/Object;
    invoke-interface/range {v31 .. v31}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v31

    .restart local v31    # "obj":Ljava/lang/Object;
    goto :goto_6a

    .line 91
    :cond_77
    move-object/from16 v0, v31

    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_11a

    .line 93
    sget-object v5, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_b0

    move-object/from16 v5, v31

    .line 95
    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v41

    .line 96
    .local v41, "val":Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v41

    if-ne v0, v5, :cond_a7

    .line 97
    const/high16 v5, 0x10000

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 100
    :goto_98
    check-cast v31, Lgnu/lists/Pair;

    .end local v31    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v31

    .line 101
    .restart local v31    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 99
    :cond_a7
    const v5, 0x8000

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lgnu/expr/ClassExp;->setFlag(I)V

    goto :goto_98

    .line 104
    .end local v41    # "val":Ljava/lang/Object;
    :cond_b0
    sget-object v5, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_d2

    .line 106
    if-eqz v17, :cond_c1

    .line 107
    const/16 v5, 0x65

    const-string v8, "duplicate class-name specifiers"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_c1
    move-object/from16 v17, v31

    .line 109
    .restart local v17    # "classNamePair":Ljava/lang/Object;
    check-cast v31, Lgnu/lists/Pair;

    .end local v31    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v31

    .line 110
    .restart local v31    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 113
    .end local v17    # "classNamePair":Ljava/lang/Object;
    :cond_d2
    sget-object v5, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v32

    if-ne v0, v5, :cond_11a

    .line 115
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .local v35, "savedPos2":Ljava/lang/Object;
    move-object/from16 v5, v31

    .line 116
    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-wide v8, 0x603000000L

    const-string v10, "class"

    move-object/from16 v11, p3

    invoke-static/range {v5 .. v11}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v6

    .line 120
    move-object/from16 v0, p2

    iget-object v5, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v5, :cond_104

    .line 121
    const/16 v5, 0x65

    const-string v8, "access specifier for anonymous class"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 122
    :cond_104
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 123
    check-cast v31, Lgnu/lists/Pair;

    .end local v31    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v31 .. v31}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v31

    .line 124
    .restart local v31    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 129
    .end local v35    # "savedPos2":Ljava/lang/Object;
    :cond_11a
    move-object/from16 v0, v32

    instance-of v5, v0, Lgnu/lists/Pair;

    if-nez v5, :cond_12d

    .line 131
    const/16 v5, 0x65

    const-string v8, "object member not a list"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 132
    const/16 v33, 0x0

    goto/16 :goto_42

    :cond_12d
    move-object/from16 p1, v32

    .line 134
    check-cast p1, Lgnu/lists/Pair;

    .line 135
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    .line 136
    :goto_135
    move-object/from16 v0, v32

    instance-of v5, v0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_142

    .line 137
    check-cast v32, Lkawa/lang/SyntaxForm;

    .end local v32    # "pair_car":Ljava/lang/Object;
    invoke-interface/range {v32 .. v32}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v32

    .restart local v32    # "pair_car":Ljava/lang/Object;
    goto :goto_135

    .line 138
    :cond_142
    move-object/from16 v0, v32

    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_154

    move-object/from16 v0, v32

    instance-of v5, v0, Lgnu/mapping/Symbol;

    if-nez v5, :cond_154

    move-object/from16 v0, v32

    instance-of v5, v0, Lgnu/expr/Keyword;

    if-eqz v5, :cond_3d7

    .line 141
    :cond_154
    const/16 v40, 0x0

    .line 142
    .local v40, "typePair":Lgnu/lists/Pair;
    move-object/from16 v38, v32

    .line 145
    .local v38, "sname":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 146
    .local v4, "allocationFlag":I
    const-wide/16 v10, 0x0

    .line 147
    .local v10, "accessFlag":J
    move-object/from16 v0, v38

    instance-of v5, v0, Lgnu/expr/Keyword;

    if-eqz v5, :cond_180

    .line 149
    const/16 v19, 0x0

    .line 150
    .local v19, "decl":Lgnu/expr/Declaration;
    move-object/from16 v16, p1

    .line 160
    :goto_165
    const/16 v30, 0x0

    .line 161
    .local v30, "nKeywords":I
    const/16 v37, 0x0

    .line 162
    .local v37, "seenInit":Z
    const/16 v20, 0x0

    .line 163
    .local v20, "initPair":Lgnu/lists/Pair;
    :goto_16b
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    if-eq v0, v5, :cond_329

    move-object/from16 v5, v16

    .line 165
    :goto_173
    instance-of v8, v5, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_1a2

    .line 166
    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v16

    .local v16, "args":Ljava/lang/Object;
    move-object/from16 v5, v16

    goto :goto_173

    .line 154
    .end local v16    # "args":Ljava/lang/Object;
    .end local v19    # "decl":Lgnu/expr/Declaration;
    .end local v20    # "initPair":Lgnu/lists/Pair;
    .end local v30    # "nKeywords":I
    .end local v37    # "seenInit":Z
    :cond_180
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v19

    .line 155
    .restart local v19    # "decl":Lgnu/expr/Declaration;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 156
    const-wide/32 v12, 0x100000

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 157
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "args":Ljava/lang/Object;
    goto :goto_165

    .end local v16    # "args":Ljava/lang/Object;
    .restart local v20    # "initPair":Lgnu/lists/Pair;
    .restart local v30    # "nKeywords":I
    .restart local v37    # "seenInit":Z
    :cond_1a2
    move-object/from16 p1, v5

    .line 167
    check-cast p1, Lgnu/lists/Pair;

    .line 168
    move-object/from16 v24, p1

    .line 169
    .local v24, "keyPair":Lgnu/lists/Pair;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    .line 170
    .local v23, "key":Ljava/lang/Object;
    :goto_1ac
    move-object/from16 v0, v23

    instance-of v5, v0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1b9

    .line 171
    check-cast v23, Lkawa/lang/SyntaxForm;

    .end local v23    # "key":Ljava/lang/Object;
    invoke-interface/range {v23 .. v23}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v23

    .restart local v23    # "key":Ljava/lang/Object;
    goto :goto_1ac

    .line 172
    :cond_1b9
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .line 173
    .restart local v35    # "savedPos2":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .line 174
    .restart local v16    # "args":Ljava/lang/Object;
    sget-object v5, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_1d1

    move-object/from16 v0, v23

    instance-of v5, v0, Lgnu/expr/Keyword;

    if-eqz v5, :cond_2f5

    :cond_1d1
    move-object/from16 v0, v16

    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_2f5

    .line 177
    add-int/lit8 v30, v30, 0x1

    move-object/from16 p1, v16

    .line 178
    check-cast p1, Lgnu/lists/Pair;

    .line 179
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 180
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .line 181
    sget-object v5, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_1f1

    sget-object v5, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_1fc

    .line 182
    :cond_1f1
    move-object/from16 v40, p1

    .line 251
    .end local v9    # "value":Ljava/lang/Object;
    :cond_1f3
    :goto_1f3
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_16b

    .line 183
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_1fc
    sget-object v5, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_252

    .line 185
    if-eqz v4, :cond_20d

    .line 186
    const/16 v5, 0x65

    const-string v8, "duplicate allocation: specification"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 187
    :cond_20d
    const-string v5, "class"

    move-object/from16 v0, p3

    invoke-static {v9, v5, v0}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v5

    if-nez v5, :cond_221

    const-string v5, "static"

    move-object/from16 v0, p3

    invoke-static {v9, v5, v0}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v5

    if-eqz v5, :cond_224

    .line 189
    :cond_221
    const/16 v4, 0x800

    goto :goto_1f3

    .line 190
    :cond_224
    const-string v5, "instance"

    move-object/from16 v0, p3

    invoke-static {v9, v5, v0}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v5

    if-eqz v5, :cond_231

    .line 191
    const/16 v4, 0x1000

    goto :goto_1f3

    .line 193
    :cond_231
    const/16 v5, 0x65

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown allocation kind \'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1f3

    .line 195
    :cond_252
    sget-object v5, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_26a

    sget-object v5, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_26a

    sget-object v5, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_26a

    sget-object v5, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_281

    .line 200
    :cond_26a
    if-eqz v37, :cond_275

    .line 201
    const/16 v5, 0x65

    const-string v8, "duplicate initialization"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 202
    :cond_275
    const/16 v37, 0x1

    .line 206
    sget-object v5, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-eq v0, v5, :cond_1f3

    .line 207
    move-object/from16 v20, p1

    goto/16 :goto_1f3

    .line 209
    :cond_281
    sget-object v5, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_2ad

    .line 211
    instance-of v5, v9, Lgnu/expr/Keyword;

    if-nez v5, :cond_296

    .line 212
    const/16 v5, 0x65

    const-string v8, "invalid \'init-keyword\' - not a keyword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_1f3

    .line 213
    :cond_296
    check-cast v9, Lgnu/expr/Keyword;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-eq v5, v8, :cond_1f3

    .line 215
    const/16 v5, 0x77

    const-string v8, "init-keyword option ignored"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_1f3

    .line 217
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_2ad
    sget-object v5, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_2d1

    .line 219
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .line 220
    .local v36, "savedPos3":Ljava/lang/Object;
    const-wide v12, 0x78f000000L

    const-string v14, "field"

    move-object/from16 v15, p3

    invoke-static/range {v9 .. v15}, Lkawa/standard/object;->addAccessFlags(Ljava/lang/Object;JJLjava/lang/String;Lkawa/lang/Translator;)J

    move-result-wide v10

    .line 223
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_1f3

    .line 227
    .end local v36    # "savedPos3":Ljava/lang/Object;
    :cond_2d1
    const/16 v5, 0x77

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown slot keyword \'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_1f3

    .line 230
    .end local v9    # "value":Ljava/lang/Object;
    :cond_2f5
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    if-ne v0, v5, :cond_303

    if-nez v37, :cond_303

    .line 233
    move-object/from16 v20, v24

    .line 234
    const/16 v37, 0x1

    goto/16 :goto_1f3

    .line 236
    :cond_303
    move-object/from16 v0, v16

    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_327

    if-nez v30, :cond_327

    if-nez v37, :cond_327

    if-nez v40, :cond_327

    move-object/from16 p1, v16

    check-cast p1, Lgnu/lists/Pair;

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v8, :cond_327

    .line 241
    move-object/from16 v40, v24

    .line 242
    move-object/from16 v20, p1

    .line 243
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .line 244
    const/16 v37, 0x1

    goto/16 :goto_1f3

    .line 248
    :cond_327
    const/16 v16, 0x0

    .line 253
    .end local v16    # "args":Ljava/lang/Object;
    .end local v23    # "key":Ljava/lang/Object;
    .end local v24    # "keyPair":Lgnu/lists/Pair;
    .end local v35    # "savedPos2":Ljava/lang/Object;
    :cond_329
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    if-eq v0, v5, :cond_36c

    .line 255
    const/16 v8, 0x65

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid argument list for slot \'"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v12, 0x27

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " args:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v16, :cond_363

    const-string v5, "null"

    :goto_352
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 257
    const/16 v33, 0x0

    goto/16 :goto_42

    .line 255
    :cond_363
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_352

    .line 259
    :cond_36c
    if-eqz v37, :cond_384

    .line 261
    const/16 v5, 0x800

    if-ne v4, v5, :cond_395

    const/16 v22, 0x1

    .line 263
    .local v22, "isStatic":Z
    :goto_374
    if-eqz v19, :cond_398

    move-object/from16 v5, v19

    :goto_378
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 267
    .end local v22    # "isStatic":Z
    :cond_384
    if-nez v19, :cond_3a0

    .line 269
    if-nez v37, :cond_3ce

    .line 271
    const/16 v5, 0x65

    const-string v8, "missing field name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 272
    const/16 v33, 0x0

    goto/16 :goto_42

    .line 261
    :cond_395
    const/16 v22, 0x0

    goto :goto_374

    .line 263
    .restart local v22    # "isStatic":Z
    :cond_398
    if-eqz v22, :cond_39d

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_378

    :cond_39d
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_378

    .line 277
    .end local v22    # "isStatic":Z
    :cond_3a0
    if-eqz v40, :cond_3af

    .line 278
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 279
    :cond_3af
    if-eqz v4, :cond_3b7

    .line 280
    int-to-long v12, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 281
    :cond_3b7
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-eqz v5, :cond_3c2

    .line 282
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 283
    :cond_3c2
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 284
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 308
    .end local v4    # "allocationFlag":I
    .end local v10    # "accessFlag":J
    .end local v19    # "decl":Lgnu/expr/Declaration;
    .end local v20    # "initPair":Lgnu/lists/Pair;
    .end local v30    # "nKeywords":I
    .end local v37    # "seenInit":Z
    .end local v38    # "sname":Ljava/lang/Object;
    .end local v40    # "typePair":Lgnu/lists/Pair;
    :cond_3ce
    :goto_3ce
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 287
    :cond_3d7
    move-object/from16 v0, v32

    instance-of v5, v0, Lgnu/lists/Pair;

    if-eqz v5, :cond_422

    move-object/from16 v29, v32

    .line 289
    check-cast v29, Lgnu/lists/Pair;

    .line 290
    .local v29, "mpair":Lgnu/lists/Pair;
    invoke-virtual/range {v29 .. v29}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v28

    .line 291
    .local v28, "mname":Ljava/lang/Object;
    move-object/from16 v0, v28

    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_3fe

    move-object/from16 v0, v28

    instance-of v5, v0, Lgnu/mapping/Symbol;

    if-nez v5, :cond_3fe

    .line 294
    const/16 v5, 0x65

    const-string v8, "missing method name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 295
    const/16 v33, 0x0

    goto/16 :goto_42

    .line 297
    :cond_3fe
    new-instance v26, Lgnu/expr/LambdaExp;

    invoke-direct/range {v26 .. v26}, Lgnu/expr/LambdaExp;-><init>()V

    .line 298
    .local v26, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ClassExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v19

    .line 299
    .restart local v19    # "decl":Lgnu/expr/Declaration;
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 300
    if-nez v25, :cond_41b

    .line 301
    move-object/from16 v27, v26

    .line 304
    :goto_418
    move-object/from16 v25, v26

    .line 305
    goto :goto_3ce

    .line 303
    :cond_41b
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_418

    .line 307
    .end local v19    # "decl":Lgnu/expr/Declaration;
    .end local v26    # "lexp":Lgnu/expr/LambdaExp;
    .end local v28    # "mname":Ljava/lang/Object;
    .end local v29    # "mpair":Lgnu/lists/Pair;
    :cond_422
    const/16 v5, 0x65

    const-string v8, "invalid field/method definition"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_3ce

    .line 310
    .end local v32    # "pair_car":Ljava/lang/Object;
    .end local v34    # "savedPos1":Ljava/lang/Object;
    :cond_42c
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-eqz v5, :cond_439

    .line 311
    move-object/from16 v0, p2

    iget-object v5, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 313
    :cond_439
    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/4 v5, 0x0

    aput-object p2, v33, v5

    const/4 v5, 0x1

    aput-object v18, v33, v5

    const/4 v5, 0x2

    aput-object v21, v33, v5

    const/4 v5, 0x3

    aput-object v27, v33, v5

    const/4 v5, 0x4

    aput-object v39, v33, v5

    const/4 v5, 0x5

    aput-object v17, v33, v5

    .line 321
    .local v33, "result":[Ljava/lang/Object;
    goto/16 :goto_42
.end method

.class public Lgnu/kawa/lispexpr/LispReader;
.super Lgnu/text/Lexer;
.source "LispReader.java"


# static fields
.field static final SCM_COMPLEX:I = 0x1

.field public static final SCM_NUMBERS:I = 0x1

.field public static final TOKEN_ESCAPE_CHAR:C = '\uffff'


# instance fields
.field protected seenEscapes:Z

.field sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/GeneralHashTable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .registers 2
    .param p1, "port"    # Lgnu/text/LineBufferedReader;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .registers 3
    .param p1, "port"    # Lgnu/text/LineBufferedReader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 26
    return-void
.end method

.method static getReadCase()C
    .registers 6

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    const-string v4, "symbol-read-case"

    const-string v5, "P"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "read_case_string":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_37

    move-result v1

    .line 76
    .local v1, "read_case":C
    const/16 v3, 0x50

    if-ne v1, v3, :cond_1a

    .line 88
    :cond_19
    :goto_19
    return v1

    .line 77
    :cond_1a
    const/16 v3, 0x75

    if-ne v1, v3, :cond_21

    .line 78
    const/16 v1, 0x55

    goto :goto_19

    .line 79
    :cond_21
    const/16 v3, 0x64

    if-eq v1, v3, :cond_2d

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_2d

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_30

    .line 80
    :cond_2d
    const/16 v1, 0x44

    goto :goto_19

    .line 81
    :cond_30
    const/16 v3, 0x69

    if-ne v1, v3, :cond_19

    .line 82
    const/16 v1, 0x49

    goto :goto_19

    .line 84
    .end local v1    # "read_case":C
    :catch_37
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Exception;
    const/16 v1, 0x50

    .restart local v1    # "read_case":C
    goto :goto_19
.end method

.method private isPotentialNumber([CII)Z
    .registers 10
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "sawDigits":I
    move v1, p2

    .local v1, "i":I
    :goto_4
    if-ge v1, p3, :cond_40

    .line 439
    aget-char v0, p1, v1

    .line 440
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 441
    add-int/lit8 v2, v2, 0x1

    .line 437
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 442
    :cond_13
    const/16 v5, 0x2d

    if-eq v0, v5, :cond_1b

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_20

    .line 444
    :cond_1b
    add-int/lit8 v5, v1, 0x1

    if-ne v5, p3, :cond_10

    .line 461
    .end local v0    # "ch":C
    :goto_1f
    return v4

    .line 447
    .restart local v0    # "ch":C
    :cond_20
    const/16 v5, 0x23

    if-ne v0, v5, :cond_26

    move v4, v3

    .line 448
    goto :goto_1f

    .line 449
    :cond_26
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_38

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_38

    const/16 v5, 0x5f

    if-eq v0, v5, :cond_38

    const/16 v5, 0x5e

    if-ne v0, v5, :cond_3b

    .line 455
    :cond_38
    if-ne v1, p2, :cond_10

    goto :goto_1f

    .line 458
    :cond_3b
    const/16 v5, 0x2e

    if-eq v0, v5, :cond_10

    goto :goto_1f

    .line 461
    .end local v0    # "ch":C
    :cond_40
    if-lez v2, :cond_44

    :goto_42
    move v4, v3

    goto :goto_1f

    :cond_44
    move v3, v4

    goto :goto_42
.end method

.method public static parseNumber(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .registers 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "radix"    # I

    .prologue
    const/4 v1, 0x0

    .line 475
    instance-of v3, p0, Lgnu/lists/FString;

    if-eqz v3, :cond_16

    move-object v3, p0

    .line 476
    check-cast v3, Lgnu/lists/FString;

    iget-object v0, v3, Lgnu/lists/FString;->data:[C

    .line 479
    .local v0, "buf":[C
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 480
    .local v2, "len":I
    const/4 v5, 0x1

    move v3, v1

    move v4, p1

    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 478
    .end local v0    # "buf":[C
    .end local v2    # "len":I
    :cond_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .restart local v0    # "buf":[C
    goto :goto_a
.end method

.method public static parseNumber([CIICII)Ljava/lang/Object;
    .registers 60
    .param p0, "buffer"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "exactness"    # C
    .param p4, "radix"    # I
    .param p5, "flags"    # I

    .prologue
    .line 498
    add-int v26, p1, p2

    .line 499
    .local v26, "end":I
    move/from16 v13, p1

    .line 500
    .local v13, "pos":I
    move/from16 v0, v26

    if-lt v13, v0, :cond_b

    .line 501
    const-string v4, "no digits"

    .line 887
    :cond_a
    :goto_a
    return-object v4

    .line 502
    :cond_b
    add-int/lit8 v43, v13, 0x1

    .end local v13    # "pos":I
    .local v43, "pos":I
    aget-char v18, p0, v13

    .line 503
    .local v18, "ch":C
    :goto_f
    const/16 v5, 0x23

    move/from16 v0, v18

    if-ne v0, v5, :cond_d5

    .line 505
    move/from16 v0, v43

    move/from16 v1, v26

    if-lt v0, v1, :cond_20

    .line 506
    const-string v4, "no digits"

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_a

    .line 507
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :cond_20
    add-int/lit8 v13, v43, 0x1

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    aget-char v18, p0, v43

    .line 508
    sparse-switch v18, :sswitch_data_51a

    .line 542
    const/16 v53, 0x0

    .line 545
    .local v53, "value":I
    :goto_29
    const/16 v5, 0xa

    move/from16 v0, v18

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v24

    .line 546
    .local v24, "dig":I
    if-gez v24, :cond_89

    .line 553
    const/16 v5, 0x52

    move/from16 v0, v18

    if-eq v0, v5, :cond_3f

    const/16 v5, 0x72

    move/from16 v0, v18

    if-ne v0, v5, :cond_b0

    .line 555
    :cond_3f
    if-eqz p4, :cond_9c

    .line 556
    const-string v4, "duplicate radix specifier"

    goto :goto_a

    .line 511
    .end local v24    # "dig":I
    .end local v53    # "value":I
    :sswitch_44
    if-eqz p4, :cond_49

    .line 512
    const-string v4, "duplicate radix specifier"

    goto :goto_a

    .line 513
    :cond_49
    const/16 p4, 0x2

    move/from16 v43, v13

    .line 564
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :goto_4d
    move/from16 v0, v43

    move/from16 v1, v26

    if-lt v0, v1, :cond_cd

    .line 565
    const-string v4, "no digits"

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_a

    .line 516
    :sswitch_58
    if-eqz p4, :cond_5d

    .line 517
    const-string v4, "duplicate radix specifier"

    goto :goto_a

    .line 518
    :cond_5d
    const/16 p4, 0x8

    move/from16 v43, v13

    .line 519
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto :goto_4d

    .line 521
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    :sswitch_62
    if-eqz p4, :cond_67

    .line 522
    const-string v4, "duplicate radix specifier"

    goto :goto_a

    .line 523
    :cond_67
    const/16 p4, 0xa

    move/from16 v43, v13

    .line 524
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto :goto_4d

    .line 526
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    :sswitch_6c
    if-eqz p4, :cond_71

    .line 527
    const-string v4, "duplicate radix specifier"

    goto :goto_a

    .line 528
    :cond_71
    const/16 p4, 0x10

    move/from16 v43, v13

    .line 529
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto :goto_4d

    .line 532
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    :sswitch_76
    if-eqz p3, :cond_84

    .line 534
    const/16 v5, 0x20

    move/from16 v0, p3

    if-ne v0, v5, :cond_81

    .line 535
    const-string v4, "non-prefix exactness specifier"

    goto :goto_a

    .line 537
    :cond_81
    const-string v4, "duplicate exactness specifier"

    goto :goto_a

    .line 539
    :cond_84
    move/from16 p3, v18

    move/from16 v43, v13

    .line 540
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto :goto_4d

    .line 548
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    .restart local v24    # "dig":I
    .restart local v53    # "value":I
    :cond_89
    mul-int/lit8 v5, v53, 0xa

    add-int v53, v5, v24

    .line 549
    move/from16 v0, v26

    if-lt v13, v0, :cond_95

    .line 550
    const-string v4, "missing letter after \'#\'"

    goto/16 :goto_a

    .line 551
    :cond_95
    add-int/lit8 v43, v13, 0x1

    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    aget-char v18, p0, v13

    move/from16 v13, v43

    .line 552
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_29

    .line 557
    :cond_9c
    const/4 v5, 0x2

    move/from16 v0, v53

    if-lt v0, v5, :cond_a7

    const/16 v5, 0x23

    move/from16 v0, v53

    if-le v0, v5, :cond_ab

    .line 558
    :cond_a7
    const-string v4, "invalid radix specifier"

    goto/16 :goto_a

    .line 559
    :cond_ab
    move/from16 p4, v53

    move/from16 v43, v13

    .line 560
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto :goto_4d

    .line 562
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    :cond_b0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown modifier \'#"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x27

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 566
    .end local v13    # "pos":I
    .end local v24    # "dig":I
    .end local v53    # "value":I
    .restart local v43    # "pos":I
    :cond_cd
    add-int/lit8 v13, v43, 0x1

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    aget-char v18, p0, v43

    move/from16 v43, v13

    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto/16 :goto_f

    .line 568
    :cond_d5
    if-nez p3, :cond_d9

    .line 569
    const/16 p3, 0x20

    .line 570
    :cond_d9
    if-nez p4, :cond_e3

    .line 572
    move/from16 v31, p2

    .line 574
    .local v31, "i":I
    :cond_dd
    add-int/lit8 v31, v31, -0x1

    if-gez v31, :cond_108

    .line 578
    const/16 p4, 0xa

    .line 589
    .end local v31    # "i":I
    :cond_e3
    :goto_e3
    const/16 v5, 0x2d

    move/from16 v0, v18

    if-ne v0, v5, :cond_113

    const/4 v9, 0x1

    .line 590
    .local v9, "negative":Z
    :goto_ea
    move/from16 v41, v9

    .line 591
    .local v41, "numeratorNegative":Z
    const/16 v5, 0x2d

    move/from16 v0, v18

    if-eq v0, v5, :cond_f8

    const/16 v5, 0x2b

    move/from16 v0, v18

    if-ne v0, v5, :cond_115

    :cond_f8
    const/16 v50, 0x1

    .line 592
    .local v50, "sign_seen":Z
    :goto_fa
    if-eqz v50, :cond_515

    .line 594
    move/from16 v0, v43

    move/from16 v1, v26

    if-lt v0, v1, :cond_118

    .line 595
    const-string v4, "no digits following sign"

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_a

    .line 581
    .end local v9    # "negative":Z
    .end local v13    # "pos":I
    .end local v41    # "numeratorNegative":Z
    .end local v50    # "sign_seen":Z
    .restart local v31    # "i":I
    .restart local v43    # "pos":I
    :cond_108
    add-int v5, p1, v31

    aget-char v5, p0, v5

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_dd

    .line 583
    const/16 p4, 0xa

    .line 584
    goto :goto_e3

    .line 589
    .end local v31    # "i":I
    :cond_113
    const/4 v9, 0x0

    goto :goto_ea

    .line 591
    .restart local v9    # "negative":Z
    .restart local v41    # "numeratorNegative":Z
    :cond_115
    const/16 v50, 0x0

    goto :goto_fa

    .line 596
    .restart local v50    # "sign_seen":Z
    :cond_118
    add-int/lit8 v13, v43, 0x1

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    aget-char v18, p0, v43

    .line 600
    :goto_11c
    const/16 v5, 0x69

    move/from16 v0, v18

    if-eq v0, v5, :cond_128

    const/16 v5, 0x49

    move/from16 v0, v18

    if-ne v0, v5, :cond_174

    :cond_128
    move/from16 v0, v26

    if-ne v13, v0, :cond_174

    add-int/lit8 v5, v13, -0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_174

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_174

    .line 603
    aget-char v49, p0, p1

    .line 604
    .local v49, "sign":C
    const/16 v5, 0x2b

    move/from16 v0, v49

    if-eq v0, v5, :cond_148

    const/16 v5, 0x2d

    move/from16 v0, v49

    if-eq v0, v5, :cond_148

    .line 605
    const-string v4, "no digits"

    goto/16 :goto_a

    .line 606
    :cond_148
    const/16 v5, 0x69

    move/from16 v0, p3

    if-eq v0, v5, :cond_154

    const/16 v5, 0x49

    move/from16 v0, p3

    if-ne v0, v5, :cond_166

    .line 607
    :cond_154
    new-instance v4, Lgnu/math/DComplex;

    const-wide/16 v16, 0x0

    if-eqz v9, :cond_163

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    :goto_15c
    move-wide/from16 v0, v16

    invoke-direct {v4, v0, v1, v14, v15}, Lgnu/math/DComplex;-><init>(DD)V

    goto/16 :goto_a

    :cond_163
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    goto :goto_15c

    .line 608
    :cond_166
    if-eqz v9, :cond_16f

    invoke-static {}, Lgnu/math/Complex;->imMinusOne()Lgnu/math/CComplex;

    move-result-object v5

    :goto_16c
    move-object v4, v5

    goto/16 :goto_a

    :cond_16f
    invoke-static {}, Lgnu/math/Complex;->imOne()Lgnu/math/CComplex;

    move-result-object v5

    goto :goto_16c

    .line 611
    .end local v49    # "sign":C
    :cond_174
    add-int/lit8 v48, v13, -0x1

    .line 612
    .local v48, "realStart":I
    const/16 v30, 0x0

    .line 613
    .local v30, "hash_seen":Z
    const/16 v29, -0x1

    .line 614
    .local v29, "exp_seen":I
    const/4 v6, -0x1

    .line 615
    .local v6, "digits_start":I
    const/16 v21, -0x1

    .line 616
    .local v21, "decimal_point":I
    const/16 v20, 0x0

    .line 617
    .local v20, "copy_needed":Z
    const/16 v52, 0x0

    .line 618
    .local v52, "underscore_seen":Z
    const/16 v40, 0x0

    .line 619
    .local v40, "numerator":Lgnu/math/IntNum;
    const-wide/16 v10, 0x0

    .line 623
    .local v10, "lvalue":J
    :goto_185
    move/from16 v0, v18

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v25

    .line 624
    .local v25, "digit":I
    if-ltz v25, :cond_1e4

    .line 626
    if-eqz v30, :cond_197

    if-gez v21, :cond_197

    .line 627
    const-string v4, "digit after \'#\' in number"

    goto/16 :goto_a

    .line 628
    :cond_197
    if-gez v6, :cond_19b

    .line 629
    add-int/lit8 v6, v13, -0x1

    .line 630
    :cond_19b
    move/from16 v0, p4

    int-to-long v14, v0

    mul-long/2addr v14, v10

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v10, v14, v16

    .line 710
    :goto_1a6
    move/from16 v0, v26

    if-ne v13, v0, :cond_28e

    .line 715
    :cond_1aa
    :goto_1aa
    const/16 v34, 0x0

    .line 717
    .local v34, "infnan":C
    if-gez v6, :cond_511

    .line 719
    if-eqz v50, :cond_1de

    add-int/lit8 v5, v13, 0x4

    move/from16 v0, v26

    if-ge v5, v0, :cond_1de

    add-int/lit8 v5, v13, 0x3

    aget-char v5, p0, v5

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_1de

    add-int/lit8 v5, v13, 0x4

    aget-char v5, p0, v5

    const/16 v7, 0x30

    if-ne v5, v7, :cond_1de

    .line 722
    aget-char v5, p0, v13

    const/16 v7, 0x69

    if-ne v5, v7, :cond_296

    add-int/lit8 v5, v13, 0x1

    aget-char v5, p0, v5

    const/16 v7, 0x6e

    if-ne v5, v7, :cond_296

    add-int/lit8 v5, v13, 0x2

    aget-char v5, p0, v5

    const/16 v7, 0x66

    if-ne v5, v7, :cond_296

    .line 726
    const/16 v34, 0x69

    .line 735
    :cond_1de
    :goto_1de
    if-nez v34, :cond_2b0

    .line 736
    const-string v4, "no digits"

    goto/16 :goto_a

    .line 634
    .end local v34    # "infnan":C
    :cond_1e4
    sparse-switch v18, :sswitch_data_54c

    .line 706
    add-int/lit8 v13, v13, -0x1

    .line 707
    goto :goto_1aa

    .line 651
    :sswitch_1ea
    if-ltz v21, :cond_1f0

    .line 652
    const-string v4, "duplicate \'.\' in number"

    goto/16 :goto_a

    .line 653
    :cond_1f0
    const/16 v5, 0xa

    move/from16 v0, p4

    if-eq v0, v5, :cond_1fa

    .line 654
    const-string v4, "\'.\' in non-decimal number"

    goto/16 :goto_a

    .line 655
    :cond_1fa
    add-int/lit8 v21, v13, -0x1

    .line 656
    goto :goto_1a6

    .line 659
    :sswitch_1fd
    move/from16 v0, v26

    if-eq v13, v0, :cond_207

    const/16 v5, 0xa

    move/from16 v0, p4

    if-eq v0, v5, :cond_20a

    .line 661
    :cond_207
    add-int/lit8 v13, v13, -0x1

    .line 662
    goto :goto_1aa

    .line 664
    :cond_20a
    aget-char v37, p0, v13

    .line 665
    .local v37, "next":C
    add-int/lit8 v28, v13, -0x1

    .line 666
    .local v28, "exp_pos":I
    const/16 v5, 0x2b

    move/from16 v0, v37

    if-eq v0, v5, :cond_21a

    const/16 v5, 0x2d

    move/from16 v0, v37

    if-ne v0, v5, :cond_22e

    .line 668
    :cond_21a
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v26

    if-ge v13, v0, :cond_22a

    aget-char v5, p0, v13

    const/16 v7, 0xa

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_23c

    .line 670
    :cond_22a
    const-string v4, "missing exponent digits"

    goto/16 :goto_a

    .line 672
    :cond_22e
    const/16 v5, 0xa

    move/from16 v0, v37

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_23c

    .line 674
    add-int/lit8 v13, v13, -0x1

    .line 675
    goto/16 :goto_1aa

    .line 677
    :cond_23c
    if-ltz v29, :cond_242

    .line 678
    const-string v4, "duplicate exponent"

    goto/16 :goto_a

    .line 679
    :cond_242
    const/16 v5, 0xa

    move/from16 v0, p4

    if-eq v0, v5, :cond_24c

    .line 680
    const-string v4, "exponent in non-decimal number"

    goto/16 :goto_a

    .line 681
    :cond_24c
    if-gez v6, :cond_252

    .line 682
    const-string v4, "mantissa with no digits"

    goto/16 :goto_a

    .line 683
    :cond_252
    move/from16 v29, v28

    .line 686
    :cond_254
    add-int/lit8 v13, v13, 0x1

    .line 687
    move/from16 v0, v26

    if-ge v13, v0, :cond_1aa

    aget-char v5, p0, v13

    const/16 v7, 0xa

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_254

    goto/16 :goto_1aa

    .line 691
    .end local v28    # "exp_pos":I
    .end local v37    # "next":C
    :sswitch_266
    if-eqz v40, :cond_26c

    .line 692
    const-string v4, "multiple fraction symbol \'/\'"

    goto/16 :goto_a

    .line 693
    :cond_26c
    if-gez v6, :cond_272

    .line 694
    const-string v4, "no digits before fraction symbol \'/\'"

    goto/16 :goto_a

    .line 695
    :cond_272
    if-gez v29, :cond_276

    if-ltz v21, :cond_27a

    .line 696
    :cond_276
    const-string v4, "fraction symbol \'/\' following exponent or \'.\'"

    goto/16 :goto_a

    .line 697
    :cond_27a
    sub-int v7, v13, v6

    move-object/from16 v5, p0

    move/from16 v8, p4

    invoke-static/range {v5 .. v11}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v40

    .line 699
    const/4 v6, -0x1

    .line 700
    const-wide/16 v10, 0x0

    .line 701
    const/4 v9, 0x0

    .line 702
    const/16 v30, 0x0

    .line 703
    const/16 v52, 0x0

    .line 704
    goto/16 :goto_1a6

    .line 712
    :cond_28e
    add-int/lit8 v43, v13, 0x1

    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    aget-char v18, p0, v13

    move/from16 v13, v43

    .line 713
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_185

    .line 728
    .restart local v34    # "infnan":C
    :cond_296
    aget-char v5, p0, v13

    const/16 v7, 0x6e

    if-ne v5, v7, :cond_1de

    add-int/lit8 v5, v13, 0x1

    aget-char v5, p0, v5

    const/16 v7, 0x61

    if-ne v5, v7, :cond_1de

    add-int/lit8 v5, v13, 0x2

    aget-char v5, p0, v5

    const/16 v7, 0x6e

    if-ne v5, v7, :cond_1de

    .line 732
    const/16 v34, 0x6e

    goto/16 :goto_1de

    .line 737
    :cond_2b0
    add-int/lit8 v13, v13, 0x5

    move/from16 v43, v13

    .line 740
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :goto_2b4
    if-nez v30, :cond_2b8

    if-eqz v52, :cond_2b8

    .line 745
    :cond_2b8
    const/16 v5, 0x69

    move/from16 v0, p3

    if-eq v0, v5, :cond_2cc

    const/16 v5, 0x49

    move/from16 v0, p3

    if-eq v0, v5, :cond_2cc

    const/16 v5, 0x20

    move/from16 v0, p3

    if-ne v0, v5, :cond_328

    if-eqz v30, :cond_328

    :cond_2cc
    const/16 v33, 0x1

    .line 747
    .local v33, "inexact":Z
    :goto_2ce
    const/16 v38, 0x0

    .line 748
    .local v38, "number":Lgnu/math/RealNum;
    const/16 v27, 0x0

    .line 749
    .local v27, "exp_char":C
    if-eqz v34, :cond_32e

    .line 751
    const/16 v33, 0x1

    .line 752
    const/16 v5, 0x69

    move/from16 v0, v34

    if-ne v0, v5, :cond_32b

    const-wide/high16 v22, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 753
    .local v22, "d":D
    :goto_2de
    new-instance v38, Lgnu/math/DFloNum;

    .end local v38    # "number":Lgnu/math/RealNum;
    if-eqz v9, :cond_2e7

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .end local v22    # "d":D
    :cond_2e7
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 807
    .restart local v38    # "number":Lgnu/math/RealNum;
    :goto_2ee
    const/16 v5, 0x65

    move/from16 v0, p3

    if-eq v0, v5, :cond_2fa

    const/16 v5, 0x45

    move/from16 v0, p3

    if-ne v0, v5, :cond_2fe

    .line 808
    :cond_2fa
    invoke-virtual/range {v38 .. v38}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v38

    .line 810
    :cond_2fe
    move/from16 v0, v43

    move/from16 v1, v26

    if-ge v0, v1, :cond_4d7

    .line 812
    add-int/lit8 v13, v43, 0x1

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    aget-char v18, p0, v43

    .line 814
    const/16 v5, 0x40

    move/from16 v0, v18

    if-ne v0, v5, :cond_42c

    .line 816
    sub-int v14, v26, v13

    const/16 v16, 0xa

    move-object/from16 v12, p0

    move/from16 v15, p3

    move/from16 v17, p5

    invoke-static/range {v12 .. v17}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v4

    .line 818
    .local v4, "angle":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_a

    .line 820
    instance-of v5, v4, Lgnu/math/RealNum;

    if-nez v5, :cond_409

    .line 821
    const-string v4, "invalid complex polar constant"

    goto/16 :goto_a

    .line 745
    .end local v4    # "angle":Ljava/lang/Object;
    .end local v13    # "pos":I
    .end local v27    # "exp_char":C
    .end local v33    # "inexact":Z
    .end local v38    # "number":Lgnu/math/RealNum;
    .restart local v43    # "pos":I
    :cond_328
    const/16 v33, 0x0

    goto :goto_2ce

    .line 752
    .restart local v27    # "exp_char":C
    .restart local v33    # "inexact":Z
    .restart local v38    # "number":Lgnu/math/RealNum;
    :cond_32b
    const-wide/high16 v22, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2de

    .line 755
    :cond_32e
    if-gez v29, :cond_332

    if-ltz v21, :cond_39b

    .line 757
    :cond_332
    move/from16 v0, v21

    if-le v6, v0, :cond_33a

    if-ltz v21, :cond_33a

    .line 758
    move/from16 v6, v21

    .line 759
    :cond_33a
    if-eqz v40, :cond_342

    .line 760
    const-string v4, "floating-point number after fraction symbol \'/\'"

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_a

    .line 761
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :cond_342
    new-instance v51, Ljava/lang/String;

    sub-int v5, v43, v6

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v5}, Ljava/lang/String;-><init>([CII)V

    .line 762
    .local v51, "str":Ljava/lang/String;
    if-ltz v29, :cond_385

    .line 764
    aget-char v5, p0, v29

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v27

    .line 765
    const/16 v5, 0x65

    move/from16 v0, v27

    if-eq v0, v5, :cond_385

    .line 767
    sub-int v44, v29, v6

    .line 768
    .local v44, "prefix":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v44

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x65

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v44, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 771
    .end local v44    # "prefix":I
    :cond_385
    invoke-static/range {v51 .. v51}, Lgnu/lists/Convert;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .line 772
    .restart local v22    # "d":D
    new-instance v38, Lgnu/math/DFloNum;

    .end local v38    # "number":Lgnu/math/RealNum;
    if-eqz v9, :cond_392

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .end local v22    # "d":D
    :cond_392
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 773
    .restart local v38    # "number":Lgnu/math/RealNum;
    goto/16 :goto_2ee

    .line 776
    .end local v51    # "str":Ljava/lang/String;
    :cond_39b
    sub-int v7, v43, v6

    move-object/from16 v5, p0

    move/from16 v8, p4

    invoke-static/range {v5 .. v11}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v35

    .line 778
    .local v35, "iresult":Lgnu/math/IntNum;
    if-nez v40, :cond_3c6

    .line 779
    move-object/from16 v38, v35

    move-object/from16 v39, v38

    .line 801
    .end local v38    # "number":Lgnu/math/RealNum;
    .local v39, "number":Lgnu/math/RealNum;
    :goto_3ab
    if-eqz v33, :cond_50d

    invoke-virtual/range {v39 .. v39}, Lgnu/math/RealNum;->isExact()Z

    move-result v5

    if-eqz v5, :cond_50d

    .line 803
    new-instance v38, Lgnu/math/DFloNum;

    if-eqz v41, :cond_404

    invoke-virtual/range {v39 .. v39}, Lgnu/math/RealNum;->isZero()Z

    move-result v5

    if-eqz v5, :cond_404

    const-wide/high16 v14, -0x8000000000000000L

    :goto_3bf
    move-object/from16 v0, v38

    invoke-direct {v0, v14, v15}, Lgnu/math/DFloNum;-><init>(D)V

    .end local v39    # "number":Lgnu/math/RealNum;
    .restart local v38    # "number":Lgnu/math/RealNum;
    goto/16 :goto_2ee

    .line 784
    :cond_3c6
    invoke-virtual/range {v35 .. v35}, Lgnu/math/IntNum;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3f9

    .line 786
    invoke-virtual/range {v40 .. v40}, Lgnu/math/IntNum;->isZero()Z

    move-result v42

    .line 787
    .local v42, "numeratorZero":Z
    if-eqz v33, :cond_3e8

    .line 788
    new-instance v38, Lgnu/math/DFloNum;

    .end local v38    # "number":Lgnu/math/RealNum;
    if-eqz v42, :cond_3e0

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    :goto_3d8
    move-object/from16 v0, v38

    invoke-direct {v0, v14, v15}, Lgnu/math/DFloNum;-><init>(D)V

    .restart local v38    # "number":Lgnu/math/RealNum;
    :goto_3dd
    move-object/from16 v39, v38

    .line 795
    .end local v38    # "number":Lgnu/math/RealNum;
    .restart local v39    # "number":Lgnu/math/RealNum;
    goto :goto_3ab

    .line 788
    .end local v39    # "number":Lgnu/math/RealNum;
    :cond_3e0
    if-eqz v41, :cond_3e5

    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_3d8

    :cond_3e5
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_3d8

    .line 791
    .restart local v38    # "number":Lgnu/math/RealNum;
    :cond_3e8
    if-eqz v42, :cond_3f0

    .line 792
    const-string v4, "0/0 is undefined"

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_a

    .line 794
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :cond_3f0
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v38

    goto :goto_3dd

    .line 798
    .end local v42    # "numeratorZero":Z
    :cond_3f9
    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v38

    move-object/from16 v39, v38

    .end local v38    # "number":Lgnu/math/RealNum;
    .restart local v39    # "number":Lgnu/math/RealNum;
    goto :goto_3ab

    .line 803
    :cond_404
    invoke-virtual/range {v39 .. v39}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v14

    goto :goto_3bf

    .end local v35    # "iresult":Lgnu/math/IntNum;
    .end local v39    # "number":Lgnu/math/RealNum;
    .end local v43    # "pos":I
    .restart local v4    # "angle":Ljava/lang/Object;
    .restart local v13    # "pos":I
    .restart local v38    # "number":Lgnu/math/RealNum;
    :cond_409
    move-object/from16 v46, v4

    .line 822
    check-cast v46, Lgnu/math/RealNum;

    .line 825
    .local v46, "rangle":Lgnu/math/RealNum;
    invoke-virtual/range {v38 .. v38}, Lgnu/math/RealNum;->isZero()Z

    move-result v5

    if-eqz v5, :cond_422

    invoke-virtual/range {v46 .. v46}, Lgnu/math/RealNum;->isExact()Z

    move-result v5

    if-nez v5, :cond_422

    .line 826
    new-instance v4, Lgnu/math/DFloNum;

    .end local v4    # "angle":Ljava/lang/Object;
    const-wide/16 v14, 0x0

    invoke-direct {v4, v14, v15}, Lgnu/math/DFloNum;-><init>(D)V

    goto/16 :goto_a

    .line 828
    .restart local v4    # "angle":Ljava/lang/Object;
    :cond_422
    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lgnu/math/Complex;->polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;

    move-result-object v4

    goto/16 :goto_a

    .line 831
    .end local v4    # "angle":Ljava/lang/Object;
    .end local v46    # "rangle":Lgnu/math/RealNum;
    :cond_42c
    const/16 v5, 0x2d

    move/from16 v0, v18

    if-eq v0, v5, :cond_438

    const/16 v5, 0x2b

    move/from16 v0, v18

    if-ne v0, v5, :cond_493

    .line 833
    :cond_438
    add-int/lit8 v13, v13, -0x1

    .line 834
    sub-int v14, v26, v13

    const/16 v16, 0xa

    move-object/from16 v12, p0

    move/from16 v15, p3

    move/from16 v17, p5

    invoke-static/range {v12 .. v17}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v32

    .line 836
    .local v32, "imag":Ljava/lang/Object;
    move-object/from16 v0, v32

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_452

    move-object/from16 v4, v32

    .line 837
    goto/16 :goto_a

    .line 838
    :cond_452
    move-object/from16 v0, v32

    instance-of v5, v0, Lgnu/math/Complex;

    if-nez v5, :cond_475

    .line 839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid numeric constant ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    :cond_475
    move-object/from16 v19, v32

    .line 840
    check-cast v19, Lgnu/math/Complex;

    .line 841
    .local v19, "cimag":Lgnu/math/Complex;
    invoke-virtual/range {v19 .. v19}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v47

    .line 842
    .local v47, "re":Lgnu/math/RealNum;
    invoke-virtual/range {v47 .. v47}, Lgnu/math/RealNum;->isZero()Z

    move-result v5

    if-nez v5, :cond_487

    .line 843
    const-string v4, "invalid numeric constant"

    goto/16 :goto_a

    .line 844
    :cond_487
    invoke-virtual/range {v19 .. v19}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-static {v0, v5}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v4

    goto/16 :goto_a

    .line 847
    .end local v19    # "cimag":Lgnu/math/Complex;
    .end local v32    # "imag":Ljava/lang/Object;
    .end local v47    # "re":Lgnu/math/RealNum;
    :cond_493
    const/16 v36, 0x0

    .line 850
    .local v36, "lcount":I
    :goto_495
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_4ba

    .line 852
    add-int/lit8 v13, v13, -0x1

    .line 861
    :cond_49d
    const/4 v5, 0x1

    move/from16 v0, v36

    if-ne v0, v5, :cond_4d3

    .line 863
    add-int/lit8 v5, v13, -0x1

    aget-char v45, p0, v5

    .line 864
    .local v45, "prev":C
    const/16 v5, 0x69

    move/from16 v0, v45

    if-eq v0, v5, :cond_4b2

    const/16 v5, 0x49

    move/from16 v0, v45

    if-ne v0, v5, :cond_4d3

    .line 866
    :cond_4b2
    move/from16 v0, v26

    if-ge v13, v0, :cond_4c7

    .line 867
    const-string v4, "junk after imaginary suffix \'i\'"

    goto/16 :goto_a

    .line 855
    .end local v45    # "prev":C
    :cond_4ba
    add-int/lit8 v36, v36, 0x1

    .line 856
    move/from16 v0, v26

    if-eq v13, v0, :cond_49d

    .line 858
    add-int/lit8 v43, v13, 0x1

    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    aget-char v18, p0, v13

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto :goto_495

    .line 868
    .restart local v45    # "prev":C
    :cond_4c7
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v4

    goto/16 :goto_a

    .line 871
    .end local v45    # "prev":C
    :cond_4d3
    const-string v4, "excess junk after number"

    goto/16 :goto_a

    .line 874
    .end local v13    # "pos":I
    .end local v36    # "lcount":I
    .restart local v43    # "pos":I
    :cond_4d7
    move-object/from16 v0, v38

    instance-of v5, v0, Lgnu/math/DFloNum;

    if-eqz v5, :cond_4ec

    if-lez v27, :cond_4ec

    const/16 v5, 0x65

    move/from16 v0, v27

    if-eq v0, v5, :cond_4ec

    .line 876
    invoke-virtual/range {v38 .. v38}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v22

    .line 877
    .restart local v22    # "d":D
    sparse-switch v27, :sswitch_data_57e

    .end local v22    # "d":D
    :cond_4ec
    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    move-object/from16 v4, v38

    .line 887
    goto/16 :goto_a

    .line 880
    .end local v13    # "pos":I
    .restart local v22    # "d":D
    .restart local v43    # "pos":I
    :sswitch_4f2
    move-wide/from16 v0, v22

    double-to-float v5, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_a

    .line 882
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :sswitch_4fd
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_a

    .line 884
    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    :sswitch_505
    invoke-static/range {v22 .. v23}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_a

    .end local v13    # "pos":I
    .end local v22    # "d":D
    .end local v38    # "number":Lgnu/math/RealNum;
    .restart local v35    # "iresult":Lgnu/math/IntNum;
    .restart local v39    # "number":Lgnu/math/RealNum;
    .restart local v43    # "pos":I
    :cond_50d
    move-object/from16 v38, v39

    .end local v39    # "number":Lgnu/math/RealNum;
    .restart local v38    # "number":Lgnu/math/RealNum;
    goto/16 :goto_2ee

    .end local v27    # "exp_char":C
    .end local v33    # "inexact":Z
    .end local v35    # "iresult":Lgnu/math/IntNum;
    .end local v38    # "number":Lgnu/math/RealNum;
    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    :cond_511
    move/from16 v43, v13

    .end local v13    # "pos":I
    .restart local v43    # "pos":I
    goto/16 :goto_2b4

    .end local v6    # "digits_start":I
    .end local v10    # "lvalue":J
    .end local v20    # "copy_needed":Z
    .end local v21    # "decimal_point":I
    .end local v25    # "digit":I
    .end local v29    # "exp_seen":I
    .end local v30    # "hash_seen":Z
    .end local v34    # "infnan":C
    .end local v40    # "numerator":Lgnu/math/IntNum;
    .end local v48    # "realStart":I
    .end local v52    # "underscore_seen":Z
    :cond_515
    move/from16 v13, v43

    .end local v43    # "pos":I
    .restart local v13    # "pos":I
    goto/16 :goto_11c

    .line 508
    nop

    :sswitch_data_51a
    .sparse-switch
        0x42 -> :sswitch_44
        0x44 -> :sswitch_62
        0x45 -> :sswitch_76
        0x49 -> :sswitch_76
        0x4f -> :sswitch_58
        0x58 -> :sswitch_6c
        0x62 -> :sswitch_44
        0x64 -> :sswitch_62
        0x65 -> :sswitch_76
        0x69 -> :sswitch_76
        0x6f -> :sswitch_58
        0x78 -> :sswitch_6c
    .end sparse-switch

    .line 634
    :sswitch_data_54c
    .sparse-switch
        0x2e -> :sswitch_1ea
        0x2f -> :sswitch_266
        0x44 -> :sswitch_1fd
        0x45 -> :sswitch_1fd
        0x46 -> :sswitch_1fd
        0x4c -> :sswitch_1fd
        0x53 -> :sswitch_1fd
        0x64 -> :sswitch_1fd
        0x65 -> :sswitch_1fd
        0x66 -> :sswitch_1fd
        0x6c -> :sswitch_1fd
        0x73 -> :sswitch_1fd
    .end sparse-switch

    .line 877
    :sswitch_data_57e
    .sparse-switch
        0x64 -> :sswitch_4fd
        0x66 -> :sswitch_4f2
        0x6c -> :sswitch_505
        0x73 -> :sswitch_4f2
    .end sparse-switch
.end method

.method public static readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .registers 13
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    .line 1150
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1151
    .local v0, "ch":I
    if-gez v0, :cond_d

    .line 1152
    const-string v8, "unexpected EOF in character literal"

    invoke-virtual {p0, v8}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1153
    :cond_d
    iget v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1154
    .local v4, "startPos":I
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1155
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v8

    const/16 v9, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1156
    iget-object v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    .line 1157
    .local v5, "tokenBuffer":[C
    iget v8, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v2, v8, v4

    .line 1158
    .local v2, "length":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_2f

    .line 1159
    aget-char v8, v5, v4

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    .line 1195
    :goto_2e
    return-object v8

    .line 1160
    :cond_2f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1161
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lgnu/text/Char;->nameToChar(Ljava/lang/String;)I

    move-result v0

    .line 1162
    if-ltz v0, :cond_3f

    .line 1163
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_2e

    .line 1164
    :cond_3f
    aget-char v0, v5, v4

    .line 1165
    const/16 v8, 0x78

    if-eq v0, v8, :cond_49

    const/16 v8, 0x58

    if-ne v0, v8, :cond_5e

    .line 1167
    :cond_49
    const/4 v7, 0x0

    .line 1168
    .local v7, "value":I
    const/4 v1, 0x1

    .line 1170
    .local v1, "i":I
    :goto_4b
    if-ne v1, v2, :cond_52

    .line 1171
    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_2e

    .line 1172
    :cond_52
    add-int v8, v4, v1

    aget-char v8, v5, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 1173
    .local v6, "v":I
    if-gez v6, :cond_6d

    .line 1180
    .end local v1    # "i":I
    .end local v6    # "v":I
    .end local v7    # "value":I
    :cond_5e
    invoke-static {v0, v11}, Ljava/lang/Character;->digit(II)I

    move-result v0

    .line 1181
    if-ltz v0, :cond_83

    .line 1183
    move v7, v0

    .line 1184
    .restart local v7    # "value":I
    const/4 v1, 0x1

    .line 1186
    .restart local v1    # "i":I
    :goto_66
    if-ne v1, v2, :cond_79

    .line 1187
    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_2e

    .line 1175
    .restart local v6    # "v":I
    :cond_6d
    mul-int/lit8 v8, v7, 0x10

    add-int v7, v8, v6

    .line 1176
    const v8, 0x10ffff

    if-gt v7, v8, :cond_5e

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 1188
    .end local v6    # "v":I
    :cond_79
    add-int v8, v4, v1

    aget-char v8, v5, v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1189
    if-gez v0, :cond_a0

    .line 1194
    .end local v1    # "i":I
    .end local v7    # "value":I
    :cond_83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown character name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1195
    const/16 v8, 0x3f

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_2e

    .line 1191
    .restart local v1    # "i":I
    .restart local v7    # "value":I
    :cond_a0
    mul-int/lit8 v8, v7, 0x8

    add-int v7, v8, v0

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_66
.end method

.method public static readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .registers 11
    .param p0, "previous"    # I
    .param p1, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p2, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1123
    iget v0, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v1, v0, p0

    .line 1124
    .local v1, "startPos":I
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    const/16 v2, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v4}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1125
    iget v6, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1126
    .local v6, "endPos":I
    if-ne v1, v6, :cond_20

    .line 1128
    const-string v0, "missing numeric token"

    invoke-virtual {p1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v7

    .line 1144
    :cond_1f
    :goto_1f
    return-object v7

    .line 1131
    :cond_20
    iget-object v0, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v2, v6, v1

    move v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v7

    .line 1133
    .local v7, "result":Ljava/lang/Object;
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_38

    .line 1135
    check-cast v7, Ljava/lang/String;

    .end local v7    # "result":Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_1f

    .line 1138
    .restart local v7    # "result":Ljava/lang/Object;
    :cond_38
    if-nez v7, :cond_1f

    .line 1140
    const-string v0, "invalid numeric constant"

    invoke-virtual {p1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_1f
.end method

.method public static readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;
    .registers 13
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "kind"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x28

    const/16 v9, 0x20

    const/4 v6, 0x0

    .line 1246
    const/4 v5, 0x0

    .line 1250
    .local v5, "size":I
    :goto_6
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1251
    .local v0, "ch":I
    if-gez v0, :cond_11

    .line 1252
    const-string v7, "unexpected EOF reading uniform vector"

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1253
    :cond_11
    int-to-char v7, v0

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1254
    .local v1, "digit":I
    if-gez v1, :cond_36

    .line 1258
    const/16 v7, 0x8

    if-eq v5, v7, :cond_28

    const/16 v7, 0x10

    if-eq v5, v7, :cond_28

    if-eq v5, v9, :cond_28

    const/16 v7, 0x40

    if-ne v5, v7, :cond_30

    :cond_28
    const/16 v7, 0x46

    if-ne p1, v7, :cond_2e

    if-lt v5, v9, :cond_30

    :cond_2e
    if-eq v0, v10, :cond_3b

    .line 1262
    :cond_30
    const-string v7, "invalid uniform vector syntax"

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1298
    :goto_35
    return-object v6

    .line 1256
    :cond_36
    mul-int/lit8 v7, v5, 0xa

    add-int v5, v7, v1

    .line 1257
    goto :goto_6

    .line 1265
    :cond_3b
    const/4 v7, -0x1

    const/16 v8, 0x29

    invoke-static {p0, v10, v7, v8}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v3

    .line 1266
    .local v3, "list":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-static {v3, v7}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v2

    .line 1267
    .local v2, "len":I
    if-gez v2, :cond_4f

    .line 1269
    const-string v7, "invalid elements in uniform vector syntax"

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_35

    :cond_4f
    move-object v4, v3

    .line 1272
    check-cast v4, Lgnu/lists/Sequence;

    .line 1273
    .local v4, "q":Lgnu/lists/Sequence;
    sparse-switch p1, :sswitch_data_9c

    goto :goto_35

    .line 1276
    :sswitch_56
    sparse-switch v5, :sswitch_data_aa

    .line 1282
    :sswitch_59
    sparse-switch v5, :sswitch_data_b4

    .line 1290
    :sswitch_5c
    sparse-switch v5, :sswitch_data_c6

    goto :goto_35

    .line 1292
    :sswitch_60
    new-instance v6, Lgnu/lists/U8Vector;

    invoke-direct {v6, v4}, Lgnu/lists/U8Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1278
    :sswitch_66
    new-instance v6, Lgnu/lists/F32Vector;

    invoke-direct {v6, v4}, Lgnu/lists/F32Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1279
    :sswitch_6c
    new-instance v6, Lgnu/lists/F64Vector;

    invoke-direct {v6, v4}, Lgnu/lists/F64Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1284
    :sswitch_72
    new-instance v6, Lgnu/lists/S8Vector;

    invoke-direct {v6, v4}, Lgnu/lists/S8Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1285
    :sswitch_78
    new-instance v6, Lgnu/lists/S16Vector;

    invoke-direct {v6, v4}, Lgnu/lists/S16Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1286
    :sswitch_7e
    new-instance v6, Lgnu/lists/S32Vector;

    invoke-direct {v6, v4}, Lgnu/lists/S32Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1287
    :sswitch_84
    new-instance v6, Lgnu/lists/S64Vector;

    invoke-direct {v6, v4}, Lgnu/lists/S64Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1293
    :sswitch_8a
    new-instance v6, Lgnu/lists/U16Vector;

    invoke-direct {v6, v4}, Lgnu/lists/U16Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1294
    :sswitch_90
    new-instance v6, Lgnu/lists/U32Vector;

    invoke-direct {v6, v4}, Lgnu/lists/U32Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1295
    :sswitch_96
    new-instance v6, Lgnu/lists/U64Vector;

    invoke-direct {v6, v4}, Lgnu/lists/U64Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_35

    .line 1273
    :sswitch_data_9c
    .sparse-switch
        0x46 -> :sswitch_56
        0x53 -> :sswitch_59
        0x55 -> :sswitch_5c
    .end sparse-switch

    .line 1276
    :sswitch_data_aa
    .sparse-switch
        0x20 -> :sswitch_66
        0x40 -> :sswitch_6c
    .end sparse-switch

    .line 1282
    :sswitch_data_b4
    .sparse-switch
        0x8 -> :sswitch_72
        0x10 -> :sswitch_78
        0x20 -> :sswitch_7e
        0x40 -> :sswitch_84
    .end sparse-switch

    .line 1290
    :sswitch_data_c6
    .sparse-switch
        0x8 -> :sswitch_60
        0x10 -> :sswitch_8a
        0x20 -> :sswitch_90
        0x40 -> :sswitch_96
    .end sparse-switch
.end method

.method public static readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1201
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1202
    .local v0, "ch":I
    if-gez v0, :cond_c

    .line 1203
    const-string v5, "unexpected EOF in #! special form"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1206
    :cond_c
    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2a

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2a

    .line 1210
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v4

    const/16 v5, 0x23

    const/4 v6, 0x1

    invoke-virtual {v4, p0, v5, v6}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    .line 1211
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 1239
    :cond_29
    :goto_29
    return-object v4

    .line 1214
    :cond_2a
    iget v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1215
    .local v3, "startPos":I
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1216
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    const/16 v6, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1217
    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v1, v5, v3

    .line 1218
    .local v1, "length":I
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v2, v5, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1219
    .local v2, "name":Ljava/lang/String;
    const-string v5, "optional"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1220
    sget-object v4, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    goto :goto_29

    .line 1221
    :cond_52
    const-string v5, "rest"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1222
    sget-object v4, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    goto :goto_29

    .line 1223
    :cond_5d
    const-string v5, "key"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1224
    sget-object v4, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    goto :goto_29

    .line 1225
    :cond_68
    const-string v5, "eof"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1226
    sget-object v4, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    goto :goto_29

    .line 1227
    :cond_73
    const-string v5, "void"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 1229
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_29

    .line 1230
    :cond_7e
    const-string v5, "default"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 1231
    sget-object v4, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    goto :goto_29

    .line 1232
    :cond_89
    const-string v5, "undefined"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1233
    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    goto :goto_29

    .line 1234
    :cond_94
    const-string v5, "abstract"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1235
    sget-object v4, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    goto :goto_29

    .line 1236
    :cond_9f
    const-string v5, "null"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown named constant #!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto/16 :goto_29
.end method

.method private static valueOf([CIIIZJ)Lgnu/math/IntNum;
    .registers 10
    .param p0, "buffer"    # [C
    .param p1, "digits_start"    # I
    .param p2, "number_of_digits"    # I
    .param p3, "radix"    # I
    .param p4, "negative"    # Z
    .param p5, "lvalue"    # J

    .prologue
    .line 898
    add-int v0, p2, p3

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_e

    .line 899
    if-eqz p4, :cond_9

    neg-long p5, p5

    .end local p5    # "lvalue":J
    :cond_9
    invoke-static {p5, p6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    .line 901
    :goto_d
    return-object v0

    .restart local p5    # "lvalue":J
    :cond_e
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_d
.end method


# virtual methods
.method handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    .registers 12
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .param p3, "line"    # I
    .param p4, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne p1, v3, :cond_6

    .line 410
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 413
    .end local p1    # "value":Ljava/lang/Object;
    :cond_6
    :goto_6
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 414
    .local v0, "ch":I
    if-ltz v0, :cond_12

    iget-char v3, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-eq v0, v3, :cond_13

    .line 431
    :cond_12
    :goto_12
    return-object p1

    .line 417
    :cond_13
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    .line 418
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    .line 419
    .local v1, "ch2":I
    invoke-virtual {p0, v1, p2}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 421
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->unread()V

    goto :goto_12

    .line 424
    :cond_28
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 425
    invoke-virtual {p2, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v2

    .line 426
    .local v2, "rightOperand":Ljava/lang/Object;
    const-string v3, "quasiquote"

    invoke-virtual {p2, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-static {p1, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 428
    .local p1, "value":Lgnu/lists/Pair;
    sget-object v3, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x1

    add-int/lit8 v6, p4, 0x1

    invoke-static {v3, p1, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    .line 430
    .local p1, "value":Lgnu/lists/PairWithPosition;
    goto :goto_6
.end method

.method protected makeNil()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1092
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;
    .registers 5
    .param p1, "car"    # Ljava/lang/Object;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .prologue
    .line 1097
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;
    .registers 8
    .param p1, "car"    # Ljava/lang/Object;
    .param p2, "cdr"    # Ljava/lang/Object;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .prologue
    .line 1102
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "pname":Ljava/lang/String;
    if-eqz v0, :cond_13

    if-ltz p3, :cond_13

    .line 1104
    add-int/lit8 v1, p3, 0x1

    add-int/lit8 v2, p4, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 1107
    :goto_12
    return-object v1

    :cond_13
    invoke-static {p1, p2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_12
.end method

.method protected readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .registers 33
    .param p1, "ch"    # I
    .param p2, "startPos"    # I
    .param p3, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 134
    move-object/from16 v0, p0

    iget v11, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 135
    .local v11, "endPos":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-nez v3, :cond_2f

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v5, v11, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move/from16 v4, p2

    invoke-static/range {v3 .. v8}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v28

    .line 139
    .local v28, "value":Ljava/lang/Object;
    if-eqz v28, :cond_2f

    move-object/from16 v0, v28

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_2f

    .line 256
    .end local v28    # "value":Ljava/lang/Object;
    :goto_2e
    return-object v28

    .line 151
    :cond_2f
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v22

    .line 152
    .local v22, "readCase":C
    const/16 v3, 0x49

    move/from16 v0, v22

    if-ne v0, v3, :cond_67

    .line 154
    const/16 v25, 0x0

    .line 155
    .local v25, "upperCount":I
    const/16 v18, 0x0

    .line 156
    .local v18, "lowerCount":I
    move/from16 v13, p2

    .local v13, "i":I
    :goto_3f
    if-ge v13, v11, :cond_63

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v10, v3, v13

    .line 159
    .local v10, "ci":C
    const v3, 0xffff

    if-ne v10, v3, :cond_51

    .line 160
    add-int/lit8 v13, v13, 0x1

    .line 156
    :cond_4e
    :goto_4e
    add-int/lit8 v13, v13, 0x1

    goto :goto_3f

    .line 161
    :cond_51
    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 162
    add-int/lit8 v18, v18, 0x1

    goto :goto_4e

    .line 163
    :cond_5a
    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 164
    add-int/lit8 v25, v25, 0x1

    goto :goto_4e

    .line 166
    .end local v10    # "ci":C
    :cond_63
    if-nez v18, :cond_be

    .line 167
    const/16 v22, 0x44

    .line 174
    .end local v13    # "i":I
    .end local v18    # "lowerCount":I
    .end local v25    # "upperCount":I
    :cond_67
    :goto_67
    add-int/lit8 v3, p2, 0x2

    if-lt v11, v3, :cond_c6

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v4, v11, -0x1

    aget-char v3, v3, v4

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_c6

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v4, v11, -0x2

    aget-char v3, v3, v4

    const v4, 0xffff

    if-eq v3, v4, :cond_c6

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_c6

    const/4 v12, 0x1

    .line 179
    .local v12, "handleUri":Z
    :goto_8d
    const/16 v19, -0x1

    .line 180
    .local v19, "packageMarker":I
    const/16 v16, -0x1

    .local v16, "lbrace":I
    const/16 v21, -0x1

    .local v21, "rbrace":I
    const/4 v9, 0x0

    .line 181
    .local v9, "braceNesting":I
    move/from16 v14, p2

    .line 182
    .local v14, "j":I
    const/16 v27, 0x0

    .line 183
    .local v27, "uriBad":Z
    move/from16 v13, p2

    .restart local v13    # "i":I
    move v15, v14

    .end local v14    # "j":I
    .local v15, "j":I
    :goto_9b
    if-ge v13, v11, :cond_11b

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v10, v3, v13

    .line 186
    .restart local v10    # "ci":C
    const v3, 0xffff

    if-ne v10, v3, :cond_c8

    .line 188
    add-int/lit8 v13, v13, 0x1

    if-ge v13, v11, :cond_1f1

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "j":I
    .restart local v14    # "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v4, v4, v13

    aput-char v4, v3, v15

    .line 183
    :goto_ba
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14    # "j":I
    .restart local v15    # "j":I
    goto :goto_9b

    .line 168
    .end local v9    # "braceNesting":I
    .end local v10    # "ci":C
    .end local v12    # "handleUri":Z
    .end local v15    # "j":I
    .end local v16    # "lbrace":I
    .end local v19    # "packageMarker":I
    .end local v21    # "rbrace":I
    .end local v27    # "uriBad":Z
    .restart local v18    # "lowerCount":I
    .restart local v25    # "upperCount":I
    :cond_be
    if-nez v25, :cond_c3

    .line 169
    const/16 v22, 0x55

    goto :goto_67

    .line 171
    :cond_c3
    const/16 v22, 0x50

    goto :goto_67

    .line 174
    .end local v13    # "i":I
    .end local v18    # "lowerCount":I
    .end local v25    # "upperCount":I
    :cond_c6
    const/4 v12, 0x0

    goto :goto_8d

    .line 192
    .restart local v9    # "braceNesting":I
    .restart local v10    # "ci":C
    .restart local v12    # "handleUri":Z
    .restart local v13    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "lbrace":I
    .restart local v19    # "packageMarker":I
    .restart local v21    # "rbrace":I
    .restart local v27    # "uriBad":Z
    :cond_c8
    if-eqz v12, :cond_d4

    .line 194
    const/16 v3, 0x7b

    if-ne v10, v3, :cond_e4

    .line 196
    if-gez v16, :cond_df

    .line 197
    move/from16 v16, v15

    .line 200
    :cond_d2
    :goto_d2
    add-int/lit8 v9, v9, 0x1

    .line 216
    :cond_d4
    :goto_d4
    if-lez v9, :cond_f9

    .line 224
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "j":I
    .restart local v14    # "j":I
    aput-char v10, v3, v15

    goto :goto_ba

    .line 198
    .end local v14    # "j":I
    .restart local v15    # "j":I
    :cond_df
    if-nez v9, :cond_d2

    .line 199
    const/16 v27, 0x1

    goto :goto_d2

    .line 202
    :cond_e4
    const/16 v3, 0x7d

    if-ne v10, v3, :cond_d4

    .line 204
    add-int/lit8 v9, v9, -0x1

    .line 205
    if-gez v9, :cond_ef

    .line 206
    const/16 v27, 0x1

    goto :goto_d4

    .line 207
    :cond_ef
    if-nez v9, :cond_d4

    .line 209
    if-gez v21, :cond_f6

    .line 210
    move/from16 v21, v15

    goto :goto_d4

    .line 212
    :cond_f6
    const/16 v27, 0x1

    goto :goto_d4

    .line 218
    :cond_f9
    const/16 v3, 0x3a

    if-ne v10, v3, :cond_105

    .line 219
    if-ltz v19, :cond_102

    const/16 v19, -0x1

    :goto_101
    goto :goto_d6

    :cond_102
    move/from16 v19, v15

    goto :goto_101

    .line 220
    :cond_105
    const/16 v3, 0x55

    move/from16 v0, v22

    if-ne v0, v3, :cond_110

    .line 221
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    goto :goto_d6

    .line 222
    :cond_110
    const/16 v3, 0x44

    move/from16 v0, v22

    if-ne v0, v3, :cond_d6

    .line 223
    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    goto :goto_d6

    .line 226
    .end local v10    # "ci":C
    :cond_11b
    move v11, v15

    .line 228
    sub-int v17, v11, p2

    .line 230
    .local v17, "len":I
    if-ltz v16, :cond_180

    move/from16 v0, v21

    move/from16 v1, v16

    if-le v0, v1, :cond_180

    .line 232
    if-lez v16, :cond_17d

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v4, v16, p2

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 233
    .local v20, "prefix":Ljava/lang/String;
    :goto_137
    add-int/lit8 v16, v16, 0x1

    .line 234
    new-instance v26, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v4, v21, v16

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 235
    .local v26, "uri":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 236
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 237
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v23

    .line 238
    .local v23, "rightOperand":Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v3, v0, Lgnu/mapping/SimpleSymbol;

    if-nez v3, :cond_16f

    .line 239
    const-string v3, "expected identifier in symbol after \'{URI}:\'"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 241
    :cond_16f
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v28

    goto/16 :goto_2e

    .line 232
    .end local v20    # "prefix":Ljava/lang/String;
    .end local v23    # "rightOperand":Ljava/lang/Object;
    .end local v26    # "uri":Ljava/lang/String;
    :cond_17d
    const/16 v20, 0x0

    goto :goto_137

    .line 244
    :cond_180
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    if-eqz v3, :cond_1ac

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_1ac

    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_1ac

    .line 246
    add-int/lit8 p2, p2, 0x1

    .line 247
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v4, v11, p2

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 248
    .local v24, "str":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v28

    goto/16 :goto_2e

    .line 250
    .end local v24    # "str":Ljava/lang/String;
    :cond_1ac
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    if-eqz v3, :cond_1dc

    add-int/lit8 v3, v11, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1dc

    const/4 v3, 0x1

    move/from16 v0, v17

    if-gt v0, v3, :cond_1c3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-eqz v3, :cond_1dc

    .line 253
    :cond_1c3
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 254
    .restart local v24    # "str":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v28

    goto/16 :goto_2e

    .line 256
    .end local v24    # "str":Ljava/lang/String;
    :cond_1dc
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v3, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_2e

    .end local v17    # "len":I
    .restart local v10    # "ci":C
    :cond_1f1
    move v14, v15

    .end local v15    # "j":I
    .restart local v14    # "j":I
    goto/16 :goto_ba
.end method

.method public readCommand()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readEscape()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 912
    .local v0, "c":I
    if-gez v0, :cond_d

    .line 914
    const-string v1, "unexpected EOF in character literal"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 915
    const/4 v1, -0x1

    .line 917
    :goto_c
    return v1

    :cond_d
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v1

    goto :goto_c
.end method

.method public final readEscape(I)I
    .registers 12
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x9

    const/4 v5, -0x1

    const/16 v4, 0x3f

    const/16 v7, 0xa

    .line 923
    int-to-char v6, p1

    sparse-switch v6, :sswitch_data_f8

    :cond_d
    :goto_d
    move v4, p1

    .line 1047
    :goto_e
    return v4

    .line 925
    :sswitch_f
    const/4 p1, 0x7

    goto :goto_d

    .line 926
    :sswitch_11
    const/16 p1, 0x8

    goto :goto_d

    .line 927
    :sswitch_14
    const/16 p1, 0x9

    goto :goto_d

    .line 928
    :sswitch_17
    const/16 p1, 0xa

    goto :goto_d

    .line 929
    :sswitch_1a
    const/16 p1, 0xb

    goto :goto_d

    .line 930
    :sswitch_1d
    const/16 p1, 0xc

    goto :goto_d

    .line 931
    :sswitch_20
    const/16 p1, 0xd

    goto :goto_d

    .line 932
    :sswitch_23
    const/16 p1, 0x1b

    goto :goto_d

    .line 933
    :sswitch_26
    const/16 p1, 0x22

    goto :goto_d

    .line 934
    :sswitch_29
    const/16 p1, 0x5c

    goto :goto_d

    .line 960
    :cond_2c
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 941
    :sswitch_30
    if-gez p1, :cond_39

    .line 943
    const-string v4, "unexpected EOF in literal"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    move v4, v5

    .line 944
    goto :goto_e

    .line 946
    :cond_39
    if-ne p1, v7, :cond_4a

    .line 962
    :goto_3b
    if-ne p1, v7, :cond_d

    .line 967
    :cond_3d
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 968
    if-gez p1, :cond_62

    .line 970
    const-string v4, "unexpected EOF in literal"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    move v4, v5

    .line 971
    goto :goto_e

    .line 948
    :cond_4a
    const/16 v4, 0xd

    if-ne p1, v4, :cond_5a

    .line 950
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v4

    if-ne v4, v7, :cond_57

    .line 951
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 952
    :cond_57
    const/16 p1, 0xa

    .line 953
    goto :goto_3b

    .line 955
    :cond_5a
    if-eq p1, v9, :cond_2c

    if-eq p1, v8, :cond_2c

    .line 957
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_3b

    .line 973
    :cond_62
    if-eq p1, v9, :cond_3d

    if-eq p1, v8, :cond_3d

    .line 975
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 976
    const/4 v4, -0x2

    goto :goto_e

    .line 980
    :sswitch_6b
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 981
    const/16 v5, 0x2d

    if-eq p1, v5, :cond_79

    .line 983
    const-string v5, "Invalid escape character syntax"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_e

    .line 986
    :cond_79
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 987
    const/16 v4, 0x5c

    if-ne p1, v4, :cond_85

    .line 988
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    .line 989
    :cond_85
    or-int/lit16 v4, p1, 0x80

    goto :goto_e

    .line 991
    :sswitch_88
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 992
    const/16 v5, 0x2d

    if-eq p1, v5, :cond_97

    .line 994
    const-string v5, "Invalid escape character syntax"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 999
    :cond_97
    :sswitch_97
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 1000
    const/16 v5, 0x5c

    if-ne p1, v5, :cond_a3

    .line 1001
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    .line 1002
    :cond_a3
    if-ne p1, v4, :cond_a9

    .line 1003
    const/16 v4, 0x7f

    goto/16 :goto_e

    .line 1004
    :cond_a9
    and-int/lit16 v4, p1, 0x9f

    goto/16 :goto_e

    .line 1014
    :sswitch_ad
    add-int/lit8 p1, p1, -0x30

    .line 1015
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_b0
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_d

    .line 1017
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1018
    .local v1, "d":I
    int-to-char v4, v1

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 1019
    .local v3, "v":I
    if-ltz v3, :cond_c7

    .line 1020
    shl-int/lit8 v4, p1, 0x3

    add-int p1, v4, v3

    goto :goto_b0

    .line 1023
    :cond_c7
    if-ltz v1, :cond_d

    .line 1024
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto/16 :goto_d

    .line 1030
    .end local v0    # "count":I
    .end local v1    # "d":I
    .end local v3    # "v":I
    :sswitch_ce
    const/4 p1, 0x0

    .line 1031
    const/4 v2, 0x4

    .local v2, "i":I
    :goto_d0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_d

    .line 1033
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1034
    .restart local v1    # "d":I
    if-gez v1, :cond_df

    .line 1035
    const-string v4, "premature EOF in \\u escape"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1036
    :cond_df
    int-to-char v4, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 1037
    .restart local v3    # "v":I
    if-gez v3, :cond_ed

    .line 1038
    const-string v4, "non-hex character following \\u"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1039
    :cond_ed
    mul-int/lit8 v4, p1, 0x10

    add-int p1, v4, v3

    .line 1040
    goto :goto_d0

    .line 1044
    .end local v1    # "d":I
    .end local v2    # "i":I
    .end local v3    # "v":I
    :sswitch_f2
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result v4

    goto/16 :goto_e

    .line 923
    :sswitch_data_f8
    .sparse-switch
        0x9 -> :sswitch_30
        0xa -> :sswitch_30
        0xd -> :sswitch_30
        0x20 -> :sswitch_30
        0x22 -> :sswitch_26
        0x30 -> :sswitch_ad
        0x31 -> :sswitch_ad
        0x32 -> :sswitch_ad
        0x33 -> :sswitch_ad
        0x34 -> :sswitch_ad
        0x35 -> :sswitch_ad
        0x36 -> :sswitch_ad
        0x37 -> :sswitch_ad
        0x43 -> :sswitch_88
        0x4d -> :sswitch_6b
        0x58 -> :sswitch_f2
        0x5c -> :sswitch_29
        0x5e -> :sswitch_97
        0x61 -> :sswitch_f
        0x62 -> :sswitch_11
        0x65 -> :sswitch_23
        0x66 -> :sswitch_1d
        0x6e -> :sswitch_17
        0x72 -> :sswitch_20
        0x74 -> :sswitch_14
        0x75 -> :sswitch_ce
        0x76 -> :sswitch_1a
        0x78 -> :sswitch_f2
    .end sparse-switch
.end method

.method public readHexEscape()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1057
    .local v0, "c":I
    :goto_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1058
    .local v1, "d":I
    int-to-char v3, v1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1059
    .local v2, "v":I
    if-ltz v2, :cond_13

    .line 1060
    shl-int/lit8 v3, v0, 0x4

    add-int v0, v3, v2

    goto :goto_1

    .line 1063
    :cond_13
    const/16 v3, 0x3b

    if-eq v1, v3, :cond_1c

    .line 1066
    if-ltz v1, :cond_1c

    .line 1067
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1072
    :cond_1c
    return v0
.end method

.method public final readNestedComment(CC)V
    .registers 10
    .param p1, "c1"    # C
    .param p2, "c2"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x1

    .line 37
    .local v1, "commentNesting":I
    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v3

    .line 38
    .local v3, "startLine":I
    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    .line 41
    .local v2, "startColumn":I
    :cond_d
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 42
    .local v0, "c":I
    const/16 v4, 0x7c

    if-ne v0, v4, :cond_44

    .line 44
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 45
    if-ne v0, p1, :cond_1d

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 54
    :cond_1d
    :goto_1d
    if-gez v0, :cond_4f

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end-of-file in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " comment starting here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 62
    :goto_43
    return-void

    .line 48
    :cond_44
    if-ne v0, p1, :cond_1d

    .line 50
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 51
    if-ne v0, p2, :cond_1d

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 61
    :cond_4f
    if-gtz v1, :cond_d

    goto :goto_43
.end method

.method public readObject()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    iget-char v4, v7, Lgnu/mapping/InPort;->readState:C

    .line 367
    .local v4, "saveReadState":C
    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 368
    .local v5, "startPos":I
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    const/16 v8, 0x20

    iput-char v8, v7, Lgnu/mapping/InPort;->readState:C

    .line 371
    :try_start_10
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    .line 374
    .local v3, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :cond_14
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v2

    .line 375
    .local v2, "line":I
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v1

    .line 376
    .local v1, "column":I
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 377
    .local v0, "ch":I
    if-gez v0, :cond_34

    .line 378
    sget-object v8, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_4a

    .line 387
    iput v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    iput-char v4, v7, Lgnu/mapping/InPort;->readState:C

    move-object v7, v8

    :goto_33
    return-object v7

    .line 379
    :cond_34
    :try_start_34
    invoke-virtual {p0, v0, v3}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v6

    .line 380
    .local v6, "value":Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v6, v7, :cond_14

    .line 382
    invoke-virtual {p0, v6, v3, v2, v1}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_4a

    move-result-object v8

    .line 387
    iput v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    iput-char v4, v7, Lgnu/mapping/InPort;->readState:C

    move-object v7, v8

    goto :goto_33

    .line 387
    .end local v0    # "ch":I
    .end local v1    # "column":I
    .end local v2    # "line":I
    .end local v3    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v6    # "value":Ljava/lang/Object;
    :catchall_4a
    move-exception v7

    move-object v8, v7

    iput v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    iput-char v4, v7, Lgnu/mapping/InPort;->readState:C

    throw v8
.end method

.method public final readObject(I)Ljava/lang/Object;
    .registers 3
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1078
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1079
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method readToken(ICLgnu/kawa/lispexpr/ReadTable;)V
    .registers 12
    .param p1, "ch"    # I
    .param p2, "readCase"    # C
    .param p3, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const v7, 0xffff

    const/4 v5, 0x1

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "inEscapes":Z
    const/4 v0, 0x0

    .line 273
    .local v0, "braceNesting":I
    :goto_6
    if-gez p1, :cond_f

    .line 275
    if-eqz v2, :cond_35

    .line 276
    const-string v6, "unexpected EOF between escapes"

    invoke-virtual {p0, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 280
    :cond_f
    invoke-virtual {p3, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    .line 281
    .local v1, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v3

    .line 282
    .local v3, "kind":I
    if-nez v3, :cond_36

    .line 284
    if-eqz v2, :cond_26

    .line 286
    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 287
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 271
    :goto_21
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_6

    .line 290
    :cond_26
    const/16 v6, 0x7d

    if-ne p1, v6, :cond_32

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_32

    .line 292
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_21

    .line 295
    :cond_32
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 361
    .end local v1    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v3    # "kind":I
    :cond_35
    :goto_35
    return-void

    .line 298
    .restart local v1    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v3    # "kind":I
    :cond_36
    iget-char v6, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v6, :cond_51

    if-nez v2, :cond_51

    .line 300
    iget-object v6, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v4

    .line 301
    .local v4, "next":I
    iget-char v6, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v4, v6, :cond_4a

    .line 303
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_35

    .line 306
    :cond_4a
    invoke-virtual {p0, v4, p3}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 307
    const/4 v3, 0x5

    .line 310
    .end local v4    # "next":I
    :cond_51
    const/4 v6, 0x3

    if-ne v3, v6, :cond_78

    .line 312
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 313
    if-gez p1, :cond_5f

    .line 314
    const-string v6, "unexpected EOF after single escape"

    invoke-virtual {p0, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_5f
    iget-boolean v6, p3, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    if-eqz v6, :cond_6f

    const/16 v6, 0x78

    if-eq p1, v6, :cond_6b

    const/16 v6, 0x58

    if-ne p1, v6, :cond_6f

    .line 317
    :cond_6b
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result p1

    .line 318
    :cond_6f
    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 319
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 320
    iput-boolean v5, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    goto :goto_21

    .line 323
    :cond_78
    const/4 v6, 0x4

    if-ne v3, v6, :cond_83

    .line 325
    if-nez v2, :cond_81

    move v2, v5

    .line 326
    :goto_7e
    iput-boolean v5, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    goto :goto_21

    .line 325
    :cond_81
    const/4 v2, 0x0

    goto :goto_7e

    .line 329
    :cond_83
    if-eqz v2, :cond_8c

    .line 332
    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 333
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_21

    .line 338
    :cond_8c
    packed-switch v3, :pswitch_data_ac

    :pswitch_8f
    goto :goto_21

    .line 356
    :pswitch_90
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_35

    .line 341
    :pswitch_94
    const/16 v6, 0x7b

    if-ne p1, v6, :cond_9e

    sget-object v6, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    if-ne v1, v6, :cond_9e

    .line 342
    add-int/lit8 v0, v0, 0x1

    .line 345
    :cond_9e
    :pswitch_9e
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_21

    .line 348
    :pswitch_a2
    const/4 v2, 0x1

    .line 349
    iput-boolean v5, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    goto/16 :goto_21

    .line 352
    :pswitch_a7
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_35

    .line 338
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_90
        :pswitch_94
        :pswitch_8f
        :pswitch_a2
        :pswitch_a7
        :pswitch_9e
    .end packed-switch
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .registers 4
    .param p1, "ch"    # I
    .param p2, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .registers 9
    .param p1, "ch"    # I
    .param p2, "entry"    # Lgnu/kawa/lispexpr/ReadTableEntry;
    .param p3, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 103
    iget v2, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 105
    .local v2, "startPos":I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 106
    invoke-virtual {p2}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v1

    .line 107
    .local v1, "kind":I
    packed-switch v1, :pswitch_data_3c

    .line 127
    :pswitch_c
    invoke-virtual {p0, p1, v2, p3}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v3

    :goto_10
    return-object v3

    .line 111
    :pswitch_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character #\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "err":Ljava/lang/String;
    iget-boolean v3, p0, Lgnu/kawa/lispexpr/LispReader;->interactive:Z

    if-eqz v3, :cond_2f

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->fatal(Ljava/lang/String;)V

    .line 114
    :goto_2c
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_10

    .line 113
    :cond_2f
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_2c

    .line 117
    .end local v0    # "err":Ljava/lang/String;
    :pswitch_33
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_10

    .line 120
    :pswitch_36
    const/4 v3, -0x1

    invoke-virtual {p2, p0, p1, v3}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v3

    goto :goto_10

    .line 107
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_33
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method protected setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "pair"    # Ljava/lang/Object;
    .param p2, "cdr"    # Ljava/lang/Object;

    .prologue
    .line 1112
    check-cast p1, Lgnu/lists/Pair;

    .end local p1    # "pair":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 1113
    return-void
.end method

.method protected validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z
    .registers 7
    .param p1, "ch"    # I
    .param p2, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 395
    if-ltz p1, :cond_c

    const/16 v3, 0x3a

    if-eq p1, v3, :cond_c

    iget-char v3, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v3, :cond_d

    .line 400
    :cond_c
    :goto_c
    return v1

    .line 397
    :cond_d
    const/16 v3, 0x2c

    if-ne p1, v3, :cond_13

    move v1, v2

    .line 398
    goto :goto_c

    .line 399
    :cond_13
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v0

    .line 400
    .local v0, "kind":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_27

    const/4 v3, 0x6

    if-eq v0, v3, :cond_27

    const/4 v3, 0x4

    if-eq v0, v3, :cond_27

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    :cond_27
    move v1, v2

    goto :goto_c
.end method

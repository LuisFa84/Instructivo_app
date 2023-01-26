.class public Lgnu/xquery/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# static fields
.field public static final textOrElement:Lgnu/kawa/xml/NodeType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 163
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "element-or-text"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "iarg"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lgnu/xquery/util/SequenceUtils;->isZeroOrOne(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    return-object p0

    .line 23
    :cond_7
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "xs:item()?"

    invoke-direct {v0, p1, p2, p0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .registers 24
    .param p0, "seq1"    # Lgnu/xml/NodeTree;
    .param p1, "ipos1"    # I
    .param p2, "seq2"    # Lgnu/xml/NodeTree;
    .param p3, "ipos2"    # I
    .param p4, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 188
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v7

    .line 189
    .local v7, "kind1":I
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v8

    .line 190
    .local v8, "kind2":I
    packed-switch v7, :pswitch_data_f0

    .line 244
    :pswitch_b
    if-eq v7, v8, :cond_e1

    .line 245
    const/16 v17, 0x0

    .line 246
    :goto_f
    return v17

    .line 193
    :pswitch_10
    if-eq v7, v8, :cond_15

    .line 194
    const/16 v17, 0x0

    goto :goto_f

    .line 196
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "loc1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "loc2":Ljava/lang/String;
    if-eq v9, v10, :cond_22

    .line 199
    const/16 v17, 0x0

    goto :goto_f

    .line 200
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, "ns1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, "ns2":Ljava/lang/String;
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_31

    .line 203
    const/16 v17, 0x0

    goto :goto_f

    .line 204
    :cond_31
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v3

    .line 205
    .local v3, "attr1":I
    const/4 v12, 0x0

    .line 208
    .local v12, "nattr1":I
    :goto_36
    if-eqz v3, :cond_46

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v17

    const/16 v18, 0x23

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4f

    .line 223
    :cond_46
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->getAttributeCount(I)I

    move-result v13

    .line 224
    .local v13, "nattr2":I
    if-eq v12, v13, :cond_88

    .line 225
    const/16 v17, 0x0

    goto :goto_f

    .line 211
    .end local v13    # "nattr2":I
    :cond_4f
    add-int/lit8 v12, v12, 0x1

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v11

    .line 213
    .local v11, "local":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, "ns":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v1, v14, v11}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 215
    .local v4, "attr2":I
    if-nez v4, :cond_6a

    .line 216
    const/16 v17, 0x0

    goto :goto_f

    .line 217
    :cond_6a
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "aval1":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "aval2":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-static {v5, v6, v0}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v17

    if-nez v17, :cond_81

    .line 220
    const/16 v17, 0x0

    goto :goto_f

    .line 221
    :cond_81
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v3

    .line 222
    goto :goto_36

    .line 228
    .end local v3    # "attr1":I
    .end local v4    # "attr2":I
    .end local v5    # "aval1":Ljava/lang/String;
    .end local v6    # "aval2":Ljava/lang/String;
    .end local v9    # "loc1":Ljava/lang/String;
    .end local v10    # "loc2":Ljava/lang/String;
    .end local v11    # "local":Ljava/lang/String;
    .end local v12    # "nattr1":I
    .end local v14    # "ns":Ljava/lang/String;
    .end local v15    # "ns1":Ljava/lang/String;
    .end local v16    # "ns2":Ljava/lang/String;
    :cond_88
    :pswitch_88
    invoke-static/range {p0 .. p4}, Lgnu/xquery/util/SequenceUtils;->deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v17

    goto :goto_f

    .line 230
    :pswitch_8d
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a9

    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_ad

    .line 232
    :cond_a9
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 233
    :cond_ad
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v17

    goto/16 :goto_f

    .line 237
    :pswitch_c1
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d3

    .line 238
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 239
    :cond_d3
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    goto/16 :goto_f

    .line 246
    :cond_e1
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    goto/16 :goto_f

    .line 190
    nop

    :pswitch_data_f0
    .packed-switch 0x21
        :pswitch_10
        :pswitch_88
        :pswitch_8d
        :pswitch_b
        :pswitch_c1
    .end packed-switch
.end method

.method public static deepEqual(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .registers 24
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 263
    const/16 v17, 0x1

    .line 315
    :goto_8
    return v17

    .line 264
    :cond_9
    if-eqz p0, :cond_13

    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_23

    .line 265
    :cond_13
    if-eqz p1, :cond_1d

    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_20

    :cond_1d
    const/16 v17, 0x1

    goto :goto_8

    :cond_20
    const/16 v17, 0x0

    goto :goto_8

    .line 266
    :cond_23
    if-eqz p1, :cond_2d

    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_30

    .line 267
    :cond_2d
    const/16 v17, 0x0

    goto :goto_8

    .line 268
    :cond_30
    const/4 v7, 0x1

    .local v7, "ipos1":I
    const/4 v8, 0x1

    .line 269
    .local v8, "ipos2":I
    move-object/from16 v0, p0

    instance-of v9, v0, Lgnu/mapping/Values;

    .line 270
    .local v9, "is1seq":Z
    move-object/from16 v0, p1

    instance-of v10, v0, Lgnu/mapping/Values;

    .line 271
    .local v10, "is2seq":Z
    if-eqz v9, :cond_6e

    move-object/from16 v17, p0

    check-cast v17, Lgnu/mapping/Values;

    move-object/from16 v15, v17

    .line 272
    .local v15, "vals1":Lgnu/mapping/Values;
    :goto_42
    if-eqz v10, :cond_70

    move-object/from16 v17, p1

    check-cast v17, Lgnu/mapping/Values;

    move-object/from16 v16, v17

    .line 273
    .local v16, "vals2":Lgnu/mapping/Values;
    :goto_4a
    const/4 v6, 0x1

    .line 276
    .local v6, "first":Z
    :cond_4b
    :goto_4b
    if-eqz v9, :cond_57

    .line 278
    if-eqz v6, :cond_53

    .line 279
    invoke-virtual {v15}, Lgnu/mapping/Values;->startPos()I

    move-result v7

    .line 280
    :cond_53
    invoke-virtual {v15, v7}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    .line 282
    :cond_57
    if-eqz v10, :cond_65

    .line 284
    if-eqz v6, :cond_5f

    .line 285
    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/Values;->startPos()I

    move-result v8

    .line 286
    :cond_5f
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v8

    .line 288
    :cond_65
    if-eqz v7, :cond_69

    if-nez v8, :cond_76

    .line 289
    :cond_69
    if-ne v7, v8, :cond_73

    const/16 v17, 0x1

    goto :goto_8

    .line 271
    .end local v6    # "first":Z
    .end local v15    # "vals1":Lgnu/mapping/Values;
    .end local v16    # "vals2":Lgnu/mapping/Values;
    :cond_6e
    const/4 v15, 0x0

    goto :goto_42

    .line 272
    .restart local v15    # "vals1":Lgnu/mapping/Values;
    :cond_70
    const/16 v16, 0x0

    goto :goto_4a

    .line 289
    .restart local v6    # "first":Z
    .restart local v16    # "vals2":Lgnu/mapping/Values;
    :cond_73
    const/16 v17, 0x0

    goto :goto_8

    .line 290
    :cond_76
    if-eqz v9, :cond_9a

    invoke-virtual {v15, v7}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v11

    .line 291
    .local v11, "item1":Ljava/lang/Object;
    :goto_7c
    if-eqz v10, :cond_9d

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v12

    .line 293
    .local v12, "item2":Ljava/lang/Object;
    :goto_84
    instance-of v0, v11, Lgnu/kawa/xml/KNode;

    move/from16 v17, v0

    if-nez v17, :cond_a5

    instance-of v0, v12, Lgnu/kawa/xml/KNode;

    move/from16 v17, v0

    if-nez v17, :cond_a5

    .line 297
    :try_start_90
    invoke-static/range {p0 .. p2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_93} :catch_a0

    move-result v17

    if-nez v17, :cond_e3

    .line 298
    const/16 v17, 0x0

    goto/16 :goto_8

    .end local v11    # "item1":Ljava/lang/Object;
    .end local v12    # "item2":Ljava/lang/Object;
    :cond_9a
    move-object/from16 v11, p0

    .line 290
    goto :goto_7c

    .restart local v11    # "item1":Ljava/lang/Object;
    :cond_9d
    move-object/from16 v12, p1

    .line 291
    goto :goto_84

    .line 300
    .restart local v12    # "item2":Ljava/lang/Object;
    :catch_a0
    move-exception v5

    .line 302
    .local v5, "ex":Ljava/lang/Throwable;
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 305
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a5
    instance-of v0, v11, Lgnu/kawa/xml/KNode;

    move/from16 v17, v0

    if-eqz v17, :cond_df

    instance-of v0, v12, Lgnu/kawa/xml/KNode;

    move/from16 v17, v0

    if-eqz v17, :cond_df

    move-object v13, v11

    .line 307
    check-cast v13, Lgnu/kawa/xml/KNode;

    .local v13, "node1":Lgnu/kawa/xml/KNode;
    move-object v14, v12

    .line 308
    check-cast v14, Lgnu/kawa/xml/KNode;

    .line 309
    .local v14, "node2":Lgnu/kawa/xml/KNode;
    iget-object v0, v13, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/xml/NodeTree;

    iget v0, v13, Lgnu/kawa/xml/KNode;->ipos:I

    move/from16 v19, v0

    iget-object v0, v14, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    move-object/from16 v18, v0

    check-cast v18, Lgnu/xml/NodeTree;

    iget v0, v14, Lgnu/kawa/xml/KNode;->ipos:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v17

    if-nez v17, :cond_e3

    .line 312
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 315
    .end local v13    # "node1":Lgnu/kawa/xml/KNode;
    .end local v14    # "node2":Lgnu/kawa/xml/KNode;
    :cond_df
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 317
    :cond_e3
    if-eqz v6, :cond_4b

    .line 319
    const/4 v6, 0x0

    .line 320
    if-nez v9, :cond_e9

    .line 321
    const/4 v7, 0x0

    .line 322
    :cond_e9
    if-nez v10, :cond_4b

    .line 323
    const/4 v8, 0x0

    goto/16 :goto_4b
.end method

.method public static deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .registers 11
    .param p0, "seq1"    # Lgnu/xml/NodeTree;
    .param p1, "ipos1"    # I
    .param p2, "seq2"    # Lgnu/xml/NodeTree;
    .param p3, "ipos2"    # I
    .param p4, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 170
    sget-object v2, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    .line 171
    .local v2, "filter":Lgnu/kawa/xml/NodeType;
    invoke-virtual {p0, p1, v2}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v0

    .line 172
    .local v0, "child1":I
    invoke-virtual {p2, p3, v2}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v1

    .line 175
    .local v1, "child2":I
    :goto_c
    if-eqz v0, :cond_10

    if-nez v1, :cond_14

    .line 176
    :cond_10
    if-ne v0, v1, :cond_13

    const/4 v3, 0x1

    .line 178
    :cond_13
    return v3

    .line 177
    :cond_14
    invoke-static {p0, v0, p2, v1, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 179
    invoke-virtual {p0, v0, v2, v5, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v0

    .line 180
    invoke-virtual {p2, v1, v2, v5, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    goto :goto_c
.end method

.method public static deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .registers 4
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;

    .prologue
    .line 254
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    const/4 v0, 0x1

    .line 256
    :goto_d
    return v0

    :cond_e
    const/16 v0, 0x8

    invoke-static {v0, p0, p1, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    goto :goto_d
.end method

.method public static exactlyOne(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_a

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 43
    :cond_a
    return-object p0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 53
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_c

    check-cast p0, Lgnu/mapping/Values;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static indexOf$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .registers 10
    .param p0, "seqParam"    # Ljava/lang/Object;
    .param p1, "srchParam"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/16 v5, 0x48

    .line 147
    iget-object v2, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 148
    .local v2, "out":Lgnu/lists/Consumer;
    instance-of v4, p0, Lgnu/mapping/Values;

    if-eqz v4, :cond_26

    move-object v3, p0

    .line 150
    check-cast v3, Lgnu/mapping/Values;

    .line 151
    .local v3, "vals":Lgnu/mapping/Values;
    invoke-virtual {v3}, Lgnu/mapping/Values;->startPos()I

    move-result v1

    .line 152
    .local v1, "ipos":I
    const/4 v0, 0x1

    .line 153
    .local v0, "i":I
    :goto_10
    invoke-virtual {v3, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_30

    .line 154
    invoke-virtual {v3, v1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 157
    invoke-interface {v2, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 153
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 159
    .end local v0    # "i":I
    .end local v1    # "ipos":I
    .end local v3    # "vals":Lgnu/mapping/Values;
    :cond_26
    invoke-static {v5, p0, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 160
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 161
    :cond_30
    return-void
.end method

.method public static insertBefore$X(Ljava/lang/Object;JLjava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 16
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "position"    # J
    .param p3, "inserts"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 59
    iget-object v4, p4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    .local v4, "out":Lgnu/lists/Consumer;
    const/4 v6, 0x0

    .line 61
    .local v6, "written":Z
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-gtz v7, :cond_b

    .line 62
    const-wide/16 p1, 0x1

    .line 63
    :cond_b
    instance-of v7, p0, Lgnu/mapping/Values;

    if-eqz v7, :cond_30

    move-object v5, p0

    .line 65
    check-cast v5, Lgnu/mapping/Values;

    .line 66
    .local v5, "values":Lgnu/mapping/Values;
    const/4 v2, 0x0

    .line 67
    .local v2, "ipos":I
    const-wide/16 v0, 0x0

    .line 70
    .local v0, "i":J
    :goto_15
    invoke-virtual {v5, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    .line 71
    .local v3, "next":I
    if-nez v3, :cond_1d

    if-eqz v6, :cond_24

    :cond_1d
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    cmp-long v7, v0, p1

    if-nez v7, :cond_28

    .line 73
    :cond_24
    invoke-static {p3, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    const/4 v6, 0x1

    .line 76
    :cond_28
    if-nez v3, :cond_2b

    .line 90
    .end local v0    # "i":J
    .end local v2    # "ipos":I
    .end local v3    # "next":I
    .end local v5    # "values":Lgnu/mapping/Values;
    :cond_2a
    :goto_2a
    return-void

    .line 78
    .restart local v0    # "i":J
    .restart local v2    # "ipos":I
    .restart local v3    # "next":I
    .restart local v5    # "values":Lgnu/mapping/Values;
    :cond_2b
    invoke-virtual {v5, v2, v3, v4}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 79
    move v2, v3

    .line 80
    goto :goto_15

    .line 84
    .end local v0    # "i":J
    .end local v2    # "ipos":I
    .end local v3    # "next":I
    .end local v5    # "values":Lgnu/mapping/Values;
    :cond_30
    const-wide/16 v8, 0x1

    cmp-long v7, p1, v8

    if-gtz v7, :cond_39

    .line 85
    invoke-static {p3, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    :cond_39
    invoke-interface {v4, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 87
    const-wide/16 v8, 0x1

    cmp-long v7, p1, v8

    if-lez v7, :cond_2a

    .line 88
    invoke-static {p3, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_2a
.end method

.method public static isEmptySequence(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_e

    check-cast p0, Lgnu/mapping/Values;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isZeroOrOne(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_c

    check-cast p0, Lgnu/mapping/Values;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static oneOrMore(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_13

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_13
    return-object p0
.end method

.method public static remove$X(Ljava/lang/Object;JLgnu/mapping/CallContext;)V
    .registers 15
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "position"    # J
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const-wide/16 v8, 0x1

    .line 94
    iget-object v4, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 95
    .local v4, "out":Lgnu/lists/Consumer;
    instance-of v6, p0, Lgnu/mapping/Values;

    if-eqz v6, :cond_1f

    move-object v5, p0

    .line 97
    check-cast v5, Lgnu/mapping/Values;

    .line 98
    .local v5, "values":Lgnu/mapping/Values;
    const/4 v2, 0x0

    .line 99
    .local v2, "ipos":I
    const-wide/16 v0, 0x0

    .line 102
    .local v0, "i":J
    :goto_e
    invoke-virtual {v5, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    .line 103
    .local v3, "next":I
    if-nez v3, :cond_15

    .line 112
    .end local v0    # "i":J
    .end local v2    # "ipos":I
    .end local v3    # "next":I
    .end local v5    # "values":Lgnu/mapping/Values;
    :cond_14
    :goto_14
    return-void

    .line 105
    .restart local v0    # "i":J
    .restart local v2    # "ipos":I
    .restart local v3    # "next":I
    .restart local v5    # "values":Lgnu/mapping/Values;
    :cond_15
    add-long/2addr v0, v8

    cmp-long v6, v0, p1

    if-eqz v6, :cond_1d

    .line 106
    invoke-virtual {v5, v2, v3, v4}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 107
    :cond_1d
    move v2, v3

    .line 108
    goto :goto_e

    .line 110
    .end local v0    # "i":J
    .end local v2    # "ipos":I
    .end local v3    # "next":I
    .end local v5    # "values":Lgnu/mapping/Values;
    :cond_1f
    cmp-long v6, p1, v8

    if-eqz v6, :cond_14

    .line 111
    invoke-interface {v4, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static reverse$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 12
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    const/4 v9, 0x0

    .line 117
    iget-object v4, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 118
    .local v4, "out":Lgnu/lists/Consumer;
    instance-of v8, p0, Lgnu/mapping/Values;

    if-nez v8, :cond_b

    .line 120
    invoke-interface {v4, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 142
    :cond_a
    return-void

    :cond_b
    move-object v7, p0

    .line 123
    check-cast v7, Lgnu/mapping/Values;

    .line 124
    .local v7, "vals":Lgnu/mapping/Values;
    const/4 v1, 0x0

    .line 125
    .local v1, "ipos":I
    const/16 v8, 0x64

    new-array v5, v8, [I

    .line 126
    .local v5, "poses":[I
    const/4 v2, 0x0

    .line 129
    .local v2, "n":I
    :goto_14
    array-length v8, v5

    if-lt v2, v8, :cond_1f

    .line 131
    mul-int/lit8 v8, v2, 0x2

    new-array v6, v8, [I

    .line 132
    .local v6, "t":[I
    invoke-static {v5, v9, v6, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v5, v6

    .line 135
    .end local v6    # "t":[I
    :cond_1f
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "n":I
    .local v3, "n":I
    aput v1, v5, v2

    .line 136
    invoke-virtual {v7, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    .line 137
    if-nez v1, :cond_39

    .line 140
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_2b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_a

    .line 141
    aget v8, v5, v0

    add-int/lit8 v9, v0, 0x1

    aget v9, v5, v9

    invoke-virtual {v7, v8, v9, v4}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    goto :goto_2b

    .end local v0    # "i":I
    :cond_39
    move v2, v3

    .end local v3    # "n":I
    .restart local v2    # "n":I
    goto :goto_14
.end method

.method public static zeroOrOne(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 28
    const-string v0, "zero-or-one"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

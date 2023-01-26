.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsignedOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private huuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->maybeForceBuilderInitialization()V

    .line 452
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 3
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->maybeForceBuilderInitialization()V

    .line 458
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 439
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .prologue
    .line 461
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$400()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    :cond_6
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 537
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 3

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    .line 486
    .local v0, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 487
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 489
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 7

    .prologue
    .line 493
    new-instance v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 494
    .local v1, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 495
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 496
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 497
    or-int/lit8 v2, v2, 0x1

    .line 499
    :cond_10
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$602(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 501
    or-int/lit8 v2, v2, 0x2

    .line 503
    :cond_1c
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$702(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;J)J

    .line 504
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 505
    or-int/lit8 v2, v2, 0x4

    .line 507
    :cond_28
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;J)J

    .line 508
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$902(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;I)I

    .line 509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onBuilt()V

    .line 510
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 465
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 467
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 468
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    .line 469
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 470
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    .line 471
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 472
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 523
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGeneration()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3

    .prologue
    .line 763
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 764
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    .line 765
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 766
    return-object p0
.end method

.method public clearHuuid()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 2

    .prologue
    .line 666
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 667
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 669
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3

    .prologue
    .line 731
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    .line 733
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 734
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 2

    .prologue
    .line 514
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .registers 2

    .prologue
    .line 481
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    .prologue
    .line 477
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .registers 3

    .prologue
    .line 748
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    return-wide v0
.end method

.method public getHuuid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 608
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 609
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_16

    move-object v0, v1

    .line 610
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 612
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 614
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 618
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v1    # "ref":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object v2

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_16
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_15
.end method

.method public getHuuidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 630
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 631
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 632
    check-cast v1, Ljava/lang/String;

    .line 633
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 635
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 638
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 708
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .registers 3

    .prologue
    .line 742
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHuuid()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 598
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 698
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 444
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 444
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 567
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .prologue
    .line 549
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 563
    :goto_6
    return-object p0

    .line 550
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasHuuid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 551
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 552
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$600(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 555
    :cond_1c
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 556
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 558
    :cond_29
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 559
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->getGeneration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 561
    :cond_36
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->access$1000(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 562
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    const/4 v2, 0x0

    .line 576
    .local v2, "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    :try_start_1
    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-object v2, v0
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 581
    if-eqz v2, :cond_10

    .line 582
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    .line 585
    :cond_10
    return-object p0

    .line 577
    :catch_11
    move-exception v1

    .line 578
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-object v2, v0

    .line 579
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 581
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1f
    move-exception v3

    if-eqz v2, :cond_25

    .line 582
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    :cond_25
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 540
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    if-eqz v0, :cond_b

    .line 541
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object p0

    .line 544
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    :goto_a
    return-object p0

    .line 543
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_a
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 519
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 754
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 755
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->generation_:J

    .line 756
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 757
    return-object p0
.end method

.method public setHuuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 650
    if-nez p1, :cond_8

    .line 651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 653
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 654
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 656
    return-object p0
.end method

.method public setHuuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 680
    if-nez p1, :cond_8

    .line 681
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 683
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 684
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 686
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 532
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 5

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 5

    .prologue
    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 770
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 718
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->bitField0_:I

    .line 719
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->version_:J

    .line 720
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$Builder;->onChanged()V

    .line 721
    return-object p0
.end method

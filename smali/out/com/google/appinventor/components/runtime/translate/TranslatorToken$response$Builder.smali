.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private status_:J

.field private translated_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 3375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3514
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3376
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 3377
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 3358
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 3381
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3514
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3382
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 3383
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 3358
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 3364
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .prologue
    .line 3386
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$4500()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3388
    :cond_6
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3462
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 3

    .prologue
    .line 3410
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    .line 3411
    .local v0, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3412
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3414
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 7

    .prologue
    .line 3418
    new-instance v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 3419
    .local v1, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3420
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3421
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3422
    or-int/lit8 v2, v2, 0x1

    .line 3424
    :cond_10
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$4702(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)J

    .line 3425
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3426
    or-int/lit8 v2, v2, 0x2

    .line 3428
    :cond_1c
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$4802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)J

    .line 3429
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3430
    or-int/lit8 v2, v2, 0x4

    .line 3432
    :cond_28
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$4902(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3433
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$5002(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;I)I

    .line 3434
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onBuilt()V

    .line 3435
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3

    .prologue
    .line 3390
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 3391
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3392
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3393
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    .line 3394
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3395
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3396
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3397
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 3448
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 3452
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearStatus()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3

    .prologue
    .line 3588
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    .line 3590
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3591
    return-object p0
.end method

.method public clearTranslated()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 2

    .prologue
    .line 3651
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3652
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3653
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3654
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3

    .prologue
    .line 3540
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3541
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3542
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3543
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 2

    .prologue
    .line 3439
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2

    .prologue
    .line 3406
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    .prologue
    .line 3402
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()J
    .registers 3

    .prologue
    .line 3565
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    return-wide v0
.end method

.method public getTranslated()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3605
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3606
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_16

    move-object v0, v1

    .line 3607
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3609
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3610
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3611
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3615
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

.method public getTranslatedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3623
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3624
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3625
    check-cast v1, Ljava/lang/String;

    .line 3626
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3628
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3631
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
    .line 3525
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 3555
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

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

.method public hasTranslated()Z
    .registers 3

    .prologue
    .line 3599
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3519
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 3369
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$4200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3370
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3369
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3492
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .prologue
    .line 3474
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3488
    :goto_6
    return-object p0

    .line 3475
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3476
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3478
    :cond_14
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3479
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setStatus(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3481
    :cond_21
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3482
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3483
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$4900(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3484
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3486
    :cond_36
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->access$5100(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3487
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3499
    const/4 v2, 0x0

    .line 3501
    .local v2, "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    :try_start_1
    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-object v2, v0
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 3506
    if-eqz v2, :cond_10

    .line 3507
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3510
    :cond_10
    return-object p0

    .line 3502
    :catch_11
    move-exception v1

    .line 3503
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-object v2, v0

    .line 3504
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 3506
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1f
    move-exception v3

    if-eqz v2, :cond_25

    .line 3507
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    :cond_25
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3465
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    if-eqz v0, :cond_b

    .line 3466
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p0

    .line 3469
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    :goto_a
    return-object p0

    .line 3468
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
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
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 3676
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3444
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 3358
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 3457
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 5

    .prologue
    .line 3358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 5

    .prologue
    .line 3358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setStatus(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 3575
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3576
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->status_:J

    .line 3577
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3578
    return-object p0
.end method

.method public setTranslated(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3639
    if-nez p1, :cond_8

    .line 3640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3642
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3643
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3644
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3645
    return-object p0
.end method

.method public setTranslatedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3661
    if-nez p1, :cond_8

    .line 3662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3664
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3665
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->translated_:Ljava/lang/Object;

    .line 3666
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3667
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 3671
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 3358
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 3531
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->bitField0_:I

    .line 3532
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->version_:J

    .line 3533
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->onChanged()V

    .line 3534
    return-object p0
.end method

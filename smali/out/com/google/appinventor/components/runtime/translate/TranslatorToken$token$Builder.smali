.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder",
        "<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private keyid_:J

.field private signature_:Lcom/google/protobuf/ByteString;

.field private unsigned_:Lcom/google/protobuf/ByteString;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x1

    .line 1271
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1426
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1458
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1522
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1557
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1272
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->maybeForceBuilderInitialization()V

    .line 1273
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    const-wide/16 v0, 0x1

    .line 1277
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1426
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1458
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1522
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1557
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1278
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->maybeForceBuilderInitialization()V

    .line 1279
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 1260
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 2

    .prologue
    .line 1282
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1284
    :cond_6
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1370
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 3

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    .line 1311
    .local v0, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1312
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1314
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 7

    .prologue
    .line 1318
    new-instance v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 1319
    .local v1, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1320
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1321
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1322
    or-int/lit8 v2, v2, 0x1

    .line 1324
    :cond_10
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$1802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)J

    .line 1325
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1326
    or-int/lit8 v2, v2, 0x2

    .line 1328
    :cond_1c
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$1902(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)J

    .line 1329
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1330
    or-int/lit8 v2, v2, 0x4

    .line 1332
    :cond_28
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$2002(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)J

    .line 1333
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1334
    or-int/lit8 v2, v2, 0x8

    .line 1336
    :cond_35
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$2102(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1337
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1338
    or-int/lit8 v2, v2, 0x10

    .line 1340
    :cond_42
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$2202(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1341
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$2302(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;I)I

    .line 1342
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onBuilt()V

    .line 1343
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x1

    .line 1286
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 1287
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1288
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1289
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1290
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    .line 1292
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1293
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1294
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1295
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1296
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1297
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 1356
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearGeneration()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3

    .prologue
    .line 1516
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    .line 1518
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1519
    return-object p0
.end method

.method public clearKeyid()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3

    .prologue
    .line 1484
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1485
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1486
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1487
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .prologue
    .line 1360
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSignature()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 2

    .prologue
    .line 1586
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1587
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1588
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1589
    return-object p0
.end method

.method public clearUnsigned()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 2

    .prologue
    .line 1551
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1552
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1554
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3

    .prologue
    .line 1452
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1453
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1454
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1455
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 2

    .prologue
    .line 1347
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2

    .prologue
    .line 1306
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    .prologue
    .line 1302
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .registers 3

    .prologue
    .line 1501
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    return-wide v0
.end method

.method public getKeyid()J
    .registers 3

    .prologue
    .line 1469
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    return-wide v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUnsigned()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 1437
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .registers 3

    .prologue
    .line 1495
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

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

.method public hasKeyid()Z
    .registers 3

    .prologue
    .line 1463
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

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

.method public hasSignature()Z
    .registers 3

    .prologue
    .line 1562
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUnsigned()Z
    .registers 3

    .prologue
    .line 1527
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1431
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

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
    .line 1265
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1266
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 1265
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1404
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .prologue
    .line 1382
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1400
    :goto_6
    return-object p0

    .line 1383
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1384
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1386
    :cond_14
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1387
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setKeyid(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1389
    :cond_21
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1390
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1392
    :cond_2e
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1393
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setUnsigned(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1395
    :cond_3b
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1396
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1398
    :cond_48
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->access$2400(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1399
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1411
    const/4 v2, 0x0

    .line 1413
    .local v2, "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    :try_start_1
    sget-object v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-object v2, v0
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f

    .line 1418
    if-eqz v2, :cond_10

    .line 1419
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1422
    :cond_10
    return-object p0

    .line 1414
    :catch_11
    move-exception v1

    .line 1415
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-object v2, v0

    .line 1416
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1f

    .line 1418
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1f
    move-exception v3

    if-eqz v2, :cond_25

    .line 1419
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    :cond_25
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1373
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-eqz v0, :cond_b

    .line 1374
    check-cast p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p0

    .line 1377
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    :goto_a
    return-object p0

    .line 1376
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
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
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 1598
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1352
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 4

    .prologue
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 4

    .prologue
    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setGeneration(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 1507
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1508
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->generation_:J

    .line 1509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1510
    return-object p0
.end method

.method public setKeyid(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 1475
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1476
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->keyid_:J

    .line 1477
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1478
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1365
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 5

    .prologue
    .line 1254
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .registers 5

    .prologue
    .line 1254
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1574
    if-nez p1, :cond_8

    .line 1575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1577
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1578
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 1579
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1580
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 1593
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 1254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUnsigned(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 3
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1539
    if-nez p1, :cond_8

    .line 1540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1542
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1543
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1545
    return-object p0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 1443
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->bitField0_:I

    .line 1444
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->version_:J

    .line 1445
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->onChanged()V

    .line 1446
    return-object p0
.end method

.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TRANSLATED_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private status_:J

.field private volatile translated_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3686
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3694
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 3021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 3176
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3022
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    .line 3023
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    .line 3024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3025
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3036
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>()V

    .line 3037
    const/4 v3, 0x0

    .line 3039
    .local v3, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 3041
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 3042
    .local v1, "done":Z
    :cond_9
    :goto_9
    if-nez v1, :cond_5f

    .line 3043
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 3044
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_6a

    .line 3049
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3051
    const/4 v1, 0x1

    goto :goto_9

    .line 3046
    :sswitch_1a
    const/4 v1, 0x1

    .line 3047
    goto :goto_9

    .line 3056
    :sswitch_1c
    iget v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    .line 3057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J
    :try_end_28
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_47
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    goto :goto_9

    .line 3073
    .end local v4    # "tag":I
    :catch_29
    move-exception v2

    .line 3074
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2a
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    .line 3079
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_2f
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3080
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->makeExtensionsImmutable()V

    throw v6

    .line 3061
    .restart local v4    # "tag":I
    :sswitch_3a
    :try_start_3a
    iget v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    .line 3062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J
    :try_end_46
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3a .. :try_end_46} :catch_29
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_46} :catch_47
    .catchall {:try_start_3a .. :try_end_46} :catchall_2f

    goto :goto_9

    .line 3075
    .end local v4    # "tag":I
    :catch_47
    move-exception v2

    .line 3076
    .local v2, "e":Ljava/io/IOException;
    :try_start_48
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3077
    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_2f

    .line 3066
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_52
    :try_start_52
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3067
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    .line 3068
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;
    :try_end_5e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_52 .. :try_end_5e} :catch_29
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5e} :catch_47
    .catchall {:try_start_52 .. :try_end_5e} :catchall_2f

    goto :goto_9

    .line 3079
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v4    # "tag":I
    :cond_5f
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3080
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->makeExtensionsImmutable()V

    .line 3082
    return-void

    .line 3044
    nop

    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_1c
        0x10 -> :sswitch_3a
        0x1a -> :sswitch_52
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3013
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3019
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 3176
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3020
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 3013
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4500()Z
    .registers 1

    .prologue
    .line 3013
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .param p1, "x1"    # J

    .prologue
    .line 3013
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    return-wide p1
.end method

.method static synthetic access$4802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .param p1, "x1"    # J

    .prologue
    .line 3013
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    return-wide p1
.end method

.method static synthetic access$4900(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3013
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .param p1, "x1"    # I

    .prologue
    .line 3013
    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    return p1
.end method

.method static synthetic access$5100(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 1

    .prologue
    .line 3690
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 3085
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 1

    .prologue
    .line 3339
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .prologue
    .line 3342
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3313
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3314
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3313
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3320
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3321
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3320
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3281
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3287
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3326
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3327
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3326
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3333
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3334
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3333
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3301
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3302
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3301
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3308
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3309
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3308
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3291
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3297
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3704
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3224
    if-ne p1, p0, :cond_5

    .line 3249
    :goto_4
    return v2

    .line 3227
    :cond_5
    instance-of v4, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    if-nez v4, :cond_e

    .line 3228
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_e
    move-object v0, p1

    .line 3230
    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3232
    .local v0, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    const/4 v1, 0x1

    .line 3233
    .local v1, "result":Z
    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_8a

    move v1, v2

    .line 3234
    :goto_1f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3235
    if-eqz v1, :cond_8c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v4

    .line 3236
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_8c

    move v1, v2

    .line 3238
    :cond_34
    :goto_34
    if-eqz v1, :cond_8e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v5

    if-ne v4, v5, :cond_8e

    move v1, v2

    .line 3239
    :goto_41
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3240
    if-eqz v1, :cond_90

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v4

    .line 3241
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_90

    move v1, v2

    .line 3243
    :cond_56
    :goto_56
    if-eqz v1, :cond_92

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v5

    if-ne v4, v5, :cond_92

    move v1, v2

    .line 3244
    :goto_63
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 3245
    if-eqz v1, :cond_94

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v4

    .line 3246
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    move v1, v2

    .line 3248
    :cond_7a
    :goto_7a
    if-eqz v1, :cond_96

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    move v1, v2

    :goto_87
    move v2, v1

    .line 3249
    goto/16 :goto_4

    :cond_8a
    move v1, v3

    .line 3233
    goto :goto_1f

    :cond_8c
    move v1, v3

    .line 3236
    goto :goto_34

    :cond_8e
    move v1, v3

    .line 3238
    goto :goto_41

    :cond_90
    move v1, v3

    .line 3241
    goto :goto_56

    :cond_92
    move v1, v3

    .line 3243
    goto :goto_63

    :cond_94
    move v1, v3

    .line 3246
    goto :goto_7a

    :cond_96
    move v1, v3

    .line 3248
    goto :goto_87
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .registers 2

    .prologue
    .line 3713
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3709
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3201
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedSize:I

    .line 3202
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3218
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_8
    return v1

    .line 3204
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_9
    const/4 v0, 0x0

    .line 3205
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 3206
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    .line 3207
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3209
    :cond_17
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 3210
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    .line 3211
    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3213
    :cond_24
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 3214
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3216
    :cond_33
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 3217
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedSize:I

    move v1, v0

    .line 3218
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_8
.end method

.method public getStatus()J
    .registers 3

    .prologue
    .line 3131
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    return-wide v0
.end method

.method public getTranslated()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3146
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3147
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3148
    check-cast v1, Ljava/lang/String;

    .line 3156
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3150
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3152
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3153
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3154
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3156
    goto :goto_8
.end method

.method public getTranslatedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3164
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3165
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3166
    check-cast v1, Ljava/lang/String;

    .line 3167
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3169
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3172
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

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 3108
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 3121
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

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
    .line 3140
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

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

    .line 3102
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 3254
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedHashCode:I

    if-eqz v1, :cond_7

    .line 3255
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedHashCode:I

    .line 3275
    :goto_6
    return v0

    .line 3257
    :cond_7
    const/16 v0, 0x29

    .line 3258
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 3259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3260
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 3261
    mul-int/lit8 v1, v0, 0x35

    .line 3262
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v2

    .line 3261
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 3264
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 3265
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 3266
    mul-int/lit8 v1, v0, 0x35

    .line 3267
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v2

    .line 3266
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 3269
    :cond_3f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 3270
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 3271
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 3273
    :cond_55
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 3274
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedHashCode:I

    goto :goto_6
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 3090
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$4200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3091
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3090
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3178
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3179
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_6

    .line 3183
    :goto_5
    return v1

    .line 3180
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    .line 3182
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    goto :goto_5
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 2

    .prologue
    .line 3337
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 3352
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 3353
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 3013
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3345
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 3346
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3188
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_d

    .line 3189
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3191
    :cond_d
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_18

    .line 3192
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3194
    :cond_18
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 3195
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3197
    :cond_25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3198
    return-void
.end method

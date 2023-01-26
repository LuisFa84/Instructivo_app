.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

.field public static final LANGUAGECODE_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SOURCELANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final TARGETLANGUAGE_FIELD_NUMBER:I = 0x6

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final TOTRANSLATE_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile languagecode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile sourcelanguage_:Ljava/lang/Object;

.field private volatile targetlanguage_:Ljava/lang/Object;

.field private token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field private volatile totranslate_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2934
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2942
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 1733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 2040
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 1734
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    .line 1735
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 1739
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 13
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1750
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>()V

    .line 1751
    const/4 v3, 0x0

    .line 1753
    .local v3, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 1755
    .local v6, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 1756
    .local v1, "done":Z
    :cond_9
    :goto_9
    if-nez v1, :cond_a8

    .line 1757
    :try_start_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 1758
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_b2

    .line 1763
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1765
    const/4 v1, 0x1

    goto :goto_9

    .line 1760
    :sswitch_1a
    const/4 v1, 0x1

    .line 1761
    goto :goto_9

    .line 1770
    :sswitch_1c
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1771
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J
    :try_end_28
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_b .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_66
    .catchall {:try_start_b .. :try_end_28} :catchall_2f

    goto :goto_9

    .line 1813
    .end local v5    # "tag":I
    :catch_29
    move-exception v2

    .line 1814
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2a
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    .line 1819
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_2f
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->makeExtensionsImmutable()V

    throw v7

    .line 1775
    .restart local v5    # "tag":I
    :sswitch_3a
    const/4 v4, 0x0

    .line 1776
    .local v4, "subBuilder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    :try_start_3b
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_48

    .line 1777
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v4

    .line 1779
    :cond_48
    sget-object v7, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1780
    if-eqz v4, :cond_5f

    .line 1781
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 1782
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1784
    :cond_5f
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I
    :try_end_65
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3b .. :try_end_65} :catch_29
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_65} :catch_66
    .catchall {:try_start_3b .. :try_end_65} :catchall_2f

    goto :goto_9

    .line 1815
    .end local v4    # "subBuilder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .end local v5    # "tag":I
    :catch_66
    move-exception v2

    .line 1816
    .local v2, "e":Ljava/io/IOException;
    :try_start_67
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1817
    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_2f

    .line 1788
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_71
    :try_start_71
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1789
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1790
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    goto :goto_9

    .line 1794
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1795
    .restart local v0    # "bs":Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1796
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    goto/16 :goto_9

    .line 1800
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_8c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1801
    .restart local v0    # "bs":Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1802
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    goto/16 :goto_9

    .line 1806
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_9a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1807
    .restart local v0    # "bs":Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    .line 1808
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;
    :try_end_a6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_71 .. :try_end_a6} :catch_29
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_a6} :catch_66
    .catchall {:try_start_71 .. :try_end_a6} :catchall_2f

    goto/16 :goto_9

    .line 1819
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v5    # "tag":I
    :cond_a8
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1820
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->makeExtensionsImmutable()V

    .line 1822
    return-void

    .line 1758
    :sswitch_data_b2
    .sparse-switch
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_1c
        0x12 -> :sswitch_3a
        0x1a -> :sswitch_71
        0x22 -> :sswitch_7e
        0x2a -> :sswitch_8c
        0x32 -> :sswitch_9a
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
    .line 1725
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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
    .line 1731
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 2040
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 1732
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3000()Z
    .registers 1

    .prologue
    .line 1725
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;J)J
    .registers 4
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # J

    .prologue
    .line 1725
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    return-wide p1
.end method

.method static synthetic access$3302(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .param p1, "x1"    # I

    .prologue
    .line 1725
    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    return p1
.end method

.method static synthetic access$3900(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 2
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 1

    .prologue
    .line 2938
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    .prologue
    .line 1825
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 1

    .prologue
    .line 2247
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .prologue
    .line 2250
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2221
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2222
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2221
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2228
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2229
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2228
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2189
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2195
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2234
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2235
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2234
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2241
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2242
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2241
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2209
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2209
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2216
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2216
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2199
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2205
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2952
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2106
    if-ne p1, p0, :cond_5

    .line 2146
    :goto_4
    return v2

    .line 2109
    :cond_5
    instance-of v4, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    if-nez v4, :cond_e

    .line 2110
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    :cond_e
    move-object v0, p1

    .line 2112
    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2114
    .local v0, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    const/4 v1, 0x1

    .line 2115
    .local v1, "result":Z
    if-eqz v1, :cond_f8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_f8

    move v1, v2

    .line 2116
    :goto_1f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2117
    if-eqz v1, :cond_fb

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v4

    .line 2118
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_fb

    move v1, v2

    .line 2120
    :cond_34
    :goto_34
    if-eqz v1, :cond_fe

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v5

    if-ne v4, v5, :cond_fe

    move v1, v2

    .line 2121
    :goto_41
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2122
    if-eqz v1, :cond_101

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v4

    .line 2123
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_101

    move v1, v2

    .line 2125
    :cond_58
    :goto_58
    if-eqz v1, :cond_104

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v5

    if-ne v4, v5, :cond_104

    move v1, v2

    .line 2126
    :goto_65
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 2127
    if-eqz v1, :cond_107

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v4

    .line 2128
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_107

    move v1, v2

    .line 2130
    :cond_7c
    :goto_7c
    if-eqz v1, :cond_10a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v5

    if-ne v4, v5, :cond_10a

    move v1, v2

    .line 2131
    :goto_89
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 2132
    if-eqz v1, :cond_10d

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v4

    .line 2133
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    move v1, v2

    .line 2135
    :cond_a0
    :goto_a0
    if-eqz v1, :cond_10f

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v5

    if-ne v4, v5, :cond_10f

    move v1, v2

    .line 2136
    :goto_ad
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 2137
    if-eqz v1, :cond_111

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v4

    .line 2138
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_111

    move v1, v2

    .line 2140
    :cond_c4
    :goto_c4
    if-eqz v1, :cond_113

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v5

    if-ne v4, v5, :cond_113

    move v1, v2

    .line 2141
    :goto_d1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 2142
    if-eqz v1, :cond_115

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v4

    .line 2143
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    move v1, v2

    .line 2145
    :cond_e8
    :goto_e8
    if-eqz v1, :cond_117

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_117

    move v1, v2

    :goto_f5
    move v2, v1

    .line 2146
    goto/16 :goto_4

    :cond_f8
    move v1, v3

    .line 2115
    goto/16 :goto_1f

    :cond_fb
    move v1, v3

    .line 2118
    goto/16 :goto_34

    :cond_fe
    move v1, v3

    .line 2120
    goto/16 :goto_41

    :cond_101
    move v1, v3

    .line 2123
    goto/16 :goto_58

    :cond_104
    move v1, v3

    .line 2125
    goto/16 :goto_65

    :cond_107
    move v1, v3

    .line 2128
    goto/16 :goto_7c

    :cond_10a
    move v1, v3

    .line 2130
    goto/16 :goto_89

    :cond_10d
    move v1, v3

    .line 2133
    goto :goto_a0

    :cond_10f
    move v1, v3

    .line 2135
    goto :goto_ad

    :cond_111
    move v1, v3

    .line 2138
    goto :goto_c4

    :cond_113
    move v1, v3

    .line 2140
    goto :goto_d1

    :cond_115
    move v1, v3

    .line 2143
    goto :goto_e8

    :cond_117
    move v1, v3

    .line 2145
    goto :goto_f5
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .registers 2

    .prologue
    .line 2961
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagecode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1927
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1928
    check-cast v1, Ljava/lang/String;

    .line 1936
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1930
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1932
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1933
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1934
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1936
    goto :goto_8
.end method

.method public getLanguagecodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1944
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1945
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1946
    check-cast v1, Ljava/lang/String;

    .line 1947
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1949
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    .line 1952
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2957
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2074
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedSize:I

    .line 2075
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 2100
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_9
    return v1

    .line 2077
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_a
    const/4 v0, 0x0

    .line 2078
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 2079
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    .line 2080
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2082
    :cond_18
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_27

    .line 2084
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2086
    :cond_27
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_35

    .line 2087
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2089
    :cond_35
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 2090
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2092
    :cond_44
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 2093
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2095
    :cond_54
    iget v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 2096
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2098
    :cond_64
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 2099
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedSize:I

    move v1, v0

    .line 2100
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_9
.end method

.method public getSourcelanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1968
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1969
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1970
    check-cast v1, Ljava/lang/String;

    .line 1978
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1972
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1974
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1975
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1976
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1978
    goto :goto_8
.end method

.method public getSourcelanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1986
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1987
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1988
    check-cast v1, Ljava/lang/String;

    .line 1989
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1991
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    .line 1994
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

.method public getTargetlanguage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2010
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2011
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2012
    check-cast v1, Ljava/lang/String;

    .line 2020
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2014
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2016
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2017
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2018
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2020
    goto :goto_8
.end method

.method public getTargetlanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2028
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2029
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2030
    check-cast v1, Ljava/lang/String;

    .line 2031
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2033
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    .line 2036
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

.method public getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_8
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;
    .registers 2

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_8
.end method

.method public getTotranslate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1884
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1885
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1886
    check-cast v1, Ljava/lang/String;

    .line 1894
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1888
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1890
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1891
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1892
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1894
    goto :goto_8
.end method

.method public getTotranslateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1902
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1903
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1904
    check-cast v1, Ljava/lang/String;

    .line 1905
    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1907
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    .line 1910
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
    .line 1744
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .registers 3

    .prologue
    .line 1848
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    return-wide v0
.end method

.method public hasLanguagecode()Z
    .registers 3

    .prologue
    .line 1920
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasSourcelanguage()Z
    .registers 3

    .prologue
    .line 1962
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasTargetlanguage()Z
    .registers 3

    .prologue
    .line 2004
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasToken()Z
    .registers 3

    .prologue
    .line 1857
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

.method public hasTotranslate()Z
    .registers 3

    .prologue
    .line 1878
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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

    .line 1842
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

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
    .line 2151
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    if-eqz v1, :cond_7

    .line 2152
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    .line 2183
    :goto_6
    return v0

    .line 2154
    :cond_7
    const/16 v0, 0x29

    .line 2155
    .local v0, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 2156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2157
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x1

    .line 2158
    mul-int/lit8 v1, v0, 0x35

    .line 2159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v2

    .line 2158
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int v0, v1, v2

    .line 2161
    :cond_29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 2162
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x2

    .line 2163
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2165
    :cond_3f
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2166
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x3

    .line 2167
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2169
    :cond_55
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 2170
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x4

    .line 2171
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2173
    :cond_6b
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 2174
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x5

    .line 2175
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2177
    :cond_81
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 2178
    mul-int/lit8 v1, v0, 0x25

    add-int/lit8 v0, v1, 0x6

    .line 2179
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2181
    :cond_97
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2182
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedHashCode:I

    goto/16 :goto_6
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .registers 4

    .prologue
    .line 1830
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 1831
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 1830
    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2042
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    .line 2043
    .local v0, "isInitialized":B
    if-ne v0, v1, :cond_6

    .line 2047
    :goto_5
    return v1

    .line 2044
    :cond_6
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_5

    .line 2046
    :cond_a
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->memoizedIsInitialized:B

    goto :goto_5
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 2

    .prologue
    .line 2245
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 4
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .prologue
    .line 2260
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 2261
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 3

    .prologue
    .line 1725
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2253
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    if-ne p0, v0, :cond_b

    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$1;)V

    .line 2254
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2052
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_e

    .line 2053
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->version_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2055
    :cond_e
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 2056
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2058
    :cond_1b
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_27

    .line 2059
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->totranslate_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2061
    :cond_27
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_34

    .line 2062
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->languagecode_:Ljava/lang/Object;

    invoke-static {p1, v4, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2064
    :cond_34
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_42

    .line 2065
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2067
    :cond_42
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_50

    .line 2068
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->targetlanguage_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2070
    :cond_50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2071
    return-void
.end method
